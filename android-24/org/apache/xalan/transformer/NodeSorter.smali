.class public Lorg/apache/xalan/transformer/NodeSorter;
.super Ljava/lang/Object;
.source "NodeSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    }
.end annotation


# instance fields
.field m_execContext:Lorg/apache/xpath/XPathContext;

.field m_keys:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/XPathContext;)V
    .locals 0
    .param p1, "p"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@5
    .line 59
    return-void
.end method


# virtual methods
.method compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I
    .locals 25
    .param p1, "n1"    # Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    .param p2, "n2"    # Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    .param p3, "kIndex"    # I
    .param p4, "support"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    const/16 v18, 0x0

    #@2
    .line 132
    .local v18, "result":I
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    #@6
    move-object/from16 v21, v0

    #@8
    move-object/from16 v0, v21

    #@a
    move/from16 v1, p3

    #@c
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v9

    #@10
    check-cast v9, Lorg/apache/xalan/transformer/NodeSortKey;

    #@12
    .line 134
    .local v9, "k":Lorg/apache/xalan/transformer/NodeSortKey;
    iget-boolean v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    #@14
    move/from16 v21, v0

    #@16
    if-eqz v21, :cond_d

    #@18
    .line 138
    if-nez p3, :cond_3

    #@1a
    .line 140
    move-object/from16 v0, p1

    #@1c
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    #@1e
    move-object/from16 v21, v0

    #@20
    check-cast v21, Ljava/lang/Double;

    #@22
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    #@25
    move-result-wide v10

    #@26
    .line 141
    .local v10, "n1Num":D
    move-object/from16 v0, p2

    #@28
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    #@2a
    move-object/from16 v21, v0

    #@2c
    check-cast v21, Ljava/lang/Double;

    #@2e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    #@31
    move-result-wide v14

    #@32
    .line 172
    .local v14, "n2Num":D
    :goto_0
    cmpl-double v21, v10, v14

    #@34
    if-nez v21, :cond_5

    #@36
    add-int/lit8 v21, p3, 0x1

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    #@3c
    move-object/from16 v22, v0

    #@3e
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    #@41
    move-result v22

    #@42
    move/from16 v0, v21

    #@44
    move/from16 v1, v22

    #@46
    if-ge v0, v1, :cond_5

    #@48
    .line 174
    add-int/lit8 v21, p3, 0x1

    #@4a
    move-object/from16 v0, p0

    #@4c
    move-object/from16 v1, p1

    #@4e
    move-object/from16 v2, p2

    #@50
    move/from16 v3, v21

    #@52
    move-object/from16 v4, p4

    #@54
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    #@57
    move-result v18

    #@58
    .line 256
    .end local v10    # "n1Num":D
    .end local v14    # "n2Num":D
    :cond_0
    :goto_1
    if-nez v18, :cond_1

    #@5a
    .line 258
    add-int/lit8 v21, p3, 0x1

    #@5c
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    #@60
    move-object/from16 v22, v0

    #@62
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    #@65
    move-result v22

    #@66
    move/from16 v0, v21

    #@68
    move/from16 v1, v22

    #@6a
    if-ge v0, v1, :cond_1

    #@6c
    .line 260
    add-int/lit8 v21, p3, 0x1

    #@6e
    move-object/from16 v0, p0

    #@70
    move-object/from16 v1, p1

    #@72
    move-object/from16 v2, p2

    #@74
    move/from16 v3, v21

    #@76
    move-object/from16 v4, p4

    #@78
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    #@7b
    move-result v18

    #@7c
    .line 264
    :cond_1
    if-nez v18, :cond_2

    #@7e
    .line 271
    move-object/from16 v0, p1

    #@80
    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    #@82
    move/from16 v21, v0

    #@84
    move-object/from16 v0, p4

    #@86
    move/from16 v1, v21

    #@88
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@8b
    move-result-object v8

    #@8c
    .line 272
    .local v8, "dtm":Lorg/apache/xml/dtm/DTM;
    move-object/from16 v0, p1

    #@8e
    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    #@90
    move/from16 v21, v0

    #@92
    move-object/from16 v0, p2

    #@94
    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    #@96
    move/from16 v22, v0

    #@98
    move/from16 v0, v21

    #@9a
    move/from16 v1, v22

    #@9c
    invoke-interface {v8, v0, v1}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    #@9f
    move-result v21

    #@a0
    if-eqz v21, :cond_12

    #@a2
    const/16 v18, -0x1

    #@a4
    .line 277
    .end local v8    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_2
    :goto_2
    return v18

    #@a5
    .line 143
    :cond_3
    const/16 v21, 0x1

    #@a7
    move/from16 v0, p3

    #@a9
    move/from16 v1, v21

    #@ab
    if-ne v0, v1, :cond_4

    #@ad
    .line 145
    move-object/from16 v0, p1

    #@af
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    #@b1
    move-object/from16 v21, v0

    #@b3
    check-cast v21, Ljava/lang/Double;

    #@b5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    #@b8
    move-result-wide v10

    #@b9
    .line 146
    .restart local v10    # "n1Num":D
    move-object/from16 v0, p2

    #@bb
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    #@bd
    move-object/from16 v21, v0

    #@bf
    check-cast v21, Ljava/lang/Double;

    #@c1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    #@c4
    move-result-wide v14

    #@c5
    .restart local v14    # "n2Num":D
    goto/16 :goto_0

    #@c7
    .line 159
    .end local v10    # "n1Num":D
    .end local v14    # "n2Num":D
    :cond_4
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    #@c9
    move-object/from16 v21, v0

    #@cb
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@cf
    move-object/from16 v22, v0

    #@d1
    move-object/from16 v0, p1

    #@d3
    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    #@d5
    move/from16 v23, v0

    #@d7
    .line 160
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@d9
    move-object/from16 v24, v0

    #@db
    .line 159
    invoke-virtual/range {v21 .. v24}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@de
    move-result-object v16

    #@df
    .line 161
    .local v16, "r1":Lorg/apache/xpath/objects/XObject;
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    #@e1
    move-object/from16 v21, v0

    #@e3
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@e7
    move-object/from16 v22, v0

    #@e9
    move-object/from16 v0, p2

    #@eb
    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    #@ed
    move/from16 v23, v0

    #@ef
    .line 162
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@f1
    move-object/from16 v24, v0

    #@f3
    .line 161
    invoke-virtual/range {v21 .. v24}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@f6
    move-result-object v17

    #@f7
    .line 163
    .local v17, "r2":Lorg/apache/xpath/objects/XObject;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/objects/XObject;->num()D

    #@fa
    move-result-wide v10

    #@fb
    .line 168
    .restart local v10    # "n1Num":D
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->num()D

    #@fe
    move-result-wide v14

    #@ff
    .restart local v14    # "n2Num":D
    goto/16 :goto_0

    #@101
    .line 179
    .end local v16    # "r1":Lorg/apache/xpath/objects/XObject;
    .end local v17    # "r2":Lorg/apache/xpath/objects/XObject;
    :cond_5
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    #@104
    move-result v21

    #@105
    if-eqz v21, :cond_7

    #@107
    .line 181
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    #@10a
    move-result v21

    #@10b
    if-eqz v21, :cond_6

    #@10d
    .line 182
    const-wide/16 v6, 0x0

    #@10f
    .line 192
    .local v6, "diff":D
    :goto_3
    const-wide/16 v22, 0x0

    #@111
    cmpg-double v21, v6, v22

    #@113
    if-gez v21, :cond_a

    #@115
    .line 193
    iget-boolean v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    #@117
    move/from16 v21, v0

    #@119
    if-eqz v21, :cond_9

    #@11b
    const/16 v18, 0x1

    #@11d
    .line 192
    :goto_4
    goto/16 :goto_1

    #@11f
    .line 184
    .end local v6    # "diff":D
    :cond_6
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    #@121
    .restart local v6    # "diff":D
    goto :goto_3

    #@122
    .line 186
    .end local v6    # "diff":D
    :cond_7
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    #@125
    move-result v21

    #@126
    if-eqz v21, :cond_8

    #@128
    .line 187
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@12a
    .restart local v6    # "diff":D
    goto :goto_3

    #@12b
    .line 189
    .end local v6    # "diff":D
    :cond_8
    sub-double v6, v10, v14

    #@12d
    .restart local v6    # "diff":D
    goto :goto_3

    #@12e
    .line 193
    :cond_9
    const/16 v18, -0x1

    #@130
    goto :goto_4

    #@131
    .line 194
    :cond_a
    const-wide/16 v22, 0x0

    #@133
    cmpl-double v21, v6, v22

    #@135
    if-lez v21, :cond_c

    #@137
    iget-boolean v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    #@139
    move/from16 v21, v0

    #@13b
    if-eqz v21, :cond_b

    #@13d
    const/16 v18, -0x1

    #@13f
    goto :goto_4

    #@140
    :cond_b
    const/16 v18, 0x1

    #@142
    goto :goto_4

    #@143
    :cond_c
    const/16 v18, 0x0

    #@145
    goto :goto_4

    #@146
    .line 201
    .end local v6    # "diff":D
    .end local v10    # "n1Num":D
    .end local v14    # "n2Num":D
    :cond_d
    if-nez p3, :cond_f

    #@148
    .line 203
    move-object/from16 v0, p1

    #@14a
    iget-object v12, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    #@14c
    check-cast v12, Ljava/text/CollationKey;

    #@14e
    .line 204
    .local v12, "n1String":Ljava/text/CollationKey;
    move-object/from16 v0, p2

    #@150
    iget-object v13, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    #@152
    check-cast v13, Ljava/text/CollationKey;

    #@154
    .line 233
    .local v13, "n2String":Ljava/text/CollationKey;
    :goto_5
    invoke-virtual {v12, v13}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    #@157
    move-result v18

    #@158
    .line 236
    iget-boolean v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_caseOrderUpper:Z

    #@15a
    move/from16 v21, v0

    #@15c
    if-eqz v21, :cond_e

    #@15e
    .line 238
    invoke-virtual {v12}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    #@161
    move-result-object v21

    #@162
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@165
    move-result-object v19

    #@166
    .line 239
    .local v19, "tempN1":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    #@169
    move-result-object v21

    #@16a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@16d
    move-result-object v20

    #@16e
    .line 241
    .local v20, "tempN2":Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@171
    move-result v21

    #@172
    if-eqz v21, :cond_e

    #@174
    .line 245
    if-nez v18, :cond_11

    #@176
    const/16 v18, 0x0

    #@178
    .line 250
    .end local v19    # "tempN1":Ljava/lang/String;
    .end local v20    # "tempN2":Ljava/lang/String;
    :cond_e
    :goto_6
    iget-boolean v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    #@17a
    move/from16 v21, v0

    #@17c
    if-eqz v21, :cond_0

    #@17e
    .line 252
    move/from16 v0, v18

    #@180
    neg-int v0, v0

    #@181
    move/from16 v18, v0

    #@183
    goto/16 :goto_1

    #@185
    .line 206
    .end local v12    # "n1String":Ljava/text/CollationKey;
    .end local v13    # "n2String":Ljava/text/CollationKey;
    :cond_f
    const/16 v21, 0x1

    #@187
    move/from16 v0, p3

    #@189
    move/from16 v1, v21

    #@18b
    if-ne v0, v1, :cond_10

    #@18d
    .line 208
    move-object/from16 v0, p1

    #@18f
    iget-object v12, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    #@191
    check-cast v12, Ljava/text/CollationKey;

    #@193
    .line 209
    .restart local v12    # "n1String":Ljava/text/CollationKey;
    move-object/from16 v0, p2

    #@195
    iget-object v13, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    #@197
    check-cast v13, Ljava/text/CollationKey;

    #@199
    .restart local v13    # "n2String":Ljava/text/CollationKey;
    goto :goto_5

    #@19a
    .line 222
    .end local v12    # "n1String":Ljava/text/CollationKey;
    .end local v13    # "n2String":Ljava/text/CollationKey;
    :cond_10
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    #@19c
    move-object/from16 v21, v0

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@1a2
    move-object/from16 v22, v0

    #@1a4
    move-object/from16 v0, p1

    #@1a6
    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    #@1a8
    move/from16 v23, v0

    #@1aa
    .line 223
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@1ac
    move-object/from16 v24, v0

    #@1ae
    .line 222
    invoke-virtual/range {v21 .. v24}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@1b1
    move-result-object v16

    #@1b2
    .line 224
    .restart local v16    # "r1":Lorg/apache/xpath/objects/XObject;
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    #@1b4
    move-object/from16 v21, v0

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@1ba
    move-object/from16 v22, v0

    #@1bc
    move-object/from16 v0, p2

    #@1be
    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    #@1c0
    move/from16 v23, v0

    #@1c2
    .line 225
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@1c4
    move-object/from16 v24, v0

    #@1c6
    .line 224
    invoke-virtual/range {v21 .. v24}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@1c9
    move-result-object v17

    #@1ca
    .line 227
    .restart local v17    # "r2":Lorg/apache/xpath/objects/XObject;
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    #@1cc
    move-object/from16 v21, v0

    #@1ce
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@1d1
    move-result-object v22

    #@1d2
    invoke-virtual/range {v21 .. v22}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    #@1d5
    move-result-object v12

    #@1d6
    .line 228
    .restart local v12    # "n1String":Ljava/text/CollationKey;
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    #@1d8
    move-object/from16 v21, v0

    #@1da
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@1dd
    move-result-object v22

    #@1de
    invoke-virtual/range {v21 .. v22}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    #@1e1
    move-result-object v13

    #@1e2
    .restart local v13    # "n2String":Ljava/text/CollationKey;
    goto/16 :goto_5

    #@1e4
    .line 245
    .end local v16    # "r1":Lorg/apache/xpath/objects/XObject;
    .end local v17    # "r2":Lorg/apache/xpath/objects/XObject;
    .restart local v19    # "tempN1":Ljava/lang/String;
    .restart local v20    # "tempN2":Ljava/lang/String;
    :cond_11
    move/from16 v0, v18

    #@1e6
    neg-int v0, v0

    #@1e7
    move/from16 v18, v0

    #@1e9
    goto :goto_6

    #@1ea
    .line 272
    .end local v12    # "n1String":Ljava/text/CollationKey;
    .end local v13    # "n2String":Ljava/text/CollationKey;
    .end local v19    # "tempN1":Ljava/lang/String;
    .end local v20    # "tempN2":Ljava/lang/String;
    .restart local v8    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_12
    const/16 v18, 0x1

    #@1ec
    goto/16 :goto_2
