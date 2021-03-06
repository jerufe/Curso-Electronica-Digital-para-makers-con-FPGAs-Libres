{
  "version": "1.1",
  "package": {
    "name": "Flip-flop D",
    "version": "1.0.0",
    "description": "Biestable D con inicialización paramétrica",
    "author": "Carlos Diaz",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2287.998%22%20height=%2260.81%22%20viewBox=%220%200%2082.498336%2057.009284%22%3E%3Cg%20transform=%22translate(-290.853%20-371.476)%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22287.101%22%20y=%22427.822%22%20font-weight=%22400%22%20font-size=%2240.87%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22287.101%22%20y=%22427.822%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22289.914%22%20y=%22386.672%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22289.914%22%20y=%22386.672%22%3EFlip-Flop%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22341.738%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22341.738%22%20y=%22420.476%22%3EIni%3C/tspan%3E%3C/text%3E%3Crect%20width=%2237.881%22%20height=%2227.274%22%20x=%22334.396%22%20y=%22400.212%22%20ry=%224.5%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "bfd12554-1a25-4ee2-8ab9-eeefad56595e",
          "type": "basic.constant",
          "data": {
            "name": "DINI",
            "value": "0",
            "local": false
          },
          "position": {
            "x": 568,
            "y": 16
          }
        },
        {
          "id": "e5222a6e-4717-4f08-99d7-7cde897060ca",
          "type": "basic.code",
          "data": {
            "code": "// D flip-flop\n// parameter DINI = 0;\n\nreg q = DINI;\n\nalways @(posedge clk)\nbegin\n  q <= d;\nend\n\n",
            "params": [
              {
                "name": "DINI"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "d"
                }
              ],
              "out": [
                {
                  "name": "q"
                }
              ]
            }
          },
          "position": {
            "x": 432,
            "y": 128
          },
          "size": {
            "width": 368,
            "height": 272
          }
        },
        {
          "id": "6855f64f-fa1c-4371-b2e1-a98970674a96",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 232,
            "y": 168
          }
        },
        {
          "id": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 864,
            "y": 232
          }
        },
        {
          "id": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 232,
            "y": 304
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
            "port": "out"
          },
          "target": {
            "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
            "port": "d"
          }
        },
        {
          "source": {
            "block": "6855f64f-fa1c-4371-b2e1-a98970674a96",
            "port": "out"
          },
          "target": {
            "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
            "port": "q"
          },
          "target": {
            "block": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "bfd12554-1a25-4ee2-8ab9-eeefad56595e",
            "port": "constant-out"
          },
          "target": {
            "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
            "port": "DINI"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": -146,
        "y": 55.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}