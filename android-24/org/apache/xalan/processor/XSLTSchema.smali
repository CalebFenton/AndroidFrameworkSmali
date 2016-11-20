.class public Lorg/apache/xalan/processor/XSLTSchema;
.super Lorg/apache/xalan/processor/XSLTElementDef;
.source "XSLTSchema.java"


# instance fields
.field private m_availElems:Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>()V

    #@3
    .line 889
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    #@a
    .line 72
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTSchema;->build()V

    #@d
    .line 70
    return-void
.end method


# virtual methods
.method addAvailableElement(Lorg/apache/xml/utils/QName;)V
    .locals 1
    .param p1, "elemName"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 908
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 906
    return-void
.end method

.method build()V
    .locals 132

    #@0
    .prologue
    .line 82
    new-instance v5, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@2
    const-string/jumbo v7, "href"

    #@5
    const/4 v6, 0x0

    #@6
    .line 83
    const/4 v8, 0x2

    #@7
    const/4 v9, 0x1

    #@8
    const/4 v10, 0x0

    #@9
    const/4 v11, 0x1

    #@a
    .line 82
    invoke-direct/range {v5 .. v11}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@d
    .line 86
    .local v5, "hrefAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v6, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@f
    const-string/jumbo v8, "elements"

    #@12
    const/4 v7, 0x0

    #@13
    .line 87
    const/16 v9, 0xc

    #@15
    .line 88
    const/4 v10, 0x1

    #@16
    const/4 v11, 0x0

    #@17
    const/4 v12, 0x1

    #@18
    .line 86
    invoke-direct/range {v6 .. v12}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@1b
    .line 94
    .local v6, "elementsAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v7, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@1d
    const-string/jumbo v9, "method"

    #@20
    const/4 v8, 0x0

    #@21
    .line 95
    const/16 v10, 0x9

    #@23
    const/4 v11, 0x0

    #@24
    const/4 v12, 0x0

    #@25
    const/4 v13, 0x1

    #@26
    .line 94
    invoke-direct/range {v7 .. v13}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@29
    .line 96
    .local v7, "methodAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v8, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@2b
    const-string/jumbo v10, "version"

    #@2e
    const/4 v9, 0x0

    #@2f
    .line 97
    const/16 v11, 0xd

    #@31
    const/4 v12, 0x0

    #@32
    const/4 v13, 0x0

    #@33
    const/4 v14, 0x1

    #@34
    .line 96
    invoke-direct/range {v8 .. v14}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@37
    .line 98
    .local v8, "versionAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v9, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@39
    const-string/jumbo v11, "encoding"

    #@3c
    const/4 v10, 0x0

    #@3d
    .line 99
    const/4 v12, 0x1

    #@3e
    const/4 v13, 0x0

    #@3f
    const/4 v14, 0x0

    #@40
    const/4 v15, 0x1

    #@41
    .line 98
    invoke-direct/range {v9 .. v15}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@44
    .line 100
    .local v9, "encodingAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v10, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@46
    .line 101
    const-string/jumbo v12, "omit-xml-declaration"

    #@49
    .line 100
    const/4 v11, 0x0

    #@4a
    .line 102
    const/16 v13, 0x8

    #@4c
    .line 103
    const/4 v14, 0x0

    #@4d
    const/4 v15, 0x0

    #@4e
    const/16 v16, 0x1

    #@50
    .line 100
    invoke-direct/range {v10 .. v16}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@53
    .line 104
    .local v10, "omitXmlDeclarationAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v11, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@55
    .line 105
    const-string/jumbo v13, "standalone"

    #@58
    .line 104
    const/4 v12, 0x0

    #@59
    .line 106
    const/16 v14, 0x8

    #@5b
    const/4 v15, 0x0

    #@5c
    const/16 v16, 0x0

    #@5e
    const/16 v17, 0x1

    #@60
    .line 104
    invoke-direct/range {v11 .. v17}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@63
    .line 107
    .local v11, "standaloneAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v12, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@65
    .line 108
    const-string/jumbo v14, "doctype-public"

    #@68
    .line 107
    const/4 v13, 0x0

    #@69
    .line 109
    const/4 v15, 0x1

    #@6a
    const/16 v16, 0x0

    #@6c
    const/16 v17, 0x0

    #@6e
    const/16 v18, 0x1

    #@70
    .line 107
    invoke-direct/range {v12 .. v18}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@73
    .line 110
    .local v12, "doctypePublicAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v13, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@75
    .line 111
    const-string/jumbo v15, "doctype-system"

    #@78
    .line 110
    const/4 v14, 0x0

    #@79
    .line 112
    const/16 v16, 0x1

    #@7b
    const/16 v17, 0x0

    #@7d
    const/16 v18, 0x0

    #@7f
    const/16 v19, 0x1

    #@81
    .line 110
    invoke-direct/range {v13 .. v19}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@84
    .line 113
    .local v13, "doctypeSystemAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v14, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@86
    .line 114
    const-string/jumbo v16, "cdata-section-elements"

    #@89
    .line 113
    const/4 v15, 0x0

    #@8a
    .line 115
    const/16 v17, 0x13

    #@8c
    .line 116
    const/16 v18, 0x0

    #@8e
    const/16 v19, 0x0

    #@90
    const/16 v20, 0x1

    #@92
    .line 113
    invoke-direct/range {v14 .. v20}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@95
    .line 117
    .local v14, "cdataSectionElementsAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v15, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@97
    const-string/jumbo v17, "indent"

    #@9a
    const/16 v16, 0x0

    #@9c
    .line 118
    const/16 v18, 0x8

    #@9e
    const/16 v19, 0x0

    #@a0
    const/16 v20, 0x0

    #@a2
    const/16 v21, 0x1

    #@a4
    .line 117
    invoke-direct/range {v15 .. v21}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@a7
    .line 119
    .local v15, "indentAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v16, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@a9
    const-string/jumbo v18, "media-type"

    #@ac
    const/16 v17, 0x0

    #@ae
    .line 120
    const/16 v19, 0x1

    #@b0
    const/16 v20, 0x0

    #@b2
    const/16 v21, 0x0

    #@b4
    const/16 v22, 0x1

    #@b6
    .line 119
    invoke-direct/range {v16 .. v22}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@b9
    .line 126
    .local v16, "mediaTypeAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v17, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@bb
    const-string/jumbo v19, "name"

    #@be
    const/16 v18, 0x0

    #@c0
    .line 127
    const/16 v20, 0x9

    #@c2
    const/16 v21, 0x1

    #@c4
    const/16 v22, 0x0

    #@c6
    const/16 v23, 0x1

    #@c8
    .line 126
    invoke-direct/range {v17 .. v23}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@cb
    .line 131
    .local v17, "nameAttrRequired":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v18, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@cd
    const-string/jumbo v20, "name"

    #@d0
    const/16 v19, 0x0

    #@d2
    .line 132
    const/16 v21, 0x12

    #@d4
    const/16 v22, 0x1

    #@d6
    const/16 v23, 0x1

    #@d8
    const/16 v24, 0x2

    #@da
    .line 131
    invoke-direct/range {v18 .. v24}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@dd
    .line 138
    .local v18, "nameAVTRequired":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v19, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@df
    const-string/jumbo v21, "name"

    #@e2
    const/16 v20, 0x0

    #@e4
    .line 139
    const/16 v22, 0x11

    #@e6
    const/16 v23, 0x1

    #@e8
    const/16 v24, 0x1

    #@ea
    const/16 v25, 0x2

    #@ec
    .line 138
    invoke-direct/range {v19 .. v25}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@ef
    .line 144
    .local v19, "nameAVT_NCNAMERequired":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v20, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@f1
    const-string/jumbo v22, "name"

    #@f4
    const/16 v21, 0x0

    #@f6
    .line 145
    const/16 v23, 0x9

    #@f8
    const/16 v24, 0x0

    #@fa
    const/16 v25, 0x0

    #@fc
    const/16 v26, 0x1

    #@fe
    .line 144
    invoke-direct/range {v20 .. v26}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@101
    .line 148
    .local v20, "nameAttrOpt_ERROR":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v21, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@103
    const-string/jumbo v23, "use"

    #@106
    const/16 v22, 0x0

    #@108
    .line 149
    const/16 v24, 0x5

    #@10a
    const/16 v25, 0x1

    #@10c
    const/16 v26, 0x0

    #@10e
    const/16 v27, 0x1

    #@110
    .line 148
    invoke-direct/range {v21 .. v27}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@113
    .line 152
    .local v21, "useAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v22, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@115
    .line 153
    const-string/jumbo v24, "namespace"

    #@118
    .line 152
    const/16 v23, 0x0

    #@11a
    .line 153
    const/16 v25, 0x2

    #@11c
    .line 154
    const/16 v26, 0x0

    #@11e
    const/16 v27, 0x1

    #@120
    const/16 v28, 0x2

    #@122
    .line 152
    invoke-direct/range {v22 .. v28}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@125
    .line 156
    .local v22, "namespaceAVTOpt":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v23, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@127
    .line 157
    const-string/jumbo v25, "decimal-separator"

    #@12a
    .line 158
    const-string/jumbo v29, "."

    #@12d
    .line 156
    const/16 v24, 0x0

    #@12f
    .line 158
    const/16 v26, 0x6

    #@131
    const/16 v27, 0x0

    #@133
    const/16 v28, 0x1

    #@135
    .line 156
    invoke-direct/range {v23 .. v29}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    #@138
    .line 159
    .local v23, "decimalSeparatorAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v24, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@13a
    const-string/jumbo v26, "infinity"

    #@13d
    .line 160
    const-string/jumbo v30, "Infinity"

    #@140
    .line 159
    const/16 v25, 0x0

    #@142
    .line 160
    const/16 v27, 0x1

    #@144
    const/16 v28, 0x0

    #@146
    const/16 v29, 0x1

    #@148
    .line 159
    invoke-direct/range {v24 .. v30}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    #@14b
    .line 161
    .local v24, "infinityAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v25, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@14d
    const-string/jumbo v27, "minus-sign"

    #@150
    .line 162
    const-string/jumbo v31, "-"

    #@153
    .line 161
    const/16 v26, 0x0

    #@155
    .line 162
    const/16 v28, 0x6

    #@157
    const/16 v29, 0x0

    #@159
    const/16 v30, 0x1

    #@15b
    .line 161
    invoke-direct/range {v25 .. v31}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    #@15e
    .line 163
    .local v25, "minusSignAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v26, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@160
    const-string/jumbo v28, "NaN"

    #@163
    .line 164
    const-string/jumbo v32, "NaN"

    #@166
    .line 163
    const/16 v27, 0x0

    #@168
    .line 164
    const/16 v29, 0x1

    #@16a
    const/16 v30, 0x0

    #@16c
    const/16 v31, 0x1

    #@16e
    .line 163
    invoke-direct/range {v26 .. v32}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    #@171
    .line 165
    .local v26, "NaNAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v27, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@173
    const-string/jumbo v29, "percent"

    #@176
    .line 166
    const-string/jumbo v33, "%"

    #@179
    .line 165
    const/16 v28, 0x0

    #@17b
    .line 166
    const/16 v30, 0x6

    #@17d
    const/16 v31, 0x0

    #@17f
    const/16 v32, 0x1

    #@181
    .line 165
    invoke-direct/range {v27 .. v33}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    #@184
    .line 167
    .local v27, "percentAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v28, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@186
    const-string/jumbo v30, "per-mille"

    #@189
    const/16 v29, 0x0

    #@18b
    .line 168
    const/16 v31, 0x6

    #@18d
    .line 169
    const/16 v32, 0x0

    #@18f
    const/16 v33, 0x0

    #@191
    const/16 v34, 0x1

    #@193
    .line 167
    invoke-direct/range {v28 .. v34}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@196
    .line 170
    .local v28, "perMilleAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v29, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@198
    const-string/jumbo v31, "zero-digit"

    #@19b
    .line 171
    const-string/jumbo v35, "0"

    #@19e
    .line 170
    const/16 v30, 0x0

    #@1a0
    .line 171
    const/16 v32, 0x6

    #@1a2
    const/16 v33, 0x0

    #@1a4
    const/16 v34, 0x1

    #@1a6
    .line 170
    invoke-direct/range {v29 .. v35}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    #@1a9
    .line 172
    .local v29, "zeroDigitAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v30, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@1ab
    const-string/jumbo v32, "digit"

    #@1ae
    .line 173
    const-string/jumbo v36, "#"

    #@1b1
    .line 172
    const/16 v31, 0x0

    #@1b3
    .line 173
    const/16 v33, 0x6

    #@1b5
    const/16 v34, 0x0

    #@1b7
    const/16 v35, 0x1

    #@1b9
    .line 172
    invoke-direct/range {v30 .. v36}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    #@1bc
    .line 174
    .local v30, "digitAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v31, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@1be
    .line 175
    const-string/jumbo v33, "pattern-separator"

    #@1c1
    .line 176
    const-string/jumbo v37, ";"

    #@1c4
    .line 174
    const/16 v32, 0x0

    #@1c6
    .line 176
    const/16 v34, 0x6

    #@1c8
    const/16 v35, 0x0

    #@1ca
    const/16 v36, 0x1

    #@1cc
    .line 174
    invoke-direct/range {v31 .. v37}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    #@1cf
    .line 178
    .local v31, "patternSeparatorAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v32, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@1d1
    .line 179
    const-string/jumbo v34, "grouping-separator"

    #@1d4
    .line 180
    const-string/jumbo v38, ","

    #@1d7
    .line 178
    const/16 v33, 0x0

    #@1d9
    .line 180
    const/16 v35, 0x6

    #@1db
    const/16 v36, 0x0

    #@1dd
    const/16 v37, 0x1

    #@1df
    .line 178
    invoke-direct/range {v32 .. v38}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    #@1e2
    .line 184
    .local v32, "groupingSeparatorAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v33, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@1e4
    .line 185
    const-string/jumbo v35, "use-attribute-sets"

    #@1e7
    .line 184
    const/16 v34, 0x0

    #@1e9
    .line 186
    const/16 v36, 0xa

    #@1eb
    .line 187
    const/16 v37, 0x0

    #@1ed
    const/16 v38, 0x0

    #@1ef
    const/16 v39, 0x1

    #@1f1
    .line 184
    invoke-direct/range {v33 .. v39}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@1f4
    .line 190
    .local v33, "useAttributeSetsAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v34, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@1f6
    const-string/jumbo v36, "test"

    #@1f9
    const/16 v35, 0x0

    #@1fb
    .line 191
    const/16 v37, 0x5

    #@1fd
    const/16 v38, 0x1

    #@1ff
    const/16 v39, 0x0

    #@201
    const/16 v40, 0x1

    #@203
    .line 190
    invoke-direct/range {v34 .. v40}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@206
    .line 196
    .local v34, "testAttrRequired":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v35, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@208
    .line 197
    const-string/jumbo v37, "select"

    #@20b
    .line 196
    const/16 v36, 0x0

    #@20d
    .line 198
    const/16 v38, 0x5

    #@20f
    const/16 v39, 0x1

    #@211
    const/16 v40, 0x0

    #@213
    const/16 v41, 0x1

    #@215
    .line 196
    invoke-direct/range {v35 .. v41}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@218
    .line 202
    .local v35, "selectAttrRequired":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v36, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@21a
    const-string/jumbo v38, "select"

    #@21d
    const/16 v37, 0x0

    #@21f
    .line 203
    const/16 v39, 0x5

    #@221
    const/16 v40, 0x0

    #@223
    const/16 v41, 0x0

    #@225
    const/16 v42, 0x1

    #@227
    .line 202
    invoke-direct/range {v36 .. v42}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@22a
    .line 208
    .local v36, "selectAttrOpt":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v37, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@22c
    const-string/jumbo v39, "select"

    #@22f
    .line 209
    const-string/jumbo v43, "node()"

    #@232
    .line 208
    const/16 v38, 0x0

    #@234
    .line 209
    const/16 v40, 0x5

    #@236
    const/16 v41, 0x0

    #@238
    const/16 v42, 0x1

    #@23a
    .line 208
    invoke-direct/range {v37 .. v43}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    #@23d
    .line 213
    .local v37, "selectAttrDefNode":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v38, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@23f
    const-string/jumbo v40, "select"

    #@242
    .line 214
    const-string/jumbo v44, "."

    #@245
    .line 213
    const/16 v39, 0x0

    #@247
    .line 214
    const/16 v41, 0x5

    #@249
    const/16 v42, 0x0

    #@24b
    const/16 v43, 0x1

    #@24d
    .line 213
    invoke-direct/range {v38 .. v44}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    #@250
    .line 216
    .local v38, "selectAttrDefDot":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v39, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@252
    const-string/jumbo v41, "match"

    #@255
    const/16 v40, 0x0

    #@257
    .line 217
    const/16 v42, 0x4

    #@259
    const/16 v43, 0x1

    #@25b
    const/16 v44, 0x0

    #@25d
    const/16 v45, 0x1

    #@25f
    .line 216
    invoke-direct/range {v39 .. v45}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@262
    .line 219
    .local v39, "matchAttrRequired":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v40, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@264
    const-string/jumbo v42, "match"

    #@267
    const/16 v41, 0x0

    #@269
    .line 220
    const/16 v43, 0x4

    #@26b
    const/16 v44, 0x0

    #@26d
    const/16 v45, 0x0

    #@26f
    const/16 v46, 0x1

    #@271
    .line 219
    invoke-direct/range {v40 .. v46}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@274
    .line 222
    .local v40, "matchAttrOpt":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v41, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@276
    const-string/jumbo v43, "priority"

    #@279
    const/16 v42, 0x0

    #@27b
    .line 223
    const/16 v44, 0x7

    #@27d
    const/16 v45, 0x0

    #@27f
    const/16 v46, 0x0

    #@281
    const/16 v47, 0x1

    #@283
    .line 222
    invoke-direct/range {v41 .. v47}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@286
    .line 226
    .local v41, "priorityAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v42, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@288
    const-string/jumbo v44, "mode"

    #@28b
    const/16 v43, 0x0

    #@28d
    .line 227
    const/16 v45, 0x9

    #@28f
    const/16 v46, 0x0

    #@291
    const/16 v47, 0x0

    #@293
    const/16 v48, 0x1

    #@295
    .line 226
    invoke-direct/range {v42 .. v48}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@298
    .line 230
    .local v42, "modeAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v43, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@29a
    const-string/jumbo v44, "http://www.w3.org/XML/1998/namespace"

    #@29d
    const-string/jumbo v45, "space"

    #@2a0
    .line 231
    const-string/jumbo v50, "default"

    #@2a3
    const-string/jumbo v52, "preserve"

    #@2a6
    .line 230
    const/16 v46, 0x0

    #@2a8
    const/16 v47, 0x0

    #@2aa
    const/16 v48, 0x0

    #@2ac
    const/16 v49, 0x2

    #@2ae
    .line 231
    const/16 v51, 0x2

    #@2b0
    .line 232
    const/16 v53, 0x1

    #@2b2
    .line 230
    invoke-direct/range {v43 .. v53}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    #@2b5
    .line 236
    .local v43, "spaceAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v44, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@2b7
    const-string/jumbo v45, "http://www.w3.org/XML/1998/namespace"

    #@2ba
    const-string/jumbo v46, "space"

    #@2bd
    .line 237
    const/16 v47, 0x2

    #@2bf
    const/16 v48, 0x0

    #@2c1
    const/16 v49, 0x1

    #@2c3
    const/16 v50, 0x1

    #@2c5
    .line 236
    invoke-direct/range {v44 .. v50}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@2c8
    .line 239
    .local v44, "spaceAttrLiteral":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v45, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@2ca
    .line 240
    const-string/jumbo v47, "stylesheet-prefix"

    #@2cd
    .line 239
    const/16 v46, 0x0

    #@2cf
    .line 241
    const/16 v48, 0x1

    #@2d1
    const/16 v49, 0x1

    #@2d3
    const/16 v50, 0x0

    #@2d5
    const/16 v51, 0x1

    #@2d7
    .line 239
    invoke-direct/range {v45 .. v51}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@2da
    .line 242
    .local v45, "stylesheetPrefixAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v46, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@2dc
    .line 243
    const-string/jumbo v48, "result-prefix"

    #@2df
    .line 242
    const/16 v47, 0x0

    #@2e1
    .line 244
    const/16 v49, 0x1

    #@2e3
    const/16 v50, 0x1

    #@2e5
    const/16 v51, 0x0

    #@2e7
    const/16 v52, 0x1

    #@2e9
    .line 242
    invoke-direct/range {v46 .. v52}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@2ec
    .line 247
    .local v46, "resultPrefixAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v47, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@2ee
    .line 248
    const-string/jumbo v49, "disable-output-escaping"

    #@2f1
    .line 247
    const/16 v48, 0x0

    #@2f3
    .line 249
    const/16 v50, 0x8

    #@2f5
    .line 250
    const/16 v51, 0x0

    #@2f7
    const/16 v52, 0x0

    #@2f9
    const/16 v53, 0x1

    #@2fb
    .line 247
    invoke-direct/range {v47 .. v53}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@2fe
    .line 253
    .local v47, "disableOutputEscapingAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v48, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@300
    const-string/jumbo v50, "level"

    #@303
    .line 254
    const-string/jumbo v55, "single"

    #@306
    .line 255
    const-string/jumbo v57, "multiple"

    #@309
    .line 256
    const-string/jumbo v59, "any"

    #@30c
    .line 253
    const/16 v49, 0x0

    #@30e
    const/16 v51, 0x0

    #@310
    const/16 v52, 0x0

    #@312
    const/16 v53, 0x0

    #@314
    const/16 v54, 0x1

    #@316
    .line 254
    const/16 v56, 0x1

    #@318
    .line 255
    const/16 v58, 0x2

    #@31a
    .line 256
    const/16 v60, 0x3

    #@31c
    .line 253
    invoke-direct/range {v48 .. v60}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    #@31f
    .line 257
    .local v48, "levelAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    const-string/jumbo v70, "single"

    #@322
    move-object/from16 v0, v48

    #@324
    move-object/from16 v1, v70

    #@326
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    #@329
    .line 258
    new-instance v49, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@32b
    const-string/jumbo v51, "count"

    #@32e
    const/16 v50, 0x0

    #@330
    .line 259
    const/16 v52, 0x4

    #@332
    const/16 v53, 0x0

    #@334
    const/16 v54, 0x0

    #@336
    const/16 v55, 0x1

    #@338
    .line 258
    invoke-direct/range {v49 .. v55}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@33b
    .line 260
    .local v49, "countAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v50, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@33d
    const-string/jumbo v52, "from"

    #@340
    const/16 v51, 0x0

    #@342
    .line 261
    const/16 v53, 0x4

    #@344
    const/16 v54, 0x0

    #@346
    const/16 v55, 0x0

    #@348
    const/16 v56, 0x1

    #@34a
    .line 260
    invoke-direct/range {v50 .. v56}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@34d
    .line 262
    .local v50, "fromAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v51, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@34f
    const-string/jumbo v53, "value"

    #@352
    const/16 v52, 0x0

    #@354
    .line 263
    const/16 v54, 0x5

    #@356
    const/16 v55, 0x0

    #@358
    const/16 v56, 0x0

    #@35a
    const/16 v57, 0x1

    #@35c
    .line 262
    invoke-direct/range {v51 .. v57}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@35f
    .line 264
    .local v51, "valueAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v52, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@361
    const-string/jumbo v54, "format"

    #@364
    const/16 v53, 0x0

    #@366
    .line 265
    const/16 v55, 0x1

    #@368
    const/16 v56, 0x0

    #@36a
    const/16 v57, 0x1

    #@36c
    const/16 v58, 0x1

    #@36e
    .line 264
    invoke-direct/range {v52 .. v58}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@371
    .line 266
    .local v52, "formatAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    const-string/jumbo v70, "1"

    #@374
    move-object/from16 v0, v52

    #@376
    move-object/from16 v1, v70

    #@378
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    #@37b
    .line 269
    new-instance v53, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@37d
    const-string/jumbo v55, "lang"

    #@380
    const/16 v54, 0x0

    #@382
    .line 270
    const/16 v56, 0xd

    #@384
    const/16 v57, 0x0

    #@386
    const/16 v58, 0x1

    #@388
    const/16 v59, 0x1

    #@38a
    .line 269
    invoke-direct/range {v53 .. v59}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@38d
    .line 273
    .local v53, "langAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v54, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@38f
    .line 274
    const-string/jumbo v56, "letter-value"

    #@392
    .line 276
    const-string/jumbo v61, "alphabetic"

    #@395
    .line 277
    const-string/jumbo v63, "traditional"

    #@398
    .line 273
    const/16 v55, 0x0

    #@39a
    .line 275
    const/16 v57, 0x0

    #@39c
    const/16 v58, 0x1

    #@39e
    const/16 v59, 0x0

    #@3a0
    const/16 v60, 0x1

    #@3a2
    .line 276
    const/16 v62, 0x1

    #@3a4
    .line 277
    const/16 v64, 0x2

    #@3a6
    .line 273
    invoke-direct/range {v54 .. v64}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    #@3a9
    .line 279
    .local v54, "letterValueAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v55, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@3ab
    .line 280
    const-string/jumbo v57, "grouping-separator"

    #@3ae
    .line 279
    const/16 v56, 0x0

    #@3b0
    .line 281
    const/16 v58, 0x6

    #@3b2
    const/16 v59, 0x0

    #@3b4
    const/16 v60, 0x1

    #@3b6
    const/16 v61, 0x1

    #@3b8
    .line 279
    invoke-direct/range {v55 .. v61}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@3bb
    .line 283
    .local v55, "groupingSeparatorAVT":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v56, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@3bd
    .line 284
    const-string/jumbo v58, "grouping-size"

    #@3c0
    .line 283
    const/16 v57, 0x0

    #@3c2
    .line 285
    const/16 v59, 0x7

    #@3c4
    const/16 v60, 0x0

    #@3c6
    const/16 v61, 0x1

    #@3c8
    const/16 v62, 0x1

    #@3ca
    .line 283
    invoke-direct/range {v56 .. v62}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@3cd
    .line 288
    .local v56, "groupingSizeAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v57, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@3cf
    const-string/jumbo v59, "data-type"

    #@3d2
    .line 289
    const-string/jumbo v64, "text"

    #@3d5
    const-string/jumbo v66, "number"

    #@3d8
    .line 288
    const/16 v58, 0x0

    #@3da
    const/16 v60, 0x0

    #@3dc
    const/16 v61, 0x1

    #@3de
    const/16 v62, 0x1

    #@3e0
    const/16 v63, 0x1

    #@3e2
    .line 289
    const/16 v65, 0x1

    #@3e4
    const/16 v67, 0x1

    #@3e6
    .line 288
    invoke-direct/range {v57 .. v67}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    #@3e9
    .line 290
    .local v57, "dataTypeAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    const-string/jumbo v70, "text"

    #@3ec
    move-object/from16 v0, v57

    #@3ee
    move-object/from16 v1, v70

    #@3f0
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    #@3f3
    .line 293
    new-instance v58, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@3f5
    const-string/jumbo v60, "order"

    #@3f8
    .line 294
    const-string/jumbo v65, "ascending"

    #@3fb
    .line 295
    const-string/jumbo v67, "descending"

    #@3fe
    .line 293
    const/16 v59, 0x0

    #@400
    const/16 v61, 0x0

    #@402
    const/16 v62, 0x1

    #@404
    const/16 v63, 0x0

    #@406
    const/16 v64, 0x1

    #@408
    .line 294
    const/16 v66, 0x1

    #@40a
    .line 295
    const/16 v68, 0x2

    #@40c
    .line 293
    invoke-direct/range {v58 .. v68}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    #@40f
    .line 296
    .local v58, "orderAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    const-string/jumbo v70, "ascending"

    #@412
    move-object/from16 v0, v58

    #@414
    move-object/from16 v1, v70

    #@416
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    #@419
    .line 299
    new-instance v59, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@41b
    const-string/jumbo v61, "case-order"

    #@41e
    .line 300
    const-string/jumbo v66, "upper-first"

    #@421
    .line 301
    const-string/jumbo v68, "lower-first"

    #@424
    .line 299
    const/16 v60, 0x0

    #@426
    const/16 v62, 0x0

    #@428
    const/16 v63, 0x1

    #@42a
    const/16 v64, 0x0

    #@42c
    const/16 v65, 0x1

    #@42e
    .line 300
    const/16 v67, 0x1

    #@430
    .line 301
    const/16 v69, 0x2

    #@432
    .line 299
    invoke-direct/range {v59 .. v69}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    #@435
    .line 304
    .local v59, "caseOrderAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v60, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@437
    const-string/jumbo v62, "terminate"

    #@43a
    const/16 v61, 0x0

    #@43c
    .line 305
    const/16 v63, 0x8

    #@43e
    const/16 v64, 0x0

    #@440
    const/16 v65, 0x0

    #@442
    const/16 v66, 0x1

    #@444
    .line 304
    invoke-direct/range {v60 .. v66}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@447
    .line 306
    .local v60, "terminateAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    const-string/jumbo v70, "no"

    #@44a
    move-object/from16 v0, v60

    #@44c
    move-object/from16 v1, v70

    #@44e
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    #@451
    .line 310
    new-instance v61, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@453
    const-string/jumbo v62, "http://www.w3.org/1999/XSL/Transform"

    #@456
    .line 311
    const-string/jumbo v63, "exclude-result-prefixes"

    #@459
    .line 312
    const/16 v64, 0x14

    #@45b
    const/16 v65, 0x0

    #@45d
    const/16 v66, 0x0

    #@45f
    const/16 v67, 0x1

    #@461
    .line 310
    invoke-direct/range {v61 .. v67}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@464
    .line 314
    .local v61, "xslExcludeResultPrefixesAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v62, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@466
    const-string/jumbo v63, "http://www.w3.org/1999/XSL/Transform"

    #@469
    .line 315
    const-string/jumbo v64, "extension-element-prefixes"

    #@46c
    .line 316
    const/16 v65, 0xf

    #@46e
    const/16 v66, 0x0

    #@470
    const/16 v67, 0x0

    #@472
    const/16 v68, 0x1

    #@474
    .line 314
    invoke-direct/range {v62 .. v68}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@477
    .line 319
    .local v62, "xslExtensionElementPrefixesAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v63, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@479
    const-string/jumbo v64, "http://www.w3.org/1999/XSL/Transform"

    #@47c
    const-string/jumbo v65, "use-attribute-sets"

    #@47f
    .line 320
    const/16 v66, 0xa

    #@481
    const/16 v67, 0x0

    #@483
    const/16 v68, 0x0

    #@485
    const/16 v69, 0x1

    #@487
    .line 319
    invoke-direct/range {v63 .. v69}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@48a
    .line 322
    .local v63, "xslUseAttributeSetsAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v64, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@48c
    const-string/jumbo v65, "http://www.w3.org/1999/XSL/Transform"

    #@48f
    const-string/jumbo v66, "version"

    #@492
    .line 323
    const/16 v67, 0xd

    #@494
    const/16 v68, 0x0

    #@496
    const/16 v69, 0x0

    #@498
    const/16 v70, 0x1

    #@49a
    .line 322
    invoke-direct/range {v64 .. v70}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@49d
    .line 325
    .local v64, "xslVersionAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v65, Lorg/apache/xalan/processor/XSLTElementDef;

    #@49f
    const-string/jumbo v68, "text()"

    #@4a2
    .line 327
    new-instance v72, Lorg/apache/xalan/processor/ProcessorCharacters;

    #@4a4
    invoke-direct/range {v72 .. v72}, Lorg/apache/xalan/processor/ProcessorCharacters;-><init>()V

    #@4a7
    .line 328
    const-class v73, Lorg/apache/xalan/templates/ElemTextLiteral;

    #@4a9
    .line 325
    const/16 v67, 0x0

    #@4ab
    .line 326
    const/16 v69, 0x0

    #@4ad
    const/16 v70, 0x0

    #@4af
    const/16 v71, 0x0

    #@4b1
    move-object/from16 v66, p0

    #@4b3
    .line 325
    invoke-direct/range {v65 .. v73}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    #@4b6
    .line 330
    .local v65, "charData":Lorg/apache/xalan/processor/XSLTElementDef;
    const/16 v70, 0x2

    #@4b8
    move-object/from16 v0, v65

    #@4ba
    move/from16 v1, v70

    #@4bc
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setType(I)V

    #@4bf
    .line 332
    new-instance v66, Lorg/apache/xalan/processor/XSLTElementDef;

    #@4c1
    const-string/jumbo v69, "text()"

    #@4c4
    .line 336
    const-class v74, Lorg/apache/xalan/templates/ElemTextLiteral;

    #@4c6
    .line 332
    const/16 v68, 0x0

    #@4c8
    .line 333
    const/16 v70, 0x0

    #@4ca
    const/16 v71, 0x0

    #@4cc
    .line 334
    const/16 v72, 0x0

    #@4ce
    .line 335
    const/16 v73, 0x0

    #@4d0
    move-object/from16 v67, p0

    #@4d2
    .line 332
    invoke-direct/range {v66 .. v74}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    #@4d5
    .line 338
    .local v66, "whiteSpaceOnly":Lorg/apache/xalan/processor/XSLTElementDef;
    const/16 v70, 0x2

    #@4d7
    move-object/from16 v0, v65

    #@4d9
    move/from16 v1, v70

    #@4db
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setType(I)V

    #@4de
    .line 340
    new-instance v67, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@4e0
    const-string/jumbo v69, "*"

    #@4e3
    const/16 v68, 0x0

    #@4e5
    .line 341
    const/16 v70, 0x3

    #@4e7
    const/16 v71, 0x0

    #@4e9
    const/16 v72, 0x1

    #@4eb
    const/16 v73, 0x2

    #@4ed
    .line 340
    invoke-direct/range {v67 .. v73}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@4f0
    .line 343
    .local v67, "resultAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v68, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@4f2
    const-string/jumbo v69, "http://www.w3.org/1999/XSL/Transform"

    #@4f5
    const-string/jumbo v70, "*"

    #@4f8
    .line 344
    const/16 v71, 0x1

    #@4fa
    const/16 v72, 0x0

    #@4fc
    const/16 v73, 0x0

    #@4fe
    const/16 v74, 0x2

    #@500
    .line 343
    invoke-direct/range {v68 .. v74}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@503
    .line 346
    .local v68, "xslResultAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    const/16 v70, 0x17

    #@505
    move/from16 v0, v70

    #@507
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@509
    move-object/from16 v74, v0

    #@50b
    .line 347
    .local v74, "templateElements":[Lorg/apache/xalan/processor/XSLTElementDef;
    const/16 v70, 0x18

    #@50d
    move/from16 v0, v70

    #@50f
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@511
    move-object/from16 v80, v0

    #@513
    .line 348
    .local v80, "templateElementsAndParams":[Lorg/apache/xalan/processor/XSLTElementDef;
    const/16 v70, 0x18

    #@515
    move/from16 v0, v70

    #@517
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@519
    move-object/from16 v130, v0

    #@51b
    .line 350
    .local v130, "templateElementsAndSort":[Lorg/apache/xalan/processor/XSLTElementDef;
    const/16 v70, 0x18

    #@51d
    move/from16 v0, v70

    #@51f
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@521
    move-object/from16 v126, v0

    #@523
    .line 352
    .local v126, "exsltFunctionElements":[Lorg/apache/xalan/processor/XSLTElementDef;
    const/16 v70, 0xf

    #@525
    move/from16 v0, v70

    #@527
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@529
    move-object/from16 v124, v0

    #@52b
    .line 353
    .local v124, "charTemplateElements":[Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v69, Lorg/apache/xalan/processor/XSLTElementDef;

    #@52d
    const-string/jumbo v72, "*"

    #@530
    .line 356
    const/16 v70, 0x7

    #@532
    move/from16 v0, v70

    #@534
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@536
    move-object/from16 v75, v0

    #@538
    .line 357
    const/16 v70, 0x0

    #@53a
    aput-object v44, v75, v70

    #@53c
    .line 358
    const/16 v70, 0x1

    #@53e
    aput-object v61, v75, v70

    #@540
    .line 359
    const/16 v70, 0x2

    #@542
    aput-object v62, v75, v70

    #@544
    .line 360
    const/16 v70, 0x3

    #@546
    aput-object v63, v75, v70

    #@548
    .line 361
    const/16 v70, 0x4

    #@54a
    aput-object v64, v75, v70

    #@54c
    .line 362
    const/16 v70, 0x5

    #@54e
    aput-object v68, v75, v70

    #@550
    .line 363
    const/16 v70, 0x6

    #@552
    aput-object v67, v75, v70

    #@554
    .line 364
    new-instance v76, Lorg/apache/xalan/processor/ProcessorLRE;

    #@556
    invoke-direct/range {v76 .. v76}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    #@559
    .line 365
    const-class v77, Lorg/apache/xalan/templates/ElemLiteralResult;

    #@55b
    .line 353
    const/16 v71, 0x0

    #@55d
    .line 354
    const/16 v73, 0x0

    #@55f
    .line 365
    const/16 v78, 0x14

    #@561
    const/16 v79, 0x1

    #@563
    move-object/from16 v70, p0

    #@565
    .line 353
    invoke-direct/range {v69 .. v79}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@568
    .line 367
    .local v69, "resultElement":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v75, Lorg/apache/xalan/processor/XSLTElementDef;

    #@56a
    const-string/jumbo v77, "*"

    #@56d
    const-string/jumbo v78, "unknown"

    #@570
    .line 369
    const/16 v70, 0x6

    #@572
    move/from16 v0, v70

    #@574
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@576
    move-object/from16 v81, v0

    #@578
    const/16 v70, 0x0

    #@57a
    aput-object v61, v81, v70

    #@57c
    .line 370
    const/16 v70, 0x1

    #@57e
    aput-object v62, v81, v70

    #@580
    .line 371
    const/16 v70, 0x2

    #@582
    aput-object v63, v81, v70

    #@584
    .line 372
    const/16 v70, 0x3

    #@586
    aput-object v64, v81, v70

    #@588
    .line 373
    const/16 v70, 0x4

    #@58a
    aput-object v68, v81, v70

    #@58c
    .line 374
    const/16 v70, 0x5

    #@58e
    aput-object v67, v81, v70

    #@590
    .line 375
    new-instance v82, Lorg/apache/xalan/processor/ProcessorUnknown;

    #@592
    invoke-direct/range {v82 .. v82}, Lorg/apache/xalan/processor/ProcessorUnknown;-><init>()V

    #@595
    .line 376
    const-class v83, Lorg/apache/xalan/templates/ElemUnknown;

    #@597
    .line 367
    const/16 v79, 0x0

    #@599
    .line 376
    const/16 v84, 0x14

    #@59b
    const/16 v85, 0x1

    #@59d
    move-object/from16 v76, p0

    #@59f
    .line 367
    invoke-direct/range {v75 .. v85}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@5a2
    .line 377
    .local v75, "unknownElement":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v81, Lorg/apache/xalan/processor/XSLTElementDef;

    #@5a4
    .line 378
    const-string/jumbo v83, "http://www.w3.org/1999/XSL/Transform"

    #@5a7
    const-string/jumbo v84, "value-of"

    #@5aa
    .line 380
    const/16 v70, 0x2

    #@5ac
    move/from16 v0, v70

    #@5ae
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@5b0
    move-object/from16 v87, v0

    #@5b2
    const/16 v70, 0x0

    #@5b4
    aput-object v35, v87, v70

    #@5b6
    .line 381
    const/16 v70, 0x1

    #@5b8
    aput-object v47, v87, v70

    #@5ba
    .line 382
    new-instance v88, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@5bc
    invoke-direct/range {v88 .. v88}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@5bf
    .line 383
    const-class v89, Lorg/apache/xalan/templates/ElemValueOf;

    #@5c1
    .line 379
    const/16 v85, 0x0

    #@5c3
    const/16 v86, 0x0

    #@5c5
    .line 383
    const/16 v90, 0x14

    #@5c7
    const/16 v91, 0x1

    #@5c9
    move-object/from16 v82, p0

    #@5cb
    .line 377
    invoke-direct/range {v81 .. v91}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@5ce
    .line 384
    .local v81, "xslValueOf":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v82, Lorg/apache/xalan/processor/XSLTElementDef;

    #@5d0
    .line 385
    const-string/jumbo v84, "http://www.w3.org/1999/XSL/Transform"

    #@5d3
    const-string/jumbo v85, "copy-of"

    #@5d6
    .line 387
    const/16 v70, 0x1

    #@5d8
    move/from16 v0, v70

    #@5da
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@5dc
    move-object/from16 v88, v0

    #@5de
    const/16 v70, 0x0

    #@5e0
    aput-object v35, v88, v70

    #@5e2
    .line 388
    new-instance v89, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@5e4
    invoke-direct/range {v89 .. v89}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@5e7
    .line 389
    const-class v90, Lorg/apache/xalan/templates/ElemCopyOf;

    #@5e9
    .line 386
    const/16 v86, 0x0

    #@5eb
    const/16 v87, 0x0

    #@5ed
    .line 389
    const/16 v91, 0x14

    #@5ef
    const/16 v92, 0x1

    #@5f1
    move-object/from16 v83, p0

    #@5f3
    .line 384
    invoke-direct/range {v82 .. v92}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@5f6
    .line 390
    .local v82, "xslCopyOf":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v83, Lorg/apache/xalan/processor/XSLTElementDef;

    #@5f8
    .line 391
    const-string/jumbo v85, "http://www.w3.org/1999/XSL/Transform"

    #@5fb
    const-string/jumbo v86, "number"

    #@5fe
    .line 393
    const/16 v70, 0x9

    #@600
    move/from16 v0, v70

    #@602
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@604
    move-object/from16 v89, v0

    #@606
    const/16 v70, 0x0

    #@608
    aput-object v48, v89, v70

    #@60a
    .line 394
    const/16 v70, 0x1

    #@60c
    aput-object v49, v89, v70

    #@60e
    .line 395
    const/16 v70, 0x2

    #@610
    aput-object v50, v89, v70

    #@612
    .line 396
    const/16 v70, 0x3

    #@614
    aput-object v51, v89, v70

    #@616
    .line 397
    const/16 v70, 0x4

    #@618
    aput-object v52, v89, v70

    #@61a
    .line 398
    const/16 v70, 0x5

    #@61c
    aput-object v53, v89, v70

    #@61e
    .line 399
    const/16 v70, 0x6

    #@620
    aput-object v54, v89, v70

    #@622
    .line 400
    const/16 v70, 0x7

    #@624
    aput-object v55, v89, v70

    #@626
    .line 401
    const/16 v70, 0x8

    #@628
    aput-object v56, v89, v70

    #@62a
    .line 402
    new-instance v90, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@62c
    invoke-direct/range {v90 .. v90}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@62f
    .line 403
    const-class v91, Lorg/apache/xalan/templates/ElemNumber;

    #@631
    .line 392
    const/16 v87, 0x0

    #@633
    const/16 v88, 0x0

    #@635
    .line 403
    const/16 v92, 0x14

    #@637
    const/16 v93, 0x1

    #@639
    move-object/from16 v84, p0

    #@63b
    .line 390
    invoke-direct/range {v83 .. v93}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@63e
    .line 407
    .local v83, "xslNumber":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v84, Lorg/apache/xalan/processor/XSLTElementDef;

    #@640
    .line 408
    const-string/jumbo v86, "http://www.w3.org/1999/XSL/Transform"

    #@643
    .line 409
    const-string/jumbo v87, "sort"

    #@646
    .line 411
    const/16 v70, 0x5

    #@648
    move/from16 v0, v70

    #@64a
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@64c
    move-object/from16 v90, v0

    #@64e
    .line 412
    const/16 v70, 0x0

    #@650
    aput-object v38, v90, v70

    #@652
    .line 413
    const/16 v70, 0x1

    #@654
    aput-object v53, v90, v70

    #@656
    .line 414
    const/16 v70, 0x2

    #@658
    aput-object v57, v90, v70

    #@65a
    .line 415
    const/16 v70, 0x3

    #@65c
    aput-object v58, v90, v70

    #@65e
    .line 416
    const/16 v70, 0x4

    #@660
    aput-object v59, v90, v70

    #@662
    .line 417
    new-instance v91, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@664
    invoke-direct/range {v91 .. v91}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@667
    .line 418
    const-class v92, Lorg/apache/xalan/templates/ElemSort;

    #@669
    .line 409
    const/16 v88, 0x0

    #@66b
    .line 410
    const/16 v89, 0x0

    #@66d
    .line 418
    const/16 v93, 0x13

    #@66f
    const/16 v94, 0x1

    #@671
    move-object/from16 v85, p0

    #@673
    .line 407
    invoke-direct/range {v84 .. v94}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@676
    .line 419
    .local v84, "xslSort":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v85, Lorg/apache/xalan/processor/XSLTElementDef;

    #@678
    .line 420
    const-string/jumbo v87, "http://www.w3.org/1999/XSL/Transform"

    #@67b
    .line 421
    const-string/jumbo v88, "with-param"

    #@67e
    .line 423
    const/16 v70, 0x2

    #@680
    move/from16 v0, v70

    #@682
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@684
    move-object/from16 v91, v0

    #@686
    const/16 v70, 0x0

    #@688
    aput-object v17, v91, v70

    #@68a
    .line 424
    const/16 v70, 0x1

    #@68c
    aput-object v36, v91, v70

    #@68e
    new-instance v92, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@690
    invoke-direct/range {v92 .. v92}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@693
    .line 425
    const-class v93, Lorg/apache/xalan/templates/ElemWithParam;

    #@695
    .line 421
    const/16 v89, 0x0

    #@697
    .line 425
    const/16 v94, 0x13

    #@699
    const/16 v95, 0x1

    #@69b
    move-object/from16 v86, p0

    #@69d
    move-object/from16 v90, v74

    #@69f
    .line 419
    invoke-direct/range {v85 .. v95}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@6a2
    .line 426
    .local v85, "xslWithParam":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v86, Lorg/apache/xalan/processor/XSLTElementDef;

    #@6a4
    .line 427
    const-string/jumbo v88, "http://www.w3.org/1999/XSL/Transform"

    #@6a7
    .line 428
    const-string/jumbo v89, "apply-templates"

    #@6aa
    .line 429
    const/16 v70, 0x2

    #@6ac
    move/from16 v0, v70

    #@6ae
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@6b0
    move-object/from16 v91, v0

    #@6b2
    const/16 v70, 0x0

    #@6b4
    aput-object v84, v91, v70

    #@6b6
    .line 430
    const/16 v70, 0x1

    #@6b8
    aput-object v85, v91, v70

    #@6ba
    const/16 v70, 0x2

    #@6bc
    move/from16 v0, v70

    #@6be
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@6c0
    move-object/from16 v92, v0

    #@6c2
    .line 431
    const/16 v70, 0x0

    #@6c4
    aput-object v37, v92, v70

    #@6c6
    .line 432
    const/16 v70, 0x1

    #@6c8
    aput-object v42, v92, v70

    #@6ca
    .line 433
    new-instance v93, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@6cc
    invoke-direct/range {v93 .. v93}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@6cf
    .line 434
    const-class v94, Lorg/apache/xalan/templates/ElemApplyTemplates;

    #@6d1
    .line 428
    const/16 v90, 0x0

    #@6d3
    .line 434
    const/16 v95, 0x14

    #@6d5
    const/16 v96, 0x1

    #@6d7
    move-object/from16 v87, p0

    #@6d9
    .line 426
    invoke-direct/range {v86 .. v96}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@6dc
    .line 436
    .local v86, "xslApplyTemplates":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v87, Lorg/apache/xalan/processor/XSLTElementDef;

    #@6de
    const-string/jumbo v89, "http://www.w3.org/1999/XSL/Transform"

    #@6e1
    const-string/jumbo v90, "apply-imports"

    #@6e4
    .line 438
    const/16 v70, 0x0

    #@6e6
    move/from16 v0, v70

    #@6e8
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@6ea
    move-object/from16 v93, v0

    #@6ec
    .line 439
    new-instance v94, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@6ee
    invoke-direct/range {v94 .. v94}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@6f1
    .line 440
    const-class v95, Lorg/apache/xalan/templates/ElemApplyImport;

    #@6f3
    .line 437
    const/16 v91, 0x0

    #@6f5
    const/16 v92, 0x0

    #@6f7
    move-object/from16 v88, p0

    #@6f9
    .line 436
    invoke-direct/range {v87 .. v95}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    #@6fc
    .line 441
    .local v87, "xslApplyImports":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v88, Lorg/apache/xalan/processor/XSLTElementDef;

    #@6fe
    .line 442
    const-string/jumbo v90, "http://www.w3.org/1999/XSL/Transform"

    #@701
    const-string/jumbo v91, "for-each"

    #@704
    .line 444
    const/16 v70, 0x2

    #@706
    move/from16 v0, v70

    #@708
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@70a
    move-object/from16 v94, v0

    #@70c
    const/16 v70, 0x0

    #@70e
    aput-object v35, v94, v70

    #@710
    .line 445
    const/16 v70, 0x1

    #@712
    aput-object v43, v94, v70

    #@714
    .line 446
    new-instance v95, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@716
    invoke-direct/range {v95 .. v95}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@719
    .line 447
    const-class v96, Lorg/apache/xalan/templates/ElemForEach;

    #@71b
    .line 443
    const/16 v92, 0x0

    #@71d
    .line 447
    const/16 v97, 0x1

    #@71f
    const/16 v98, 0x0

    #@721
    const/16 v99, 0x1

    #@723
    const/16 v100, 0x14

    #@725
    const/16 v101, 0x1

    #@727
    move-object/from16 v89, p0

    #@729
    move-object/from16 v93, v130

    #@72b
    .line 441
    invoke-direct/range {v88 .. v101}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V

    #@72e
    .line 448
    .local v88, "xslForEach":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v89, Lorg/apache/xalan/processor/XSLTElementDef;

    #@730
    .line 449
    const-string/jumbo v91, "http://www.w3.org/1999/XSL/Transform"

    #@733
    .line 450
    const-string/jumbo v92, "if"

    #@736
    .line 452
    const/16 v70, 0x2

    #@738
    move/from16 v0, v70

    #@73a
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@73c
    move-object/from16 v95, v0

    #@73e
    .line 453
    const/16 v70, 0x0

    #@740
    aput-object v34, v95, v70

    #@742
    .line 454
    const/16 v70, 0x1

    #@744
    aput-object v43, v95, v70

    #@746
    new-instance v96, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@748
    invoke-direct/range {v96 .. v96}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@74b
    .line 455
    const-class v97, Lorg/apache/xalan/templates/ElemIf;

    #@74d
    .line 450
    const/16 v93, 0x0

    #@74f
    .line 455
    const/16 v98, 0x14

    #@751
    const/16 v99, 0x1

    #@753
    move-object/from16 v90, p0

    #@755
    move-object/from16 v94, v74

    #@757
    .line 448
    invoke-direct/range {v89 .. v99}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@75a
    .line 457
    .local v89, "xslIf":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v90, Lorg/apache/xalan/processor/XSLTElementDef;

    #@75c
    const-string/jumbo v92, "http://www.w3.org/1999/XSL/Transform"

    #@75f
    const-string/jumbo v93, "when"

    #@762
    .line 459
    const/16 v70, 0x2

    #@764
    move/from16 v0, v70

    #@766
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@768
    move-object/from16 v96, v0

    #@76a
    .line 460
    const/16 v70, 0x0

    #@76c
    aput-object v34, v96, v70

    #@76e
    .line 461
    const/16 v70, 0x1

    #@770
    aput-object v43, v96, v70

    #@772
    new-instance v97, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@774
    invoke-direct/range {v97 .. v97}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@777
    .line 462
    const-class v98, Lorg/apache/xalan/templates/ElemWhen;

    #@779
    .line 458
    const/16 v94, 0x0

    #@77b
    .line 463
    const/16 v99, 0x0

    #@77d
    const/16 v100, 0x1

    #@77f
    const/16 v101, 0x1

    #@781
    const/16 v102, 0x1

    #@783
    move-object/from16 v91, p0

    #@785
    move-object/from16 v95, v74

    #@787
    .line 457
    invoke-direct/range {v90 .. v102}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V

    #@78a
    .line 464
    .local v90, "xslWhen":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v91, Lorg/apache/xalan/processor/XSLTElementDef;

    #@78c
    .line 465
    const-string/jumbo v93, "http://www.w3.org/1999/XSL/Transform"

    #@78f
    const-string/jumbo v94, "otherwise"

    #@792
    .line 468
    const/16 v70, 0x1

    #@794
    move/from16 v0, v70

    #@796
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@798
    move-object/from16 v97, v0

    #@79a
    const/16 v70, 0x0

    #@79c
    aput-object v43, v97, v70

    #@79e
    .line 469
    new-instance v98, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@7a0
    invoke-direct/range {v98 .. v98}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@7a3
    .line 470
    const-class v99, Lorg/apache/xalan/templates/ElemOtherwise;

    #@7a5
    .line 466
    const/16 v95, 0x0

    #@7a7
    .line 471
    const/16 v100, 0x0

    #@7a9
    const/16 v101, 0x0

    #@7ab
    const/16 v102, 0x2

    #@7ad
    const/16 v103, 0x0

    #@7af
    move-object/from16 v92, p0

    #@7b1
    move-object/from16 v96, v74

    #@7b3
    .line 464
    invoke-direct/range {v91 .. v103}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V

    #@7b6
    .line 472
    .local v91, "xslOtherwise":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v92, Lorg/apache/xalan/processor/XSLTElementDef;

    #@7b8
    .line 473
    const-string/jumbo v94, "http://www.w3.org/1999/XSL/Transform"

    #@7bb
    const-string/jumbo v95, "choose"

    #@7be
    .line 475
    const/16 v70, 0x2

    #@7c0
    move/from16 v0, v70

    #@7c2
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@7c4
    move-object/from16 v97, v0

    #@7c6
    const/16 v70, 0x0

    #@7c8
    aput-object v90, v97, v70

    #@7ca
    .line 476
    const/16 v70, 0x1

    #@7cc
    aput-object v91, v97, v70

    #@7ce
    .line 477
    const/16 v70, 0x1

    #@7d0
    move/from16 v0, v70

    #@7d2
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@7d4
    move-object/from16 v98, v0

    #@7d6
    const/16 v70, 0x0

    #@7d8
    aput-object v43, v98, v70

    #@7da
    .line 478
    new-instance v99, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@7dc
    invoke-direct/range {v99 .. v99}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@7df
    .line 479
    const-class v100, Lorg/apache/xalan/templates/ElemChoose;

    #@7e1
    .line 474
    const/16 v96, 0x0

    #@7e3
    .line 479
    const/16 v101, 0x1

    #@7e5
    const/16 v102, 0x0

    #@7e7
    const/16 v103, 0x1

    #@7e9
    const/16 v104, 0x14

    #@7eb
    const/16 v105, 0x1

    #@7ed
    move-object/from16 v93, p0

    #@7ef
    .line 472
    invoke-direct/range {v92 .. v105}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V

    #@7f2
    .line 480
    .local v92, "xslChoose":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v93, Lorg/apache/xalan/processor/XSLTElementDef;

    #@7f4
    .line 481
    const-string/jumbo v95, "http://www.w3.org/1999/XSL/Transform"

    #@7f7
    const-string/jumbo v96, "attribute"

    #@7fa
    .line 484
    const/16 v70, 0x3

    #@7fc
    move/from16 v0, v70

    #@7fe
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@800
    move-object/from16 v99, v0

    #@802
    const/16 v70, 0x0

    #@804
    aput-object v18, v99, v70

    #@806
    .line 485
    const/16 v70, 0x1

    #@808
    aput-object v22, v99, v70

    #@80a
    .line 486
    const/16 v70, 0x2

    #@80c
    aput-object v43, v99, v70

    #@80e
    .line 487
    new-instance v100, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@810
    invoke-direct/range {v100 .. v100}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@813
    .line 488
    const-class v101, Lorg/apache/xalan/templates/ElemAttribute;

    #@815
    .line 482
    const/16 v97, 0x0

    #@817
    .line 488
    const/16 v102, 0x14

    #@819
    const/16 v103, 0x1

    #@81b
    move-object/from16 v94, p0

    #@81d
    move-object/from16 v98, v124

    #@81f
    .line 480
    invoke-direct/range {v93 .. v103}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@822
    .line 490
    .local v93, "xslAttribute":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v94, Lorg/apache/xalan/processor/XSLTElementDef;

    #@824
    const-string/jumbo v96, "http://www.w3.org/1999/XSL/Transform"

    #@827
    const-string/jumbo v97, "call-template"

    #@82a
    .line 492
    const/16 v70, 0x1

    #@82c
    move/from16 v0, v70

    #@82e
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@830
    move-object/from16 v99, v0

    #@832
    const/16 v70, 0x0

    #@834
    aput-object v85, v99, v70

    #@836
    .line 493
    const/16 v70, 0x1

    #@838
    move/from16 v0, v70

    #@83a
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@83c
    move-object/from16 v100, v0

    #@83e
    const/16 v70, 0x0

    #@840
    aput-object v17, v100, v70

    #@842
    .line 494
    new-instance v101, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@844
    invoke-direct/range {v101 .. v101}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@847
    .line 495
    const-class v102, Lorg/apache/xalan/templates/ElemCallTemplate;

    #@849
    .line 491
    const/16 v98, 0x0

    #@84b
    .line 495
    const/16 v103, 0x14

    #@84d
    const/16 v104, 0x1

    #@84f
    move-object/from16 v95, p0

    #@851
    .line 490
    invoke-direct/range {v94 .. v104}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@854
    .line 496
    .local v94, "xslCallTemplate":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v95, Lorg/apache/xalan/processor/XSLTElementDef;

    #@856
    .line 497
    const-string/jumbo v97, "http://www.w3.org/1999/XSL/Transform"

    #@859
    const-string/jumbo v98, "variable"

    #@85c
    .line 500
    const/16 v70, 0x2

    #@85e
    move/from16 v0, v70

    #@860
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@862
    move-object/from16 v101, v0

    #@864
    const/16 v70, 0x0

    #@866
    aput-object v17, v101, v70

    #@868
    .line 501
    const/16 v70, 0x1

    #@86a
    aput-object v36, v101, v70

    #@86c
    .line 502
    new-instance v102, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@86e
    invoke-direct/range {v102 .. v102}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@871
    .line 503
    const-class v103, Lorg/apache/xalan/templates/ElemVariable;

    #@873
    .line 498
    const/16 v99, 0x0

    #@875
    .line 503
    const/16 v104, 0x14

    #@877
    const/16 v105, 0x1

    #@879
    move-object/from16 v96, p0

    #@87b
    move-object/from16 v100, v74

    #@87d
    .line 496
    invoke-direct/range {v95 .. v105}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@880
    .line 504
    .local v95, "xslVariable":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v96, Lorg/apache/xalan/processor/XSLTElementDef;

    #@882
    .line 505
    const-string/jumbo v98, "http://www.w3.org/1999/XSL/Transform"

    #@885
    const-string/jumbo v99, "param"

    #@888
    .line 508
    const/16 v70, 0x2

    #@88a
    move/from16 v0, v70

    #@88c
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@88e
    move-object/from16 v102, v0

    #@890
    const/16 v70, 0x0

    #@892
    aput-object v17, v102, v70

    #@894
    .line 509
    const/16 v70, 0x1

    #@896
    aput-object v36, v102, v70

    #@898
    .line 510
    new-instance v103, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@89a
    invoke-direct/range {v103 .. v103}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@89d
    .line 511
    const-class v104, Lorg/apache/xalan/templates/ElemParam;

    #@89f
    .line 506
    const/16 v100, 0x0

    #@8a1
    .line 511
    const/16 v105, 0x13

    #@8a3
    const/16 v106, 0x1

    #@8a5
    move-object/from16 v97, p0

    #@8a7
    move-object/from16 v101, v74

    #@8a9
    .line 504
    invoke-direct/range {v96 .. v106}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@8ac
    .line 513
    .local v96, "xslParam":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v97, Lorg/apache/xalan/processor/XSLTElementDef;

    #@8ae
    const-string/jumbo v99, "http://www.w3.org/1999/XSL/Transform"

    #@8b1
    const-string/jumbo v100, "text"

    #@8b4
    .line 515
    const/16 v70, 0x1

    #@8b6
    move/from16 v0, v70

    #@8b8
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@8ba
    move-object/from16 v102, v0

    #@8bc
    const/16 v70, 0x0

    #@8be
    aput-object v65, v102, v70

    #@8c0
    .line 516
    const/16 v70, 0x1

    #@8c2
    move/from16 v0, v70

    #@8c4
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@8c6
    move-object/from16 v103, v0

    #@8c8
    const/16 v70, 0x0

    #@8ca
    aput-object v47, v103, v70

    #@8cc
    .line 517
    new-instance v104, Lorg/apache/xalan/processor/ProcessorText;

    #@8ce
    invoke-direct/range {v104 .. v104}, Lorg/apache/xalan/processor/ProcessorText;-><init>()V

    #@8d1
    .line 518
    const-class v105, Lorg/apache/xalan/templates/ElemText;

    #@8d3
    .line 514
    const/16 v101, 0x0

    #@8d5
    .line 518
    const/16 v106, 0x14

    #@8d7
    const/16 v107, 0x1

    #@8d9
    move-object/from16 v98, p0

    #@8db
    .line 513
    invoke-direct/range {v97 .. v107}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@8de
    .line 520
    .local v97, "xslText":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v98, Lorg/apache/xalan/processor/XSLTElementDef;

    #@8e0
    const-string/jumbo v100, "http://www.w3.org/1999/XSL/Transform"

    #@8e3
    .line 521
    const-string/jumbo v101, "processing-instruction"

    #@8e6
    .line 523
    const/16 v70, 0x2

    #@8e8
    move/from16 v0, v70

    #@8ea
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@8ec
    move-object/from16 v104, v0

    #@8ee
    .line 524
    const/16 v70, 0x0

    #@8f0
    aput-object v19, v104, v70

    #@8f2
    .line 525
    const/16 v70, 0x1

    #@8f4
    aput-object v43, v104, v70

    #@8f6
    .line 526
    new-instance v105, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@8f8
    invoke-direct/range {v105 .. v105}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@8fb
    .line 527
    const-class v106, Lorg/apache/xalan/templates/ElemPI;

    #@8fd
    .line 521
    const/16 v102, 0x0

    #@8ff
    .line 527
    const/16 v107, 0x14

    #@901
    const/16 v108, 0x1

    #@903
    move-object/from16 v99, p0

    #@905
    move-object/from16 v103, v124

    #@907
    .line 520
    invoke-direct/range {v98 .. v108}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@90a
    .line 528
    .local v98, "xslProcessingInstruction":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v99, Lorg/apache/xalan/processor/XSLTElementDef;

    #@90c
    .line 529
    const-string/jumbo v101, "http://www.w3.org/1999/XSL/Transform"

    #@90f
    const-string/jumbo v102, "element"

    #@912
    .line 532
    const/16 v70, 0x4

    #@914
    move/from16 v0, v70

    #@916
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@918
    move-object/from16 v105, v0

    #@91a
    const/16 v70, 0x0

    #@91c
    aput-object v18, v105, v70

    #@91e
    .line 533
    const/16 v70, 0x1

    #@920
    aput-object v22, v105, v70

    #@922
    .line 534
    const/16 v70, 0x2

    #@924
    aput-object v33, v105, v70

    #@926
    .line 535
    const/16 v70, 0x3

    #@928
    aput-object v43, v105, v70

    #@92a
    .line 536
    new-instance v106, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@92c
    invoke-direct/range {v106 .. v106}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@92f
    .line 537
    const-class v107, Lorg/apache/xalan/templates/ElemElement;

    #@931
    .line 530
    const/16 v103, 0x0

    #@933
    .line 537
    const/16 v108, 0x14

    #@935
    const/16 v109, 0x1

    #@937
    move-object/from16 v100, p0

    #@939
    move-object/from16 v104, v74

    #@93b
    .line 528
    invoke-direct/range {v99 .. v109}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@93e
    .line 538
    .local v99, "xslElement":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v100, Lorg/apache/xalan/processor/XSLTElementDef;

    #@940
    .line 539
    const-string/jumbo v102, "http://www.w3.org/1999/XSL/Transform"

    #@943
    const-string/jumbo v103, "comment"

    #@946
    .line 542
    const/16 v70, 0x1

    #@948
    move/from16 v0, v70

    #@94a
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@94c
    move-object/from16 v106, v0

    #@94e
    const/16 v70, 0x0

    #@950
    aput-object v43, v106, v70

    #@952
    .line 543
    new-instance v107, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@954
    invoke-direct/range {v107 .. v107}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@957
    .line 544
    const-class v108, Lorg/apache/xalan/templates/ElemComment;

    #@959
    .line 540
    const/16 v104, 0x0

    #@95b
    .line 544
    const/16 v109, 0x14

    #@95d
    const/16 v110, 0x1

    #@95f
    move-object/from16 v101, p0

    #@961
    move-object/from16 v105, v124

    #@963
    .line 538
    invoke-direct/range {v100 .. v110}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@966
    .line 546
    .local v100, "xslComment":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v101, Lorg/apache/xalan/processor/XSLTElementDef;

    #@968
    const-string/jumbo v103, "http://www.w3.org/1999/XSL/Transform"

    #@96b
    const-string/jumbo v104, "copy"

    #@96e
    .line 548
    const/16 v70, 0x2

    #@970
    move/from16 v0, v70

    #@972
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@974
    move-object/from16 v107, v0

    #@976
    .line 549
    const/16 v70, 0x0

    #@978
    aput-object v43, v107, v70

    #@97a
    .line 550
    const/16 v70, 0x1

    #@97c
    aput-object v33, v107, v70

    #@97e
    .line 551
    new-instance v108, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@980
    invoke-direct/range {v108 .. v108}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@983
    .line 552
    const-class v109, Lorg/apache/xalan/templates/ElemCopy;

    #@985
    .line 547
    const/16 v105, 0x0

    #@987
    .line 552
    const/16 v110, 0x14

    #@989
    const/16 v111, 0x1

    #@98b
    move-object/from16 v102, p0

    #@98d
    move-object/from16 v106, v74

    #@98f
    .line 546
    invoke-direct/range {v101 .. v111}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@992
    .line 553
    .local v101, "xslCopy":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v102, Lorg/apache/xalan/processor/XSLTElementDef;

    #@994
    .line 554
    const-string/jumbo v104, "http://www.w3.org/1999/XSL/Transform"

    #@997
    const-string/jumbo v105, "message"

    #@99a
    .line 557
    const/16 v70, 0x1

    #@99c
    move/from16 v0, v70

    #@99e
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@9a0
    move-object/from16 v108, v0

    #@9a2
    const/16 v70, 0x0

    #@9a4
    aput-object v60, v108, v70

    #@9a6
    .line 558
    new-instance v109, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@9a8
    invoke-direct/range {v109 .. v109}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@9ab
    .line 559
    const-class v110, Lorg/apache/xalan/templates/ElemMessage;

    #@9ad
    .line 555
    const/16 v106, 0x0

    #@9af
    .line 559
    const/16 v111, 0x14

    #@9b1
    const/16 v112, 0x1

    #@9b3
    move-object/from16 v103, p0

    #@9b5
    move-object/from16 v107, v74

    #@9b7
    .line 553
    invoke-direct/range {v102 .. v112}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@9ba
    .line 560
    .local v102, "xslMessage":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v103, Lorg/apache/xalan/processor/XSLTElementDef;

    #@9bc
    .line 561
    const-string/jumbo v105, "http://www.w3.org/1999/XSL/Transform"

    #@9bf
    const-string/jumbo v106, "fallback"

    #@9c2
    .line 564
    const/16 v70, 0x1

    #@9c4
    move/from16 v0, v70

    #@9c6
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@9c8
    move-object/from16 v109, v0

    #@9ca
    const/16 v70, 0x0

    #@9cc
    aput-object v43, v109, v70

    #@9ce
    .line 565
    new-instance v110, Lorg/apache/xalan/processor/ProcessorTemplateElem;

    #@9d0
    invoke-direct/range {v110 .. v110}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    #@9d3
    .line 566
    const-class v111, Lorg/apache/xalan/templates/ElemFallback;

    #@9d5
    .line 562
    const/16 v107, 0x0

    #@9d7
    .line 566
    const/16 v112, 0x14

    #@9d9
    const/16 v113, 0x1

    #@9db
    move-object/from16 v104, p0

    #@9dd
    move-object/from16 v108, v74

    #@9df
    .line 560
    invoke-direct/range {v103 .. v113}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@9e2
    .line 569
    .local v103, "xslFallback":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v104, Lorg/apache/xalan/processor/XSLTElementDef;

    #@9e4
    .line 570
    const-string/jumbo v106, "http://exslt.org/functions"

    #@9e7
    .line 571
    const-string/jumbo v107, "function"

    #@9ea
    .line 574
    const/16 v70, 0x1

    #@9ec
    move/from16 v0, v70

    #@9ee
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@9f0
    move-object/from16 v110, v0

    #@9f2
    const/16 v70, 0x0

    #@9f4
    aput-object v17, v110, v70

    #@9f6
    .line 575
    new-instance v111, Lorg/apache/xalan/processor/ProcessorExsltFunction;

    #@9f8
    invoke-direct/range {v111 .. v111}, Lorg/apache/xalan/processor/ProcessorExsltFunction;-><init>()V

    #@9fb
    .line 576
    const-class v112, Lorg/apache/xalan/templates/ElemExsltFunction;

    #@9fd
    .line 572
    const/16 v108, 0x0

    #@9ff
    move-object/from16 v105, p0

    #@a01
    move-object/from16 v109, v126

    #@a03
    .line 569
    invoke-direct/range {v104 .. v112}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    #@a06
    .line 578
    .local v104, "exsltFunction":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v105, Lorg/apache/xalan/processor/XSLTElementDef;

    #@a08
    .line 579
    const-string/jumbo v107, "http://exslt.org/functions"

    #@a0b
    .line 580
    const-string/jumbo v108, "result"

    #@a0e
    .line 583
    const/16 v70, 0x1

    #@a10
    move/from16 v0, v70

    #@a12
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@a14
    move-object/from16 v111, v0

    #@a16
    const/16 v70, 0x0

    #@a18
    aput-object v36, v111, v70

    #@a1a
    .line 584
    new-instance v112, Lorg/apache/xalan/processor/ProcessorExsltFuncResult;

    #@a1c
    invoke-direct/range {v112 .. v112}, Lorg/apache/xalan/processor/ProcessorExsltFuncResult;-><init>()V

    #@a1f
    .line 585
    const-class v113, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    #@a21
    .line 581
    const/16 v109, 0x0

    #@a23
    move-object/from16 v106, p0

    #@a25
    move-object/from16 v110, v74

    #@a27
    .line 578
    invoke-direct/range {v105 .. v113}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    #@a2a
    .line 588
    .local v105, "exsltResult":Lorg/apache/xalan/processor/XSLTElementDef;
    const/16 v70, 0x0

    #@a2c
    .line 590
    const/16 v127, 0x1

    #@a2e
    .local v127, "i":I
    aput-object v65, v74, v70

    #@a30
    .line 593
    add-int/lit8 v128, v127, 0x1

    #@a32
    .end local v127    # "i":I
    .local v128, "i":I
    aput-object v86, v74, v127

    #@a34
    .line 594
    add-int/lit8 v127, v128, 0x1

    #@a36
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v94, v74, v128

    #@a38
    .line 595
    add-int/lit8 v128, v127, 0x1

    #@a3a
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v87, v74, v127

    #@a3c
    .line 596
    add-int/lit8 v127, v128, 0x1

    #@a3e
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v88, v74, v128

    #@a40
    .line 597
    add-int/lit8 v128, v127, 0x1

    #@a42
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v81, v74, v127

    #@a44
    .line 598
    add-int/lit8 v127, v128, 0x1

    #@a46
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v82, v74, v128

    #@a48
    .line 599
    add-int/lit8 v128, v127, 0x1

    #@a4a
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v83, v74, v127

    #@a4c
    .line 600
    add-int/lit8 v127, v128, 0x1

    #@a4e
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v92, v74, v128

    #@a50
    .line 601
    add-int/lit8 v128, v127, 0x1

    #@a52
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v89, v74, v127

    #@a54
    .line 602
    add-int/lit8 v127, v128, 0x1

    #@a56
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v97, v74, v128

    #@a58
    .line 603
    add-int/lit8 v128, v127, 0x1

    #@a5a
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v101, v74, v127

    #@a5c
    .line 604
    add-int/lit8 v127, v128, 0x1

    #@a5e
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v95, v74, v128

    #@a60
    .line 605
    add-int/lit8 v128, v127, 0x1

    #@a62
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v102, v74, v127

    #@a64
    .line 606
    add-int/lit8 v127, v128, 0x1

    #@a66
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v103, v74, v128

    #@a68
    .line 609
    add-int/lit8 v128, v127, 0x1

    #@a6a
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v98, v74, v127

    #@a6c
    .line 610
    add-int/lit8 v127, v128, 0x1

    #@a6e
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v100, v74, v128

    #@a70
    .line 611
    add-int/lit8 v128, v127, 0x1

    #@a72
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v99, v74, v127

    #@a74
    .line 612
    add-int/lit8 v127, v128, 0x1

    #@a76
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v93, v74, v128

    #@a78
    .line 613
    add-int/lit8 v128, v127, 0x1

    #@a7a
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v69, v74, v127

    #@a7c
    .line 614
    add-int/lit8 v127, v128, 0x1

    #@a7e
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v75, v74, v128

    #@a80
    .line 615
    add-int/lit8 v128, v127, 0x1

    #@a82
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v104, v74, v127

    #@a84
    .line 616
    add-int/lit8 v127, v128, 0x1

    #@a86
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v105, v74, v128

    #@a88
    .line 618
    const/16 v70, 0x0

    #@a8a
    const/16 v71, 0x0

    #@a8c
    move-object/from16 v0, v74

    #@a8e
    move/from16 v1, v70

    #@a90
    move-object/from16 v2, v80

    #@a92
    move/from16 v3, v71

    #@a94
    move/from16 v4, v127

    #@a96
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a99
    .line 619
    const/16 v70, 0x0

    #@a9b
    const/16 v71, 0x0

    #@a9d
    move-object/from16 v0, v74

    #@a9f
    move/from16 v1, v70

    #@aa1
    move-object/from16 v2, v130

    #@aa3
    move/from16 v3, v71

    #@aa5
    move/from16 v4, v127

    #@aa7
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@aaa
    .line 620
    const/16 v70, 0x0

    #@aac
    const/16 v71, 0x0

    #@aae
    move-object/from16 v0, v74

    #@ab0
    move/from16 v1, v70

    #@ab2
    move-object/from16 v2, v126

    #@ab4
    move/from16 v3, v71

    #@ab6
    move/from16 v4, v127

    #@ab8
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@abb
    .line 622
    aput-object v96, v80, v127

    #@abd
    .line 623
    aput-object v84, v130, v127

    #@abf
    .line 624
    aput-object v96, v126, v127

    #@ac1
    .line 626
    const/16 v70, 0x0

    #@ac3
    .line 627
    const/16 v127, 0x1

    #@ac5
    aput-object v65, v124, v70

    #@ac7
    .line 630
    add-int/lit8 v128, v127, 0x1

    #@ac9
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v86, v124, v127

    #@acb
    .line 631
    add-int/lit8 v127, v128, 0x1

    #@acd
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v94, v124, v128

    #@acf
    .line 632
    add-int/lit8 v128, v127, 0x1

    #@ad1
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v87, v124, v127

    #@ad3
    .line 633
    add-int/lit8 v127, v128, 0x1

    #@ad5
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v88, v124, v128

    #@ad7
    .line 634
    add-int/lit8 v128, v127, 0x1

    #@ad9
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v81, v124, v127

    #@adb
    .line 635
    add-int/lit8 v127, v128, 0x1

    #@add
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v82, v124, v128

    #@adf
    .line 636
    add-int/lit8 v128, v127, 0x1

    #@ae1
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v83, v124, v127

    #@ae3
    .line 637
    add-int/lit8 v127, v128, 0x1

    #@ae5
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v92, v124, v128

    #@ae7
    .line 638
    add-int/lit8 v128, v127, 0x1

    #@ae9
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v89, v124, v127

    #@aeb
    .line 639
    add-int/lit8 v127, v128, 0x1

    #@aed
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v97, v124, v128

    #@aef
    .line 640
    add-int/lit8 v128, v127, 0x1

    #@af1
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v101, v124, v127

    #@af3
    .line 641
    add-int/lit8 v127, v128, 0x1

    #@af5
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v95, v124, v128

    #@af7
    .line 642
    add-int/lit8 v128, v127, 0x1

    #@af9
    .end local v127    # "i":I
    .restart local v128    # "i":I
    aput-object v102, v124, v127

    #@afb
    .line 643
    add-int/lit8 v127, v128, 0x1

    #@afd
    .end local v128    # "i":I
    .restart local v127    # "i":I
    aput-object v103, v124, v128

    #@aff
    .line 645
    new-instance v106, Lorg/apache/xalan/processor/XSLTElementDef;

    #@b01
    .line 646
    const-string/jumbo v108, "http://www.w3.org/1999/XSL/Transform"

    #@b04
    const-string/jumbo v109, "import"

    #@b07
    .line 648
    const/16 v70, 0x1

    #@b09
    move/from16 v0, v70

    #@b0b
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@b0d
    move-object/from16 v112, v0

    #@b0f
    const/16 v70, 0x0

    #@b11
    aput-object v5, v112, v70

    #@b13
    .line 649
    new-instance v113, Lorg/apache/xalan/processor/ProcessorImport;

    #@b15
    invoke-direct/range {v113 .. v113}, Lorg/apache/xalan/processor/ProcessorImport;-><init>()V

    #@b18
    .line 647
    const/16 v110, 0x0

    #@b1a
    const/16 v111, 0x0

    #@b1c
    .line 650
    const/16 v114, 0x0

    #@b1e
    .line 651
    const/16 v115, 0x1

    #@b20
    const/16 v116, 0x1

    #@b22
    move-object/from16 v107, p0

    #@b24
    .line 645
    invoke-direct/range {v106 .. v116}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@b27
    .line 652
    .local v106, "importDef":Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v107, Lorg/apache/xalan/processor/XSLTElementDef;

    #@b29
    .line 653
    const-string/jumbo v109, "http://www.w3.org/1999/XSL/Transform"

    #@b2c
    const-string/jumbo v110, "include"

    #@b2f
    .line 655
    const/16 v70, 0x1

    #@b31
    move/from16 v0, v70

    #@b33
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@b35
    move-object/from16 v113, v0

    #@b37
    const/16 v70, 0x0

    #@b39
    aput-object v5, v113, v70

    #@b3b
    .line 656
    new-instance v114, Lorg/apache/xalan/processor/ProcessorInclude;

    #@b3d
    invoke-direct/range {v114 .. v114}, Lorg/apache/xalan/processor/ProcessorInclude;-><init>()V

    #@b40
    .line 654
    const/16 v111, 0x0

    #@b42
    const/16 v112, 0x0

    #@b44
    .line 657
    const/16 v115, 0x0

    #@b46
    .line 658
    const/16 v116, 0x14

    #@b48
    const/16 v117, 0x1

    #@b4a
    move-object/from16 v108, p0

    #@b4c
    .line 652
    invoke-direct/range {v107 .. v117}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@b4f
    .line 660
    .local v107, "includeDef":Lorg/apache/xalan/processor/XSLTElementDef;
    const/16 v70, 0x2

    #@b51
    move/from16 v0, v70

    #@b53
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@b55
    move-object/from16 v129, v0

    #@b57
    .line 661
    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@b59
    const-string/jumbo v110, "lang"

    #@b5c
    const/16 v109, 0x0

    #@b5e
    const/16 v111, 0xd

    #@b60
    .line 662
    const/16 v112, 0x1

    #@b62
    const/16 v113, 0x0

    #@b64
    const/16 v114, 0x2

    #@b66
    .line 661
    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@b69
    const/16 v70, 0x0

    #@b6b
    aput-object v108, v129, v70

    #@b6d
    .line 663
    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@b6f
    const-string/jumbo v110, "src"

    #@b72
    const/16 v109, 0x0

    #@b74
    const/16 v111, 0x2

    #@b76
    .line 664
    const/16 v112, 0x0

    #@b78
    const/16 v113, 0x0

    #@b7a
    const/16 v114, 0x2

    #@b7c
    .line 663
    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@b7f
    const/16 v70, 0x1

    #@b81
    aput-object v108, v129, v70

    #@b83
    .line 666
    .local v129, "scriptAttrs":[Lorg/apache/xalan/processor/XSLTAttributeDef;
    const/16 v70, 0x3

    #@b85
    move/from16 v0, v70

    #@b87
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@b89
    move-object/from16 v125, v0

    #@b8b
    .line 667
    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@b8d
    const-string/jumbo v110, "prefix"

    #@b90
    const/16 v109, 0x0

    #@b92
    const/16 v111, 0xd

    #@b94
    .line 668
    const/16 v112, 0x1

    #@b96
    const/16 v113, 0x0

    #@b98
    const/16 v114, 0x2

    #@b9a
    .line 667
    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@b9d
    const/16 v70, 0x0

    #@b9f
    aput-object v108, v125, v70

    #@ba1
    .line 669
    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@ba3
    const-string/jumbo v110, "elements"

    #@ba6
    const/16 v109, 0x0

    #@ba8
    const/16 v111, 0xe

    #@baa
    .line 670
    const/16 v112, 0x0

    #@bac
    const/16 v113, 0x0

    #@bae
    const/16 v114, 0x2

    #@bb0
    .line 669
    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@bb3
    const/16 v70, 0x1

    #@bb5
    aput-object v108, v125, v70

    #@bb7
    .line 671
    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@bb9
    const-string/jumbo v110, "functions"

    #@bbc
    const/16 v109, 0x0

    #@bbe
    const/16 v111, 0xe

    #@bc0
    .line 672
    const/16 v112, 0x0

    #@bc2
    const/16 v113, 0x0

    #@bc4
    const/16 v114, 0x2

    #@bc6
    .line 671
    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@bc9
    const/16 v70, 0x2

    #@bcb
    aput-object v108, v125, v70

    #@bcd
    .line 675
    .local v125, "componentAttrs":[Lorg/apache/xalan/processor/XSLTAttributeDef;
    const/16 v70, 0x11

    #@bcf
    move/from16 v0, v70

    #@bd1
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@bd3
    move-object/from16 v131, v0

    #@bd5
    const/16 v70, 0x0

    #@bd7
    aput-object v107, v131, v70

    #@bd9
    .line 676
    const/16 v70, 0x1

    #@bdb
    aput-object v106, v131, v70

    #@bdd
    .line 678
    const/16 v70, 0x2

    #@bdf
    aput-object v66, v131, v70

    #@be1
    .line 679
    const/16 v70, 0x3

    #@be3
    aput-object v75, v131, v70

    #@be5
    .line 680
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@be7
    .line 682
    const-string/jumbo v110, "http://www.w3.org/1999/XSL/Transform"

    #@bea
    .line 683
    const-string/jumbo v111, "strip-space"

    #@bed
    .line 686
    const/16 v70, 0x1

    #@bef
    move/from16 v0, v70

    #@bf1
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@bf3
    move-object/from16 v114, v0

    #@bf5
    .line 687
    const/16 v70, 0x0

    #@bf7
    aput-object v6, v114, v70

    #@bf9
    .line 688
    new-instance v115, Lorg/apache/xalan/processor/ProcessorStripSpace;

    #@bfb
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorStripSpace;-><init>()V

    #@bfe
    .line 684
    const/16 v112, 0x0

    #@c00
    .line 685
    const/16 v113, 0x0

    #@c02
    .line 689
    const/16 v116, 0x0

    #@c04
    const/16 v117, 0x14

    #@c06
    const/16 v118, 0x1

    #@c08
    move-object/from16 v109, p0

    #@c0a
    .line 680
    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@c0d
    const/16 v70, 0x4

    #@c0f
    aput-object v108, v131, v70

    #@c11
    .line 690
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@c13
    .line 692
    const-string/jumbo v110, "http://www.w3.org/1999/XSL/Transform"

    #@c16
    .line 693
    const-string/jumbo v111, "preserve-space"

    #@c19
    .line 696
    const/16 v70, 0x1

    #@c1b
    move/from16 v0, v70

    #@c1d
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@c1f
    move-object/from16 v114, v0

    #@c21
    .line 697
    const/16 v70, 0x0

    #@c23
    aput-object v6, v114, v70

    #@c25
    .line 698
    new-instance v115, Lorg/apache/xalan/processor/ProcessorPreserveSpace;

    #@c27
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorPreserveSpace;-><init>()V

    #@c2a
    .line 694
    const/16 v112, 0x0

    #@c2c
    .line 695
    const/16 v113, 0x0

    #@c2e
    .line 699
    const/16 v116, 0x0

    #@c30
    const/16 v117, 0x14

    #@c32
    const/16 v118, 0x1

    #@c34
    move-object/from16 v109, p0

    #@c36
    .line 690
    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@c39
    const/16 v70, 0x5

    #@c3b
    aput-object v108, v131, v70

    #@c3d
    .line 700
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@c3f
    .line 702
    const-string/jumbo v110, "http://www.w3.org/1999/XSL/Transform"

    #@c42
    .line 703
    const-string/jumbo v111, "output"

    #@c45
    .line 706
    const/16 v70, 0xb

    #@c47
    move/from16 v0, v70

    #@c49
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@c4b
    move-object/from16 v114, v0

    #@c4d
    .line 707
    const/16 v70, 0x0

    #@c4f
    aput-object v7, v114, v70

    #@c51
    .line 708
    const/16 v70, 0x1

    #@c53
    aput-object v8, v114, v70

    #@c55
    .line 709
    const/16 v70, 0x2

    #@c57
    aput-object v9, v114, v70

    #@c59
    .line 710
    const/16 v70, 0x3

    #@c5b
    aput-object v10, v114, v70

    #@c5d
    .line 711
    const/16 v70, 0x4

    #@c5f
    aput-object v11, v114, v70

    #@c61
    .line 712
    const/16 v70, 0x5

    #@c63
    aput-object v12, v114, v70

    #@c65
    .line 713
    const/16 v70, 0x6

    #@c67
    aput-object v13, v114, v70

    #@c69
    .line 714
    const/16 v70, 0x7

    #@c6b
    aput-object v14, v114, v70

    #@c6d
    .line 715
    const/16 v70, 0x8

    #@c6f
    aput-object v15, v114, v70

    #@c71
    .line 716
    const/16 v70, 0x9

    #@c73
    aput-object v16, v114, v70

    #@c75
    .line 717
    sget-object v70, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@c77
    const/16 v71, 0xa

    #@c79
    aput-object v70, v114, v71

    #@c7b
    .line 718
    new-instance v115, Lorg/apache/xalan/processor/ProcessorOutputElem;

    #@c7d
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorOutputElem;-><init>()V

    #@c80
    .line 704
    const/16 v112, 0x0

    #@c82
    .line 705
    const/16 v113, 0x0

    #@c84
    .line 718
    const/16 v116, 0x0

    #@c86
    const/16 v117, 0x14

    #@c88
    const/16 v118, 0x1

    #@c8a
    move-object/from16 v109, p0

    #@c8c
    .line 700
    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@c8f
    const/16 v70, 0x6

    #@c91
    aput-object v108, v131, v70

    #@c93
    .line 719
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@c95
    .line 721
    const-string/jumbo v110, "http://www.w3.org/1999/XSL/Transform"

    #@c98
    .line 722
    const-string/jumbo v111, "key"

    #@c9b
    .line 725
    const/16 v70, 0x3

    #@c9d
    move/from16 v0, v70

    #@c9f
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@ca1
    move-object/from16 v114, v0

    #@ca3
    const/16 v70, 0x0

    #@ca5
    aput-object v17, v114, v70

    #@ca7
    .line 726
    const/16 v70, 0x1

    #@ca9
    aput-object v39, v114, v70

    #@cab
    .line 727
    const/16 v70, 0x2

    #@cad
    aput-object v21, v114, v70

    #@caf
    .line 728
    new-instance v115, Lorg/apache/xalan/processor/ProcessorKey;

    #@cb1
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorKey;-><init>()V

    #@cb4
    .line 723
    const/16 v112, 0x0

    #@cb6
    .line 724
    const/16 v113, 0x0

    #@cb8
    .line 728
    const/16 v116, 0x0

    #@cba
    const/16 v117, 0x14

    #@cbc
    const/16 v118, 0x1

    #@cbe
    move-object/from16 v109, p0

    #@cc0
    .line 719
    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@cc3
    const/16 v70, 0x7

    #@cc5
    aput-object v108, v131, v70

    #@cc7
    .line 729
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@cc9
    .line 731
    const-string/jumbo v110, "http://www.w3.org/1999/XSL/Transform"

    #@ccc
    .line 732
    const-string/jumbo v111, "decimal-format"

    #@ccf
    .line 735
    const/16 v70, 0xb

    #@cd1
    move/from16 v0, v70

    #@cd3
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@cd5
    move-object/from16 v114, v0

    #@cd7
    .line 736
    const/16 v70, 0x0

    #@cd9
    aput-object v20, v114, v70

    #@cdb
    .line 737
    const/16 v70, 0x1

    #@cdd
    aput-object v23, v114, v70

    #@cdf
    .line 738
    const/16 v70, 0x2

    #@ce1
    aput-object v32, v114, v70

    #@ce3
    .line 739
    const/16 v70, 0x3

    #@ce5
    aput-object v24, v114, v70

    #@ce7
    .line 740
    const/16 v70, 0x4

    #@ce9
    aput-object v25, v114, v70

    #@ceb
    .line 741
    const/16 v70, 0x5

    #@ced
    aput-object v26, v114, v70

    #@cef
    .line 742
    const/16 v70, 0x6

    #@cf1
    aput-object v27, v114, v70

    #@cf3
    .line 743
    const/16 v70, 0x7

    #@cf5
    aput-object v28, v114, v70

    #@cf7
    .line 744
    const/16 v70, 0x8

    #@cf9
    aput-object v29, v114, v70

    #@cfb
    .line 745
    const/16 v70, 0x9

    #@cfd
    aput-object v30, v114, v70

    #@cff
    .line 746
    const/16 v70, 0xa

    #@d01
    aput-object v31, v114, v70

    #@d03
    .line 747
    new-instance v115, Lorg/apache/xalan/processor/ProcessorDecimalFormat;

    #@d05
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorDecimalFormat;-><init>()V

    #@d08
    .line 733
    const/16 v112, 0x0

    #@d0a
    .line 734
    const/16 v113, 0x0

    #@d0c
    .line 748
    const/16 v116, 0x0

    #@d0e
    const/16 v117, 0x14

    #@d10
    const/16 v118, 0x1

    #@d12
    move-object/from16 v109, p0

    #@d14
    .line 729
    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@d17
    const/16 v70, 0x8

    #@d19
    aput-object v108, v131, v70

    #@d1b
    .line 749
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@d1d
    .line 751
    const-string/jumbo v110, "http://www.w3.org/1999/XSL/Transform"

    #@d20
    .line 752
    const-string/jumbo v111, "attribute-set"

    #@d23
    .line 754
    const/16 v70, 0x1

    #@d25
    move/from16 v0, v70

    #@d27
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@d29
    move-object/from16 v113, v0

    #@d2b
    .line 755
    const/16 v70, 0x0

    #@d2d
    aput-object v93, v113, v70

    #@d2f
    .line 756
    const/16 v70, 0x2

    #@d31
    move/from16 v0, v70

    #@d33
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@d35
    move-object/from16 v114, v0

    #@d37
    .line 757
    const/16 v70, 0x0

    #@d39
    aput-object v17, v114, v70

    #@d3b
    .line 758
    const/16 v70, 0x1

    #@d3d
    aput-object v33, v114, v70

    #@d3f
    .line 759
    new-instance v115, Lorg/apache/xalan/processor/ProcessorAttributeSet;

    #@d41
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorAttributeSet;-><init>()V

    #@d44
    .line 753
    const/16 v112, 0x0

    #@d46
    .line 760
    const/16 v116, 0x0

    #@d48
    const/16 v117, 0x14

    #@d4a
    const/16 v118, 0x1

    #@d4c
    move-object/from16 v109, p0

    #@d4e
    .line 749
    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@d51
    const/16 v70, 0x9

    #@d53
    aput-object v108, v131, v70

    #@d55
    .line 761
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@d57
    .line 763
    const-string/jumbo v110, "http://www.w3.org/1999/XSL/Transform"

    #@d5a
    .line 764
    const-string/jumbo v111, "variable"

    #@d5d
    .line 767
    const/16 v70, 0x2

    #@d5f
    move/from16 v0, v70

    #@d61
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@d63
    move-object/from16 v114, v0

    #@d65
    .line 768
    const/16 v70, 0x0

    #@d67
    aput-object v17, v114, v70

    #@d69
    .line 769
    const/16 v70, 0x1

    #@d6b
    aput-object v36, v114, v70

    #@d6d
    .line 770
    new-instance v115, Lorg/apache/xalan/processor/ProcessorGlobalVariableDecl;

    #@d6f
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorGlobalVariableDecl;-><init>()V

    #@d72
    .line 771
    const-class v116, Lorg/apache/xalan/templates/ElemVariable;

    #@d74
    .line 765
    const/16 v112, 0x0

    #@d76
    .line 771
    const/16 v117, 0x14

    #@d78
    const/16 v118, 0x1

    #@d7a
    move-object/from16 v109, p0

    #@d7c
    move-object/from16 v113, v74

    #@d7e
    .line 761
    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@d81
    const/16 v70, 0xa

    #@d83
    aput-object v108, v131, v70

    #@d85
    .line 772
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@d87
    .line 774
    const-string/jumbo v110, "http://www.w3.org/1999/XSL/Transform"

    #@d8a
    .line 775
    const-string/jumbo v111, "param"

    #@d8d
    .line 778
    const/16 v70, 0x2

    #@d8f
    move/from16 v0, v70

    #@d91
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@d93
    move-object/from16 v114, v0

    #@d95
    .line 779
    const/16 v70, 0x0

    #@d97
    aput-object v17, v114, v70

    #@d99
    .line 780
    const/16 v70, 0x1

    #@d9b
    aput-object v36, v114, v70

    #@d9d
    .line 781
    new-instance v115, Lorg/apache/xalan/processor/ProcessorGlobalParamDecl;

    #@d9f
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorGlobalParamDecl;-><init>()V

    #@da2
    .line 782
    const-class v116, Lorg/apache/xalan/templates/ElemParam;

    #@da4
    .line 776
    const/16 v112, 0x0

    #@da6
    .line 782
    const/16 v117, 0x14

    #@da8
    const/16 v118, 0x1

    #@daa
    move-object/from16 v109, p0

    #@dac
    move-object/from16 v113, v74

    #@dae
    .line 772
    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@db1
    const/16 v70, 0xb

    #@db3
    aput-object v108, v131, v70

    #@db5
    .line 783
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@db7
    .line 785
    const-string/jumbo v110, "http://www.w3.org/1999/XSL/Transform"

    #@dba
    .line 786
    const-string/jumbo v111, "template"

    #@dbd
    .line 789
    const/16 v70, 0x5

    #@dbf
    move/from16 v0, v70

    #@dc1
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@dc3
    move-object/from16 v114, v0

    #@dc5
    .line 790
    const/16 v70, 0x0

    #@dc7
    aput-object v40, v114, v70

    #@dc9
    .line 791
    const/16 v70, 0x1

    #@dcb
    aput-object v20, v114, v70

    #@dcd
    .line 792
    const/16 v70, 0x2

    #@dcf
    aput-object v41, v114, v70

    #@dd1
    .line 793
    const/16 v70, 0x3

    #@dd3
    aput-object v42, v114, v70

    #@dd5
    .line 794
    const/16 v70, 0x4

    #@dd7
    aput-object v43, v114, v70

    #@dd9
    .line 795
    new-instance v115, Lorg/apache/xalan/processor/ProcessorTemplate;

    #@ddb
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorTemplate;-><init>()V

    #@dde
    const-class v116, Lorg/apache/xalan/templates/ElemTemplate;

    #@de0
    .line 787
    const/16 v112, 0x0

    #@de2
    .line 795
    const/16 v117, 0x1

    #@de4
    const/16 v118, 0x14

    #@de6
    const/16 v119, 0x1

    #@de8
    move-object/from16 v109, p0

    #@dea
    move-object/from16 v113, v80

    #@dec
    .line 783
    invoke-direct/range {v108 .. v119}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V

    #@def
    const/16 v70, 0xc

    #@df1
    aput-object v108, v131, v70

    #@df3
    .line 796
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@df5
    .line 798
    const-string/jumbo v110, "http://www.w3.org/1999/XSL/Transform"

    #@df8
    .line 799
    const-string/jumbo v111, "namespace-alias"

    #@dfb
    .line 802
    const/16 v70, 0x2

    #@dfd
    move/from16 v0, v70

    #@dff
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@e01
    move-object/from16 v114, v0

    #@e03
    .line 803
    const/16 v70, 0x0

    #@e05
    aput-object v45, v114, v70

    #@e07
    .line 804
    const/16 v70, 0x1

    #@e09
    aput-object v46, v114, v70

    #@e0b
    .line 805
    new-instance v115, Lorg/apache/xalan/processor/ProcessorNamespaceAlias;

    #@e0d
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorNamespaceAlias;-><init>()V

    #@e10
    .line 800
    const/16 v112, 0x0

    #@e12
    .line 801
    const/16 v113, 0x0

    #@e14
    .line 805
    const/16 v116, 0x0

    #@e16
    const/16 v117, 0x14

    #@e18
    const/16 v118, 0x1

    #@e1a
    move-object/from16 v109, p0

    #@e1c
    .line 796
    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@e1f
    const/16 v70, 0xd

    #@e21
    aput-object v108, v131, v70

    #@e23
    .line 806
    new-instance v70, Lorg/apache/xalan/processor/XSLTElementDef;

    #@e25
    .line 808
    const-string/jumbo v71, "http://xml.apache.org/xalan"

    #@e28
    .line 809
    const-string/jumbo v72, "component"

    #@e2b
    .line 811
    const/16 v73, 0x1

    #@e2d
    move/from16 v0, v73

    #@e2f
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@e31
    move-object/from16 v73, v0

    #@e33
    .line 812
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@e35
    .line 814
    const-string/jumbo v110, "http://xml.apache.org/xalan"

    #@e38
    .line 815
    const-string/jumbo v111, "script"

    #@e3b
    .line 817
    const/16 v76, 0x1

    #@e3d
    move/from16 v0, v76

    #@e3f
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@e41
    move-object/from16 v113, v0

    #@e43
    .line 818
    const/16 v76, 0x0

    #@e45
    aput-object v65, v113, v76

    #@e47
    .line 820
    new-instance v115, Lorg/apache/xalan/processor/ProcessorLRE;

    #@e49
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    #@e4c
    .line 821
    const-class v116, Lorg/apache/xalan/templates/ElemExtensionScript;

    #@e4e
    .line 816
    const/16 v112, 0x0

    #@e50
    .line 821
    const/16 v117, 0x14

    #@e52
    const/16 v118, 0x1

    #@e54
    move-object/from16 v109, p0

    #@e56
    move-object/from16 v114, v129

    #@e58
    .line 812
    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@e5b
    const/16 v76, 0x0

    #@e5d
    aput-object v108, v73, v76

    #@e5f
    .line 823
    new-instance v115, Lorg/apache/xalan/processor/ProcessorLRE;

    #@e61
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    #@e64
    const-class v116, Lorg/apache/xalan/templates/ElemExtensionDecl;

    #@e66
    .line 810
    const/16 v112, 0x0

    #@e68
    move-object/from16 v108, v70

    #@e6a
    move-object/from16 v109, p0

    #@e6c
    move-object/from16 v110, v71

    #@e6e
    move-object/from16 v111, v72

    #@e70
    move-object/from16 v113, v73

    #@e72
    move-object/from16 v114, v125

    #@e74
    .line 806
    invoke-direct/range {v108 .. v116}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    #@e77
    const/16 v71, 0xe

    #@e79
    aput-object v70, v131, v71

    #@e7b
    .line 824
    new-instance v70, Lorg/apache/xalan/processor/XSLTElementDef;

    #@e7d
    .line 826
    const-string/jumbo v71, "http://xml.apache.org/xslt"

    #@e80
    .line 827
    const-string/jumbo v72, "component"

    #@e83
    .line 829
    const/16 v73, 0x1

    #@e85
    move/from16 v0, v73

    #@e87
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@e89
    move-object/from16 v73, v0

    #@e8b
    .line 830
    new-instance v108, Lorg/apache/xalan/processor/XSLTElementDef;

    #@e8d
    .line 832
    const-string/jumbo v110, "http://xml.apache.org/xslt"

    #@e90
    .line 833
    const-string/jumbo v111, "script"

    #@e93
    .line 835
    const/16 v76, 0x1

    #@e95
    move/from16 v0, v76

    #@e97
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@e99
    move-object/from16 v113, v0

    #@e9b
    .line 836
    const/16 v76, 0x0

    #@e9d
    aput-object v65, v113, v76

    #@e9f
    .line 838
    new-instance v115, Lorg/apache/xalan/processor/ProcessorLRE;

    #@ea1
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    #@ea4
    .line 839
    const-class v116, Lorg/apache/xalan/templates/ElemExtensionScript;

    #@ea6
    .line 834
    const/16 v112, 0x0

    #@ea8
    .line 839
    const/16 v117, 0x14

    #@eaa
    const/16 v118, 0x1

    #@eac
    move-object/from16 v109, p0

    #@eae
    move-object/from16 v114, v129

    #@eb0
    .line 830
    invoke-direct/range {v108 .. v118}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@eb3
    const/16 v76, 0x0

    #@eb5
    aput-object v108, v73, v76

    #@eb7
    .line 841
    new-instance v115, Lorg/apache/xalan/processor/ProcessorLRE;

    #@eb9
    invoke-direct/range {v115 .. v115}, Lorg/apache/xalan/processor/ProcessorLRE;-><init>()V

    #@ebc
    const-class v116, Lorg/apache/xalan/templates/ElemExtensionDecl;

    #@ebe
    .line 828
    const/16 v112, 0x0

    #@ec0
    move-object/from16 v108, v70

    #@ec2
    move-object/from16 v109, p0

    #@ec4
    move-object/from16 v110, v71

    #@ec6
    move-object/from16 v111, v72

    #@ec8
    move-object/from16 v113, v73

    #@eca
    move-object/from16 v114, v125

    #@ecc
    .line 824
    invoke-direct/range {v108 .. v116}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    #@ecf
    const/16 v71, 0xf

    #@ed1
    aput-object v70, v131, v71

    #@ed3
    .line 842
    const/16 v70, 0x10

    #@ed5
    aput-object v104, v131, v70

    #@ed7
    .line 845
    .local v131, "topLevelElements":[Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v108, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@ed9
    const-string/jumbo v110, "exclude-result-prefixes"

    #@edc
    const/16 v109, 0x0

    #@ede
    .line 846
    const/16 v111, 0x14

    #@ee0
    const/16 v112, 0x0

    #@ee2
    const/16 v113, 0x0

    #@ee4
    const/16 v114, 0x2

    #@ee6
    .line 845
    invoke-direct/range {v108 .. v114}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@ee9
    .line 848
    .local v108, "excludeResultPrefixesAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v109, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@eeb
    const-string/jumbo v111, "extension-element-prefixes"

    #@eee
    const/16 v110, 0x0

    #@ef0
    .line 849
    const/16 v112, 0xf

    #@ef2
    const/16 v113, 0x0

    #@ef4
    const/16 v114, 0x0

    #@ef6
    const/16 v115, 0x2

    #@ef8
    .line 848
    invoke-direct/range {v109 .. v115}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@efb
    .line 850
    .local v109, "extensionElementPrefixesAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v110, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@efd
    const-string/jumbo v112, "id"

    #@f00
    const/16 v111, 0x0

    #@f02
    .line 851
    const/16 v113, 0x1

    #@f04
    const/16 v114, 0x0

    #@f06
    const/16 v115, 0x0

    #@f08
    const/16 v116, 0x2

    #@f0a
    .line 850
    invoke-direct/range {v110 .. v116}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@f0d
    .line 852
    .local v110, "idAttr":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v111, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@f0f
    .line 853
    const-string/jumbo v113, "version"

    #@f12
    .line 852
    const/16 v112, 0x0

    #@f14
    .line 854
    const/16 v114, 0xd

    #@f16
    .line 855
    const/16 v115, 0x1

    #@f18
    const/16 v116, 0x0

    #@f1a
    const/16 v117, 0x2

    #@f1c
    .line 852
    invoke-direct/range {v111 .. v117}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@f1f
    .line 856
    .local v111, "versionAttrRequired":Lorg/apache/xalan/processor/XSLTAttributeDef;
    new-instance v112, Lorg/apache/xalan/processor/XSLTElementDef;

    #@f21
    .line 857
    const-string/jumbo v114, "http://www.w3.org/1999/XSL/Transform"

    #@f24
    .line 858
    const-string/jumbo v115, "stylesheet"

    #@f27
    const-string/jumbo v116, "transform"

    #@f2a
    .line 860
    const/16 v70, 0x5

    #@f2c
    move/from16 v0, v70

    #@f2e
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@f30
    move-object/from16 v118, v0

    #@f32
    .line 861
    const/16 v70, 0x0

    #@f34
    aput-object v109, v118, v70

    #@f36
    .line 862
    const/16 v70, 0x1

    #@f38
    aput-object v108, v118, v70

    #@f3a
    .line 863
    const/16 v70, 0x2

    #@f3c
    aput-object v110, v118, v70

    #@f3e
    .line 864
    const/16 v70, 0x3

    #@f40
    aput-object v111, v118, v70

    #@f42
    .line 865
    const/16 v70, 0x4

    #@f44
    aput-object v43, v118, v70

    #@f46
    new-instance v119, Lorg/apache/xalan/processor/ProcessorStylesheetElement;

    #@f48
    invoke-direct/range {v119 .. v119}, Lorg/apache/xalan/processor/ProcessorStylesheetElement;-><init>()V

    #@f4b
    .line 866
    const/16 v120, 0x0

    #@f4d
    .line 867
    const/16 v121, 0x1

    #@f4f
    const/16 v122, -0x1

    #@f51
    const/16 v123, 0x0

    #@f53
    move-object/from16 v113, p0

    #@f55
    move-object/from16 v117, v131

    #@f57
    .line 856
    invoke-direct/range {v112 .. v123}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V

    #@f5a
    .line 869
    .local v112, "stylesheetElemDef":Lorg/apache/xalan/processor/XSLTElementDef;
    const/16 v70, 0x3

    #@f5c
    move/from16 v0, v70

    #@f5e
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@f60
    move-object/from16 v70, v0

    #@f62
    const/16 v71, 0x0

    #@f64
    aput-object v112, v70, v71

    #@f66
    .line 870
    const/16 v71, 0x1

    #@f68
    aput-object v69, v70, v71

    #@f6a
    .line 871
    const/16 v71, 0x2

    #@f6c
    aput-object v75, v70, v71

    #@f6e
    .line 869
    move-object/from16 v0, v106

    #@f70
    move-object/from16 v1, v70

    #@f72
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setElements([Lorg/apache/xalan/processor/XSLTElementDef;)V

    #@f75
    .line 872
    const/16 v70, 0x3

    #@f77
    move/from16 v0, v70

    #@f79
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@f7b
    move-object/from16 v70, v0

    #@f7d
    const/16 v71, 0x0

    #@f7f
    aput-object v112, v70, v71

    #@f81
    .line 873
    const/16 v71, 0x1

    #@f83
    aput-object v69, v70, v71

    #@f85
    .line 874
    const/16 v71, 0x2

    #@f87
    aput-object v75, v70, v71

    #@f89
    .line 872
    move-object/from16 v0, v107

    #@f8b
    move-object/from16 v1, v70

    #@f8d
    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setElements([Lorg/apache/xalan/processor/XSLTElementDef;)V

    #@f90
    .line 875
    const/16 v70, 0x4

    #@f92
    move/from16 v0, v70

    #@f94
    new-array v0, v0, [Lorg/apache/xalan/processor/XSLTElementDef;

    #@f96
    move-object/from16 v117, v0

    #@f98
    const/16 v70, 0x0

    #@f9a
    aput-object v112, v117, v70

    #@f9c
    .line 876
    const/16 v70, 0x1

    #@f9e
    aput-object v66, v117, v70

    #@fa0
    .line 877
    const/16 v70, 0x2

    #@fa2
    aput-object v69, v117, v70

    #@fa4
    .line 878
    const/16 v70, 0x3

    #@fa6
    aput-object v75, v117, v70

    #@fa8
    .line 879
    new-instance v119, Lorg/apache/xalan/processor/ProcessorStylesheetDoc;

    #@faa
    invoke-direct/range {v119 .. v119}, Lorg/apache/xalan/processor/ProcessorStylesheetDoc;-><init>()V

    #@fad
    .line 875
    const/16 v114, 0x0

    #@faf
    const/16 v115, 0x0

    #@fb1
    const/16 v116, 0x0

    #@fb3
    .line 878
    const/16 v118, 0x0

    #@fb5
    .line 880
    const/16 v120, 0x0

    #@fb7
    move-object/from16 v113, p0

    #@fb9
    .line 875
    invoke-virtual/range {v113 .. v120}, Lorg/apache/xalan/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    #@fbc
    .line 79
    return-void
.end method

.method public elementAvailable(Lorg/apache/xml/utils/QName;)Z
    .locals 1
    .param p1, "elemName"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 919
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getElemsAvailable()Ljava/util/HashMap;
    .locals 1

    #@0
    .prologue
    .line 899
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTSchema;->m_availElems:Ljava/util/HashMap;

    #@2
    return-object v0
.end method