.end method

.method mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V
    .locals 17
    .param p1, "a"    # Ljava/util/Vector;
    .param p2, "b"    # Ljava/util/Vector;
    .param p3, "l"    # I
    .param p4, "r"    # I
    .param p5, "support"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    sub-int v2, p4, p3

    #@2
    if-lez v2, :cond_7

    #@4
    .line 301
    add-int v2, p4, p3

    #@6
    div-int/lit8 v6, v2, 0x2

    #@8
    .local v6, "m":I
    move-object/from16 v2, p0

    #@a
    move-object/from16 v3, p1

    #@c
    move-object/from16 v4, p2

    #@e
    move/from16 v5, p3

    #@10
    move-object/from16 v7, p5

    #@12
    .line 303
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    #@15
    .line 304
    add-int/lit8 v10, v6, 0x1

    #@17
    move-object/from16 v7, p0

    #@19
    move-object/from16 v8, p1

    #@1b
    move-object/from16 v9, p2

    #@1d
    move/from16 v11, p4

    #@1f
    move-object/from16 v12, p5

    #@21
    invoke-virtual/range {v7 .. v12}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    #@24
    .line 308
    move v14, v6

    #@25
    .local v14, "i":I
    :goto_0
    move/from16 v0, p3

    #@27
    if-lt v14, v0, :cond_1

    #@29
    .line 313
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    #@2c
    move-result v2

    #@2d
    if-lt v14, v2, :cond_0

    #@2f
    .line 314
    move-object/from16 v0, p1

    #@31
    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    move-object/from16 v0, p2

    #@37
    invoke-virtual {v0, v2, v14}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@3a
    .line 308
    :goto_1
    add-int/lit8 v14, v14, -0x1

    #@3c
    goto :goto_0

    #@3d
    .line 316
    :cond_0
    move-object/from16 v0, p1

    #@3f
    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v0, v2, v14}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@48
    goto :goto_1

    #@49
    .line 319
    :cond_1
    move/from16 v14, p3

    #@4b
    .line 321
    add-int/lit8 v15, v6, 0x1

    #@4d
    .local v15, "j":I
    :goto_2
    move/from16 v0, p4

    #@4f
    if-gt v15, v0, :cond_3

    #@51
    .line 325
    add-int v2, p4, v6

    #@53
    add-int/lit8 v2, v2, 0x1

    #@55
    sub-int/2addr v2, v15

    #@56
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    #@59
    move-result v3

    #@5a
    if-lt v2, v3, :cond_2

    #@5c
    .line 326
    move-object/from16 v0, p1

    #@5e
    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@61
    move-result-object v2

    #@62
    add-int v3, p4, v6

    #@64
    add-int/lit8 v3, v3, 0x1

    #@66
    sub-int/2addr v3, v15

    #@67
    move-object/from16 v0, p2

    #@69
    invoke-virtual {v0, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@6c
    .line 321
    :goto_3
    add-int/lit8 v15, v15, 0x1

    #@6e
    goto :goto_2

    #@6f
    .line 328
    :cond_2
    move-object/from16 v0, p1

    #@71
    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@74
    move-result-object v2

    #@75
    add-int v3, p4, v6

    #@77
    add-int/lit8 v3, v3, 0x1

    #@79
    sub-int/2addr v3, v15

    #@7a
    move-object/from16 v0, p2

    #@7c
    invoke-virtual {v0, v2, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@7f
    goto :goto_3

    #@80
    .line 331
    :cond_3
    move/from16 v15, p4

    #@82
    .line 335
    move/from16 v16, p3

    #@84
    .local v16, "k":I
    :goto_4
    move/from16 v0, v16

    #@86
    move/from16 v1, p4

    #@88
    if-gt v0, v1, :cond_7

    #@8a
    .line 339
    if-ne v14, v15, :cond_5

    #@8c
    .line 340
    const/4 v13, -0x1

    #@8d
    .line 345
    .local v13, "compVal":I
    :goto_5
    if-gez v13, :cond_6

    #@8f
    .line 349
    move-object/from16 v0, p2

    #@91
    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@94
    move-result-object v2

    #@95
    move-object/from16 v0, p1

    #@97
    move/from16 v1, v16

    #@99
    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@9c
    .line 351
    add-int/lit8 v14, v14, 0x1

    #@9e
    .line 335
    :cond_4
    :goto_6
    add-int/lit8 v16, v16, 0x1

    #@a0
    goto :goto_4

    #@a1
    .line 342
    .end local v13    # "compVal":I
    :cond_5
    move-object/from16 v0, p2

    #@a3
    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@a6
    move-result-object v2

    #@a7
    check-cast v2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    #@a9
    .line 343
    move-object/from16 v0, p2

    #@ab
    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@ae
    move-result-object v3

    #@af
    check-cast v3, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    #@b1
    const/4 v4, 0x0

    #@b2
    .line 342
    move-object/from16 v0, p0

    #@b4
    move-object/from16 v1, p5

    #@b6
    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    #@b9
    move-result v13

    #@ba
    .restart local v13    # "compVal":I
    goto :goto_5

    #@bb
    .line 353
    :cond_6
    if-lez v13, :cond_4

    #@bd
    .line 357
    move-object/from16 v0, p2

    #@bf
    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@c2
    move-result-object v2

    #@c3
    move-object/from16 v0, p1

    #@c5
    move/from16 v1, v16

    #@c7
    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@ca
    .line 359
    add-int/lit8 v15, v15, -0x1

    #@cc
    goto :goto_6

    #@cd
    .line 296
    .end local v6    # "m":I
    .end local v13    # "compVal":I
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v16    # "k":I
    :cond_7
    return-void
.end method

.method public sort(Lorg/apache/xml/dtm/DTMIterator;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V
    .locals 9
    .param p1, "v"    # Lorg/apache/xml/dtm/DTMIterator;
    .param p2, "keys"    # Ljava/util/Vector;
    .param p3, "support"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 77
    iput-object p2, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    #@3
    .line 80
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    #@6
    move-result v8

    #@7
    .line 88
    .local v8, "n":I
    new-instance v1, Ljava/util/Vector;

    #@9
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@c
    .line 90
    .local v1, "nodes":Ljava/util/Vector;
    const/4 v7, 0x0

    #@d
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    #@f
    .line 92
    new-instance v6, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    #@11
    invoke-interface {p1, v7}, Lorg/apache/xml/dtm/DTMIterator;->item(I)I

    #@14
    move-result v0

    #@15
    invoke-direct {v6, p0, v0}, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;-><init>(Lorg/apache/xalan/transformer/NodeSorter;I)V

    #@18
    .line 94
    .local v6, "elem":Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1b
    .line 90
    add-int/lit8 v7, v7, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 97
    .end local v6    # "elem":Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    :cond_0
    new-instance v2, Ljava/util/Vector;

    #@20
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@23
    .line 99
    .local v2, "scratchVector":Ljava/util/Vector;
    add-int/lit8 v4, v8, -0x1

    #@25
    move-object v0, p0

    #@26
    move-object v5, p3

    #@27
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    #@2a
    .line 102
    const/4 v7, 0x0

    #@2b
    :goto_1
    if-ge v7, v8, :cond_1

    #@2d
    .line 104
    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    #@33
    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    #@35
    invoke-interface {p1, v0, v7}, Lorg/apache/xml/dtm/DTMIterator;->setItem(II)V

    #@38
    .line 102
    add-int/lit8 v7, v7, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 106
    :cond_1
    invoke-interface {p1, v3}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V

    #@3e
    .line 74
    return-void
.end method
