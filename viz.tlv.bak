\m4_TLV_version 1d: tl-x.org
\SV
\TLV
   /view
      \viz_js
         box: {strokeWidth: 0},
         box: {strokeWidth: 0},
         init() {
            let calbox = new fabric.Rect({
              left: -150,
              top: -130,
              fill: "#665d60",
              width: 316,
              height: 366,
              strokeWidth: 3,
              stroke: "#a0a0a0",
            })
            let val1box = new fabric.Rect({
              left: -150 + 82,
              top: -150 + 83,
              fill: "#d0d8e0",
              width: 214,
              height: 40,
              strokeWidth: 5,
              stroke: "#608080",
            })
            let val1num = new fabric.Text("--------", {
              left: -150 + 185,
              top: -150 + 83 + 8,
              textAlign: "right",
              fill: "#505050",
              fontSize: 22,
              fontFamily: "Courier New",
            })
            let val2box = new fabric.Rect({
              left: -150 + 82,
              top: -150 + 150,
              fill: "#d0d8e0",
              width: 214,
              height: 40,
              strokeWidth: 1,
              stroke: "#303030",
            })
            let val2num = new fabric.Text("--------", {
              left: -150 + 185,
              top: -150 + 150 + 8,
              textAlign: "right",
              fill: "#505050",
              fontSize: 22,
              fontFamily: "Courier New",
            })
            let outbox = new fabric.Rect({
              left: -150 + 82,
              top: -150 + 250,
              fill: "#d0d8e0",
              width: 214,
              height: 40,
              strokeWidth: 5,
              stroke: "#303030",
            })
            let outnum = new fabric.Text("--------", {
              left: -150 + 185,
              top: -150 + 250 + 8,
              textAlign: "right",
              fill: "#505050",
              fontSize: 22,
              fontFamily: "Courier New",
            })
            let sumbox = new fabric.Rect({
              left: -150 + 18,
              top: -150 + 200,
              fill: "#a0a0a0",
              width: 50,
              height: 50,
              strokeWidth: 1,
              stroke: "#b0b0b0",
            })
            
            let sumicon = new fabric.Text("+", {
              left: -150 + 11+ 26,
              top: -150 + 191 + 22,
              fontSize: 22,
              fontFamily: "Times",
            })
            
            return {calbox, val1box, val1num, val2box, val2num,
                    outbox, outnum, sumbox, sumicon}
         },
         render() {
            let missing_list = "";
            let sig_names = ["a", "b", "c"];
            let sticky_zero = this.svSigRef(`sticky_zero`);
            getSig = (name) => {
               let sig = this.svSigRef(`tb_adder.dut.${name}`);
               if (sig == null) {
                  missing_list += `◾ $${name}      \n`;
                  sig         = sticky_zero;
               }
               return sig;
            }
            var sigs = sig_names.reduce(function(result, sig_name, index) {
               result[sig_name] = getSig(sig_name)
               return result
            }, {})
            this.getObjects().val1num.set({text: sigs.a.asInt(NaN).toString(16).padStart(8, " ")})
            this.getObjects().val2num.set({text: sigs.b.asInt(NaN).toString(16).padStart(8, " ")})
            this.getObjects().outnum.set({text: sigs.c.asInt(NaN).toString(16).padStart(8, " ")})
         }
\TLV
\SV