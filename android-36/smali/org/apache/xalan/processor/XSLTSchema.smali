.class public Lorg/apache/xalan/processor/XSLTSchema;
.super Lorg/apache/xalan/processor/XSLTElementDef;
.source "XSLTSchema.java"


# instance fields
.field private greylist m_availElems:Ljava/util/HashMap;


# direct methods
.method constructor greylist <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>()V

    .line 889
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    .line 72
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTSchema;->build()V

    return-void
.end method


# virtual methods
.method greylist addAvailableElement(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 908
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method greylist build()V
    .registers 91

    .line 82
    new-instance v0, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string v2, "href"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 86
    new-instance v1, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    const-string v3, "elements"

    const/16 v4, 0xc

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 94
    new-instance v2, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v4, "method"

    const/16 v5, 0x9

    invoke-direct/range {v2 .. v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 96
    new-instance v3, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string v5, "version"

    const/16 v6, 0xd

    invoke-direct/range {v3 .. v9}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 98
    new-instance v4, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v6, "encoding"

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v10}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 100
    new-instance v5, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    const-string v7, "omit-xml-declaration"

    const/16 v8, 0x8

    invoke-direct/range {v5 .. v11}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 104
    new-instance v6, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v7, 0x0

    const-string v8, "standalone"

    const/16 v9, 0x8

    invoke-direct/range {v6 .. v12}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 107
    new-instance v7, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v8, 0x0

    const-string v9, "doctype-public"

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v13}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 110
    new-instance v8, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v9, 0x0

    const-string v10, "doctype-system"

    const/4 v11, 0x1

    invoke-direct/range {v8 .. v14}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 113
    new-instance v9, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-string v11, "cdata-section-elements"

    const/16 v12, 0x13

    invoke-direct/range {v9 .. v15}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 117
    new-instance v10, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v11, 0x0

    const-string v12, "indent"

    const/16 v13, 0x8

    invoke-direct/range {v10 .. v16}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 119
    new-instance v11, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v12, 0x0

    const-string v13, "media-type"

    const/4 v14, 0x1

    invoke-direct/range {v11 .. v17}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 126
    new-instance v12, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/4 v13, 0x0

    const-string v14, "name"

    const/16 v15, 0x9

    const/16 v16, 0x1

    invoke-direct/range {v12 .. v18}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object v13, v12

    .line 131
    new-instance v14, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v19, 0x1

    const/16 v20, 0x2

    const/4 v15, 0x0

    const-string v16, "name"

    const/16 v17, 0x12

    invoke-direct/range {v14 .. v20}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 138
    new-instance v15, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v20, 0x1

    const/16 v21, 0x2

    const/16 v16, 0x0

    const-string v17, "name"

    const/16 v18, 0x11

    invoke-direct/range {v15 .. v21}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 144
    new-instance v16, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v17, 0x0

    const-string v18, "name"

    const/16 v19, 0x9

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v22}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 148
    new-instance v17, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v18, 0x0

    const-string v19, "use"

    const/16 v20, 0x5

    const/16 v21, 0x1

    invoke-direct/range {v17 .. v23}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 152
    new-instance v18, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v24, 0x2

    const/16 v19, 0x0

    const-string v20, "namespace"

    const/16 v21, 0x2

    invoke-direct/range {v18 .. v24}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v12, v18

    .line 156
    new-instance v18, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v24, "."

    const-string v20, "decimal-separator"

    const/16 v21, 0x6

    invoke-direct/range {v18 .. v24}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    .line 159
    new-instance v19, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v24, 0x1

    const-string v25, "Infinity"

    const/16 v20, 0x0

    const-string v21, "infinity"

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v25}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    .line 161
    new-instance v20, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v25, 0x1

    const-string v26, "-"

    const/16 v21, 0x0

    const-string v22, "minus-sign"

    const/16 v23, 0x6

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v26}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    .line 163
    new-instance v21, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v26, 0x1

    const-string v27, "NaN"

    const/16 v22, 0x0

    const-string v23, "NaN"

    const/16 v24, 0x1

    const/16 v25, 0x0

    invoke-direct/range {v21 .. v27}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    .line 165
    new-instance v22, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v27, 0x1

    const-string v28, "%"

    const/16 v23, 0x0

    const-string v24, "percent"

    const/16 v25, 0x6

    const/16 v26, 0x0

    invoke-direct/range {v22 .. v28}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    .line 167
    new-instance v23, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v24, 0x0

    const-string v25, "per-mille"

    const/16 v26, 0x6

    const/16 v27, 0x0

    invoke-direct/range {v23 .. v29}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 170
    new-instance v24, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v30, "0"

    const/16 v25, 0x0

    const-string v26, "zero-digit"

    const/16 v27, 0x6

    invoke-direct/range {v24 .. v30}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    .line 172
    new-instance v25, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v30, 0x1

    const-string v31, "#"

    const/16 v26, 0x0

    const-string v27, "digit"

    const/16 v28, 0x6

    const/16 v29, 0x0

    invoke-direct/range {v25 .. v31}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    .line 174
    new-instance v26, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v31, 0x1

    const-string v32, ";"

    const/16 v27, 0x0

    const-string v28, "pattern-separator"

    const/16 v29, 0x6

    const/16 v30, 0x0

    invoke-direct/range {v26 .. v32}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    .line 178
    new-instance v27, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v32, 0x1

    const-string v33, ","

    const/16 v28, 0x0

    const-string v29, "grouping-separator"

    const/16 v30, 0x6

    const/16 v31, 0x0

    invoke-direct/range {v27 .. v33}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    .line 184
    new-instance v28, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v29, 0x0

    const-string v30, "use-attribute-sets"

    const/16 v31, 0xa

    const/16 v32, 0x0

    invoke-direct/range {v28 .. v34}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    .line 190
    new-instance v30, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v31, 0x0

    const-string v32, "test"

    const/16 v33, 0x5

    invoke-direct/range {v30 .. v36}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v28, v1

    move-object/from16 v1, v30

    .line 196
    new-instance v30, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v32, "select"

    invoke-direct/range {v30 .. v36}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v31, v2

    move-object/from16 v2, v30

    .line 202
    new-instance v32, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v37, 0x0

    const/16 v38, 0x1

    const/16 v33, 0x0

    const-string v34, "select"

    const/16 v35, 0x5

    const/16 v36, 0x0

    invoke-direct/range {v32 .. v38}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v30, v3

    move-object/from16 v3, v32

    .line 208
    new-instance v32, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v37, 0x1

    const-string v38, "node()"

    const-string v34, "select"

    invoke-direct/range {v32 .. v38}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    move-object/from16 v33, v4

    move-object/from16 v4, v32

    .line 213
    new-instance v34, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v39, 0x1

    const-string v40, "."

    const/16 v35, 0x0

    const-string v36, "select"

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-direct/range {v34 .. v40}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    move-object/from16 v32, v5

    move-object/from16 v5, v34

    .line 216
    new-instance v34, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v39, 0x0

    const/16 v40, 0x1

    const-string v36, "match"

    const/16 v37, 0x4

    const/16 v38, 0x1

    invoke-direct/range {v34 .. v40}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v41, v34

    .line 219
    new-instance v34, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v36, "match"

    const/16 v38, 0x0

    invoke-direct/range {v34 .. v40}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v42, v34

    .line 222
    new-instance v34, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v36, "priority"

    const/16 v37, 0x7

    invoke-direct/range {v34 .. v40}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v43, v34

    .line 226
    new-instance v34, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v36, "mode"

    const/16 v37, 0x9

    invoke-direct/range {v34 .. v40}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v35, v6

    move-object/from16 v6, v34

    .line 229
    new-instance v44, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v53, "preserve"

    const/16 v54, 0x1

    const-string v45, "http://www.w3.org/XML/1998/namespace"

    const-string v46, "space"

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x2

    const-string v51, "default"

    const/16 v52, 0x2

    invoke-direct/range {v44 .. v54}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v34, v7

    move-object/from16 v7, v44

    .line 235
    new-instance v44, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v49, 0x1

    const/16 v50, 0x1

    const-string v45, "http://www.w3.org/XML/1998/namespace"

    const-string v46, "space"

    const/16 v47, 0x2

    invoke-direct/range {v44 .. v50}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 239
    new-instance v45, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v50, 0x0

    const/16 v51, 0x1

    const/16 v46, 0x0

    const-string v47, "stylesheet-prefix"

    const/16 v48, 0x1

    invoke-direct/range {v45 .. v51}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v55, v45

    .line 242
    new-instance v45, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v47, "result-prefix"

    invoke-direct/range {v45 .. v51}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v56, v45

    .line 247
    new-instance v45, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v47, "disable-output-escaping"

    const/16 v48, 0x8

    const/16 v49, 0x0

    invoke-direct/range {v45 .. v51}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v36, v8

    move-object/from16 v8, v45

    .line 253
    new-instance v57, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v68, "any"

    const/16 v69, 0x3

    const/16 v58, 0x0

    const-string v59, "level"

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x1

    const-string v64, "single"

    const/16 v65, 0x1

    const-string v66, "multiple"

    const/16 v67, 0x2

    invoke-direct/range {v57 .. v69}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move-object/from16 v9, v57

    .line 257
    const-string v10, "single"

    invoke-virtual {v9, v10}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    .line 258
    new-instance v45, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v47, "count"

    const/16 v48, 0x4

    invoke-direct/range {v45 .. v51}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v10, v45

    .line 260
    new-instance v47, Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v45, v47

    const-string v47, "from"

    invoke-direct/range {v45 .. v51}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v39, v45

    .line 262
    new-instance v48, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v47, "value"

    move-object/from16 v45, v48

    const/16 v48, 0x5

    invoke-direct/range {v45 .. v51}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v40, v45

    .line 264
    new-instance v49, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v50, 0x1

    const-string v47, "format"

    const/16 v48, 0x1

    move-object/from16 v45, v49

    const/16 v49, 0x0

    invoke-direct/range {v45 .. v51}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v51, v10

    move-object/from16 v9, v45

    .line 266
    const-string v10, "1"

    invoke-virtual {v9, v10}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    .line 269
    new-instance v50, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v64, 0x1

    const/16 v59, 0x0

    const-string v60, "lang"

    const/16 v61, 0xd

    move-object/from16 v58, v50

    invoke-direct/range {v58 .. v64}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 273
    new-instance v59, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v68, "traditional"

    const/16 v69, 0x2

    const/16 v60, 0x0

    const-string v61, "letter-value"

    const/16 v64, 0x0

    const-string v66, "alphabetic"

    const/16 v67, 0x1

    invoke-direct/range {v59 .. v69}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    .line 279
    new-instance v52, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v66, 0x1

    const/16 v61, 0x0

    const-string v62, "grouping-separator"

    const/16 v63, 0x6

    move-object/from16 v60, v52

    invoke-direct/range {v60 .. v66}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 283
    new-instance v53, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v62, "grouping-size"

    const/16 v63, 0x7

    move-object/from16 v60, v53

    invoke-direct/range {v60 .. v66}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 288
    new-instance v60, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v69, "number"

    const/16 v70, 0x1

    const-string v62, "data-type"

    const/16 v63, 0x0

    const/16 v64, 0x1

    const-string v67, "text"

    const/16 v68, 0x1

    invoke-direct/range {v60 .. v70}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v54, v9

    move-object/from16 v10, v60

    .line 290
    const-string v9, "text"

    invoke-virtual {v10, v9}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    .line 293
    new-instance v60, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v69, "descending"

    const/16 v70, 0x2

    const-string v62, "order"

    const/16 v65, 0x0

    const-string v67, "ascending"

    invoke-direct/range {v60 .. v70}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v9, v60

    move-object/from16 v60, v11

    .line 296
    const-string v11, "ascending"

    invoke-virtual {v9, v11}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    .line 299
    new-instance v61, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v70, "lower-first"

    const/16 v71, 0x2

    const/16 v62, 0x0

    const-string v63, "case-order"

    const/16 v64, 0x0

    const/16 v65, 0x1

    const/16 v66, 0x0

    const/16 v67, 0x1

    const-string v68, "upper-first"

    const/16 v69, 0x1

    invoke-direct/range {v61 .. v71}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v11, v61

    .line 304
    new-instance v61, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v63, "terminate"

    const/16 v64, 0x8

    const/16 v65, 0x0

    invoke-direct/range {v61 .. v67}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v62, v0

    move-object/from16 v0, v61

    move-object/from16 v61, v15

    .line 306
    const-string v15, "no"

    invoke-virtual {v0, v15}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    .line 309
    new-instance v45, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v68, 0x0

    const-string v64, "http://www.w3.org/1999/XSL/Transform"

    const-string v65, "exclude-result-prefixes"

    const/16 v66, 0x14

    const/16 v67, 0x0

    move-object/from16 v63, v45

    invoke-direct/range {v63 .. v69}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 313
    new-instance v46, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v64, "http://www.w3.org/1999/XSL/Transform"

    const-string v65, "extension-element-prefixes"

    const/16 v66, 0xf

    move-object/from16 v63, v46

    invoke-direct/range {v63 .. v69}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 318
    new-instance v47, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v64, "http://www.w3.org/1999/XSL/Transform"

    const-string v65, "use-attribute-sets"

    const/16 v66, 0xa

    move-object/from16 v63, v47

    invoke-direct/range {v63 .. v69}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 321
    new-instance v48, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v64, "http://www.w3.org/1999/XSL/Transform"

    const-string v65, "version"

    const/16 v66, 0xd

    move-object/from16 v63, v48

    invoke-direct/range {v63 .. v69}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 325
    new-instance v63, Lorg/apache/xalan/processor/XSLTElementDef;

    new-instance v70, Lorg/apache/xalan/processor/ProcessorCharacters;

    invoke-direct/range {v70 .. v70}, Lorg/apache/xalan/processor/ProcessorCharacters;-><init>()V

    const-class v71, Lorg/apache/xalan/templates/ElemTextLiteral;

    const/16 v65, 0x0

    const-string v66, "text()"

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v64, p0

    invoke-direct/range {v63 .. v71}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    move-object/from16 v15, v63

    move-object/from16 v63, v0

    const/4 v0, 0x2

    .line 330
    invoke-virtual {v15, v0}, Lorg/apache/xalan/processor/XSLTElementDef;->setType(I)V

    .line 332
    new-instance v66, Lorg/apache/xalan/processor/XSLTElementDef;

    const/16 v79, 0x0

    const-class v80, Lorg/apache/xalan/templates/ElemTextLiteral;

    const/16 v74, 0x0

    const-string v75, "text()"

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    move-object/from16 v73, p0

    move-object/from16 v72, v66

    invoke-direct/range {v72 .. v80}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    .line 338
    invoke-virtual {v15, v0}, Lorg/apache/xalan/processor/XSLTElementDef;->setType(I)V

    .line 340
    new-instance v50, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v72, 0x1

    const/16 v73, 0x2

    const-string v69, "*"

    const/16 v70, 0x3

    const/16 v71, 0x0

    move-object/from16 v67, v50

    invoke-direct/range {v67 .. v73}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 342
    new-instance v49, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v72, 0x0

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "*"

    const/16 v70, 0x1

    move-object/from16 v67, v49

    invoke-direct/range {v67 .. v73}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move/from16 v64, v0

    const/16 v0, 0x17

    move-object/from16 v65, v15

    .line 346
    new-array v15, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    const/16 v0, 0x18

    move-object/from16 v77, v15

    .line 347
    new-array v15, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v68, v15

    .line 348
    new-array v15, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    .line 350
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v69, v0

    const/16 v0, 0xf

    move-object/from16 v70, v15

    .line 352
    new-array v15, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    .line 353
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v44 .. v50}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorLRE;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemLiteralResult;

    const/16 v81, 0x14

    const/16 v82, 0x1

    const-string v75, "*"

    move-object/from16 v73, p0

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move/from16 v71, v0

    move-object/from16 v0, v72

    move-object/from16 v44, v77

    .line 366
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v45 .. v50}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorUnknown;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorUnknown;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemUnknown;

    const-string v74, "*"

    const-string v75, "unknown"

    move-object/from16 v77, v68

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v68, v15

    move-object/from16 v67, v72

    move-object/from16 v15, v77

    const/16 v86, 0x17

    .line 377
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v2, v8}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemValueOf;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "value-of"

    const/16 v77, 0x0

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v87, v72

    .line 384
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v2}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemCopyOf;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "copy-of"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v88, v72

    .line 390
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v47, v39

    move-object/from16 v48, v40

    move-object/from16 v46, v51

    move-object/from16 v49, v54

    move-object/from16 v45, v57

    move-object/from16 v50, v58

    move-object/from16 v51, v59

    filled-new-array/range {v45 .. v53}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    move-object/from16 v45, v8

    move-object/from16 v8, v50

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemNumber;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "number"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v39, v72

    .line 407
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v5, v8, v10, v9, v11}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemSort;

    const/16 v81, 0x13

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "sort"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v5, v72

    .line 419
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v13, v3}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemWithParam;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "with-param"

    move-object/from16 v77, v44

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v8, v72

    .line 426
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v5, v8}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v77

    filled-new-array {v4, v6}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemApplyTemplates;

    const/16 v81, 0x14

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "apply-templates"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v4, v72

    .line 435
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    const/4 v9, 0x0

    new-array v10, v9, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemApplyImport;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "apply-imports"

    const/16 v77, 0x0

    move-object/from16 v78, v10

    invoke-direct/range {v72 .. v80}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    move-object/from16 v10, v72

    .line 441
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v2, v7}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemForEach;

    const/16 v84, 0x14

    const/16 v85, 0x1

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "for-each"

    const/16 v81, 0x1

    const/16 v82, 0x0

    const/16 v83, 0x1

    move-object/from16 v77, v70

    invoke-direct/range {v72 .. v85}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V

    move-object/from16 v11, v72

    move-object/from16 v2, v77

    .line 448
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v1, v7}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemIf;

    const/16 v81, 0x14

    const/16 v82, 0x1

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "if"

    move-object/from16 v77, v44

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v40, v72

    .line 456
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v1, v7}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemWhen;

    const/16 v84, 0x1

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "when"

    const/16 v81, 0x0

    invoke-direct/range {v72 .. v84}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V

    move-object/from16 v1, v72

    .line 464
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v7}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemOtherwise;

    const/16 v83, 0x2

    const/16 v84, 0x0

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "otherwise"

    const/16 v82, 0x0

    invoke-direct/range {v72 .. v84}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V

    move/from16 v46, v9

    move-object/from16 v9, v72

    .line 472
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v1, v9}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v77

    filled-new-array {v7}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemChoose;

    const/16 v84, 0x14

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "choose"

    const/16 v81, 0x1

    const/16 v83, 0x1

    invoke-direct/range {v72 .. v85}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V

    move-object/from16 v1, v72

    .line 480
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v14, v12, v7}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemAttribute;

    const/16 v81, 0x14

    const/16 v82, 0x1

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "attribute"

    move-object/from16 v77, v68

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v47, v72

    .line 489
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v8}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v77

    filled-new-array {v13}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemCallTemplate;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "call-template"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v8, v72

    .line 496
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v13, v3}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemVariable;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "variable"

    move-object/from16 v77, v44

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v9, v72

    .line 504
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v13, v3}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemParam;

    const/16 v81, 0x13

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "param"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v48, v72

    .line 512
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v65 .. v65}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v77

    filled-new-array/range {v45 .. v45}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorText;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorText;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemText;

    const/16 v81, 0x14

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "text"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v45, v72

    .line 519
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v49, v1

    move-object/from16 v1, v61

    filled-new-array {v1, v7}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemPI;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "processing-instruction"

    move-object/from16 v77, v68

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v1, v72

    .line 528
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v50, v1

    move-object/from16 v1, v62

    filled-new-array {v14, v12, v1, v7}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemElement;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "element"

    move-object/from16 v77, v44

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v12, v72

    .line 538
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v7}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemComment;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "comment"

    move-object/from16 v77, v68

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v14, v72

    .line 545
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v7, v1}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemCopy;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "copy"

    move-object/from16 v77, v44

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v44, v72

    .line 553
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v63 .. v63}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemMessage;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "message"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v51, v72

    .line 560
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v7}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemFallback;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "fallback"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v53, v72

    move-object/from16 v52, v77

    .line 568
    new-instance v80, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v13}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorExsltFunction;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorExsltFunction;-><init>()V

    move-object/from16 v72, v80

    const-class v80, Lorg/apache/xalan/templates/ElemExsltFunction;

    const-string v74, "http://exslt.org/functions"

    const-string v75, "function"

    move-object/from16 v77, v69

    invoke-direct/range {v72 .. v80}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    move-object/from16 v54, v3

    move-object/from16 v57, v72

    move-object/from16 v3, v77

    .line 577
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v54 .. v54}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorExsltFuncResult;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorExsltFuncResult;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    const-string v74, "http://exslt.org/functions"

    const-string v75, "result"

    move-object/from16 v77, v52

    invoke-direct/range {v72 .. v80}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    move-object/from16 v52, v72

    move-object/from16 v72, v14

    move-object/from16 v14, v77

    .line 590
    aput-object v65, v14, v46

    const/16 v58, 0x1

    .line 593
    aput-object v4, v14, v58

    .line 594
    aput-object v8, v14, v64

    const/16 v59, 0x3

    .line 595
    aput-object v10, v14, v59

    const/16 v61, 0x4

    .line 596
    aput-object v11, v14, v61

    const/16 v62, 0x5

    .line 597
    aput-object v87, v14, v62

    const/16 v63, 0x6

    .line 598
    aput-object v88, v14, v63

    const/16 v69, 0x7

    .line 599
    aput-object v39, v14, v69

    const/16 v70, 0x8

    .line 600
    aput-object v49, v14, v70

    const/16 v73, 0x9

    .line 601
    aput-object v40, v14, v73

    const/16 v74, 0xa

    .line 602
    aput-object v45, v14, v74

    const/16 v75, 0xb

    .line 603
    aput-object v44, v14, v75

    const/16 v76, 0xc

    .line 604
    aput-object v9, v14, v76

    const/16 v77, 0xd

    .line 605
    aput-object v51, v14, v77

    const/16 v78, 0xe

    .line 606
    aput-object v53, v14, v78

    .line 609
    aput-object v50, v14, v71

    const/16 v50, 0x10

    .line 610
    aput-object v72, v14, v50

    const/16 v50, 0x11

    .line 611
    aput-object v12, v14, v50

    const/16 v12, 0x12

    .line 612
    aput-object v47, v14, v12

    const/16 v12, 0x13

    .line 613
    aput-object v0, v14, v12

    const/16 v12, 0x14

    .line 614
    aput-object v67, v14, v12

    const/16 v12, 0x15

    .line 615
    aput-object v57, v14, v12

    const/16 v12, 0x16

    .line 616
    aput-object v52, v14, v12

    move-object/from16 v72, v4

    move/from16 v4, v46

    move/from16 v12, v86

    .line 618
    invoke-static {v14, v4, v15, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    invoke-static {v14, v4, v2, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    invoke-static {v14, v4, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    aput-object v48, v15, v12

    .line 623
    aput-object v5, v2, v12

    .line 624
    aput-object v48, v3, v12

    .line 627
    aput-object v65, v68, v4

    .line 630
    aput-object v72, v68, v58

    .line 631
    aput-object v8, v68, v64

    .line 632
    aput-object v10, v68, v59

    .line 633
    aput-object v11, v68, v61

    .line 634
    aput-object v87, v68, v62

    .line 635
    aput-object v88, v68, v63

    .line 636
    aput-object v39, v68, v69

    .line 637
    aput-object v49, v68, v70

    .line 638
    aput-object v40, v68, v73

    .line 639
    aput-object v45, v68, v74

    .line 640
    aput-object v44, v68, v75

    .line 641
    aput-object v9, v68, v76

    .line 642
    aput-object v51, v68, v77

    .line 643
    aput-object v53, v68, v78

    .line 645
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v29 .. v29}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorImport;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorImport;-><init>()V

    const/16 v81, 0x1

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "import"

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v80, 0x0

    move-object/from16 v73, p0

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v63, v65

    move-object/from16 v65, v72

    .line 652
    new-instance v64, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v29 .. v29}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorInclude;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorInclude;-><init>()V

    const/16 v81, 0x14

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "include"

    move-object/from16 v72, v64

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    .line 660
    new-instance v68, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v73, 0x0

    const/16 v74, 0x2

    const/16 v69, 0x0

    const-string v70, "lang"

    const/16 v71, 0xd

    const/16 v72, 0x1

    invoke-direct/range {v68 .. v74}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v2, v68

    new-instance v68, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v70, "src"

    const/16 v71, 0x2

    const/16 v72, 0x0

    invoke-direct/range {v68 .. v74}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v3, v68

    filled-new-array {v2, v3}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v29

    .line 666
    new-instance v68, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v70, "prefix"

    const/16 v71, 0xd

    const/16 v72, 0x1

    invoke-direct/range {v68 .. v74}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v2, v68

    new-instance v68, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v70, "elements"

    const/16 v71, 0xe

    const/16 v72, 0x0

    invoke-direct/range {v68 .. v74}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v3, v68

    new-instance v68, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v70, "functions"

    invoke-direct/range {v68 .. v74}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v4, v68

    filled-new-array {v2, v3, v4}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v39

    .line 674
    new-instance v68, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v28 .. v28}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorStripSpace;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorStripSpace;-><init>()V

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "strip-space"

    move-object/from16 v73, p0

    move-object/from16 v72, v68

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v69, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v28 .. v28}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorPreserveSpace;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorPreserveSpace;-><init>()V

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "preserve-space"

    move-object/from16 v72, v69

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v70, Lorg/apache/xalan/processor/XSLTElementDef;

    sget-object v12, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-object/from16 v89, v7

    move-object/from16 v44, v14

    move-object/from16 v28, v15

    move-object/from16 v14, v17

    move-object/from16 v3, v30

    move-object/from16 v2, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v36

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v15, v54

    move-object/from16 v11, v60

    move-object/from16 v30, v0

    move-object v0, v6

    move-object/from16 v6, v35

    filled-new-array/range {v2 .. v12}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorOutputElem;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorOutputElem;-><init>()V

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "output"

    move-object/from16 v72, v70

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v71, Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v2, v41

    filled-new-array {v13, v2, v14}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorKey;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorKey;-><init>()V

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "key"

    move-object/from16 v72, v71

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v17, v18

    move-object/from16 v18, v27

    filled-new-array/range {v16 .. v26}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    move-object/from16 v2, v16

    new-instance v79, Lorg/apache/xalan/processor/ProcessorDecimalFormat;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorDecimalFormat;-><init>()V

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "decimal-format"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v3, v72

    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v47 .. v47}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v77

    filled-new-array {v13, v1}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorAttributeSet;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorAttributeSet;-><init>()V

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "attribute-set"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v1, v72

    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v13, v15}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorGlobalVariableDecl;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorGlobalVariableDecl;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemVariable;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "variable"

    move-object/from16 v77, v44

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v4, v72

    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v13, v15}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorGlobalParamDecl;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorGlobalParamDecl;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemParam;

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "param"

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v5, v72

    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v6, v42

    move-object/from16 v7, v43

    move-object/from16 v8, v89

    filled-new-array {v6, v2, v7, v0, v8}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorTemplate;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorTemplate;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemTemplate;

    const/16 v82, 0x14

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "template"

    const/16 v81, 0x1

    move-object/from16 v77, v28

    invoke-direct/range {v72 .. v83}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V

    move-object/from16 v0, v72

    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    move-object/from16 v2, v55

    move-object/from16 v6, v56

    filled-new-array {v2, v6}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorNamespaceAlias;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorNamespaceAlias;-><init>()V

    const/16 v81, 0x14

    const/16 v82, 0x1

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "namespace-alias"

    const/16 v77, 0x0

    const/16 v80, 0x0

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v2, v72

    new-instance v6, Lorg/apache/xalan/processor/XSLTElementDef;

    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v63 .. v63}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v77

    new-instance v79, Lorg/apache/xalan/processor/ProcessorLRE;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemExtensionScript;

    const-string v74, "http://xml.apache.org/xalan"

    const-string v75, "script"

    move-object/from16 v78, v29

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move-object/from16 v7, v78

    filled-new-array/range {v72 .. v72}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v77

    new-instance v79, Lorg/apache/xalan/processor/ProcessorLRE;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemExtensionDecl;

    const-string v74, "http://xml.apache.org/xalan"

    const-string v75, "component"

    move-object/from16 v72, v6

    move-object/from16 v78, v39

    invoke-direct/range {v72 .. v80}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    move-object/from16 v9, v72

    move-object/from16 v6, v78

    new-instance v10, Lorg/apache/xalan/processor/XSLTElementDef;

    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array/range {v63 .. v63}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v77

    new-instance v79, Lorg/apache/xalan/processor/ProcessorLRE;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemExtensionScript;

    const-string v74, "http://xml.apache.org/xslt"

    const-string v75, "script"

    move-object/from16 v78, v7

    invoke-direct/range {v72 .. v82}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    filled-new-array/range {v72 .. v72}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v77

    new-instance v79, Lorg/apache/xalan/processor/ProcessorLRE;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    const-class v80, Lorg/apache/xalan/templates/ElemExtensionDecl;

    const-string v74, "http://xml.apache.org/xslt"

    const-string v75, "component"

    move-object/from16 v78, v6

    move-object/from16 v72, v10

    invoke-direct/range {v72 .. v80}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    move-object/from16 v76, v0

    move-object/from16 v73, v1

    move-object/from16 v77, v2

    move-object/from16 v74, v4

    move-object/from16 v75, v5

    move-object/from16 v78, v9

    move-object/from16 v80, v57

    move-object/from16 v79, v72

    move-object/from16 v72, v3

    filled-new-array/range {v64 .. v80}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v77

    move-object/from16 v3, v64

    move-object/from16 v2, v65

    move-object/from16 v0, v66

    move-object/from16 v1, v67

    .line 844
    new-instance v9, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/4 v10, 0x0

    const-string v11, "exclude-result-prefixes"

    const/16 v12, 0x14

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 847
    new-instance v10, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/4 v11, 0x0

    const-string v12, "extension-element-prefixes"

    const/16 v13, 0xf

    invoke-direct/range {v10 .. v16}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 850
    new-instance v11, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/4 v12, 0x0

    const-string v13, "id"

    const/4 v14, 0x1

    invoke-direct/range {v11 .. v17}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 852
    new-instance v12, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/4 v13, 0x0

    const-string v14, "version"

    const/16 v15, 0xd

    const/16 v16, 0x1

    invoke-direct/range {v12 .. v18}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 856
    new-instance v72, Lorg/apache/xalan/processor/XSLTElementDef;

    filled-new-array {v10, v9, v11, v12, v8}, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v78

    new-instance v79, Lorg/apache/xalan/processor/ProcessorStylesheetElement;

    invoke-direct/range {v79 .. v79}, Lorg/apache/xalan/processor/ProcessorStylesheetElement;-><init>()V

    const/16 v82, -0x1

    const/16 v83, 0x0

    const-string v74, "http://www.w3.org/1999/XSL/Transform"

    const-string v75, "stylesheet"

    const-string v76, "transform"

    const/16 v80, 0x0

    const/16 v81, 0x1

    move-object/from16 v73, p0

    invoke-direct/range {v72 .. v83}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V

    move-object/from16 v4, v30

    move-object/from16 v5, v72

    .line 869
    filled-new-array {v5, v4, v1}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xalan/processor/XSLTElementDef;->setElements([Lorg/apache/xalan/processor/XSLTElementDef;)V

    .line 872
    filled-new-array {v5, v4, v1}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/xalan/processor/XSLTElementDef;->setElements([Lorg/apache/xalan/processor/XSLTElementDef;)V

    .line 875
    filled-new-array {v5, v0, v4, v1}, [Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v76

    new-instance v78, Lorg/apache/xalan/processor/ProcessorStylesheetDoc;

    invoke-direct/range {v78 .. v78}, Lorg/apache/xalan/processor/ProcessorStylesheetDoc;-><init>()V

    const/16 v79, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    move-object/from16 v72, p0

    invoke-virtual/range {v72 .. v79}, Lorg/apache/xalan/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    return-void
.end method

.method public greylist elementAvailable(Lorg/apache/xml/utils/QName;)Z
    .registers 2

    .line 919
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist getElemsAvailable()Ljava/util/HashMap;
    .registers 1

    .line 899
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    return-object p0
.end method
