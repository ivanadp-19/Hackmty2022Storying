from flask import Flask
import sqlite3
import json
from datetime import date


app = Flask(__name__)

@app.route("/getfeed/<quantity>")
def getfeed(quantity):
    con = sqlite3.connect("storyin.db")
    cur = con.cursor()
    res = cur.execute(f"SELECT * from postLog;").fetchall()
    con.close()

    ret = []
    for i in range(len(res)):
        # print(i[1])
        ret.append([res[i][0], res[i][1]])
    # print(ret)

    ret.sort()
    
    ret = ret[::-1]

    ans = []
    quantity = int(quantity)
    for i in range(quantity):
        try:
            ans.append({"date":ret[i][1], "HexKey":ret[i][0]})
        except:
            break

    
    return json.dumps(ans)

@app.route("/post/<PostKey>")
def post(PostKey):
    con = sqlite3.connect("storyin.db")
    cur = con.cursor()
    today = date.today()
    try:
        cur.execute(f"INSERT INTO postLog (PostKey, PublicationDate) VALUES ('{PostKey}', '{today.strftime('%Y-%m-%d')}');")
        con.commit()
        con.close()
        return "success"
    except:
        return "error"


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)
