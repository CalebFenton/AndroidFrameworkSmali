.class public Lorg/apache/xalan/templates/ElemExtensionDecl;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemExtensionDecl.java"


# static fields
.field static final serialVersionUID:J = -0x411ff5272262a845L


# instance fields
.field private m_elements:Lorg/apache/xml/utils/StringVector;

.field private m_functions:Lorg/apache/xml/utils/StringVector;

.field private m_prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 44
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@4
    .line 52
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    #@6
    .line 78
    new-instance v0, Lorg/apache/xml/utils/StringVector;

    #@8
    invoke-direct {v0}, Lorg/apache/xml/utils/StringVector;-><init>()V

    #@b
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    #@d
    .line 134
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    #@f
    .line 44
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 19
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    invoke-super/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 202
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getPrefix()Ljava/lang/String;

    #@6
    move-result-object v10

    #@7
    .line 203
    .local v10, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9
    invoke-virtual {v0, v10}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 204
    .local v5, "declNamespace":Ljava/lang/String;
    const/4 v9, 0x0

    #@e
    .line 205
    .local v9, "lang":Ljava/lang/String;
    const/4 v13, 0x0

    #@f
    .line 206
    .local v13, "srcURL":Ljava/lang/String;
    const/4 v11, 0x0

    #@10
    .line 207
    .local v11, "scriptSrc":Ljava/lang/String;
    if-nez v5, :cond_0

    #@12
    .line 208
    new-instance v15, Ljavax/xml/transform/TransformerException;

    #@14
    const-string/jumbo v16, "ER_NO_NAMESPACE_DECL"

    #@17
    const/16 v17, 0x1

    #@19
    move/from16 v0, v17

    #@1b
    new-array v0, v0, [Ljava/lang/Object;

    #@1d
    move-object/from16 v17, v0

    #@1f
    const/16 v18, 0x0

    #@21
    aput-object v10, v17, v18

    #@23
    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v16

    #@27
    invoke-direct/range {v15 .. v16}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v15

    #@2b
    .line 210
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2e
    move-result-object v3

    #@2f
    .end local v9    # "lang":Ljava/lang/String;
    .end local v11    # "scriptSrc":Ljava/lang/String;
    .end local v13    # "srcURL":Ljava/lang/String;
    .local v3, "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v3, :cond_2

    #@31
    .line 213
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@34
    move-result v15

    #@35
    const/16 v16, 0x56

    #@37
    move/from16 v0, v16

    #@39
    if-ne v0, v15, :cond_1

    #@3b
    move-object v12, v3

    #@3c
    .line 215
    check-cast v12, Lorg/apache/xalan/templates/ElemExtensionScript;

    #@3e
    .line 216
    .local v12, "sdecl":Lorg/apache/xalan/templates/ElemExtensionScript;
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemExtensionScript;->getLang()Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    .line 217
    .local v9, "lang":Ljava/lang/String;
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemExtensionScript;->getSrc()Ljava/lang/String;

    #@45
    move-result-object v13

    #@46
    .line 218
    .local v13, "srcURL":Ljava/lang/String;
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemExtensionScript;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@49
    move-result-object v4

    #@4a
    .line 219
    .local v4, "childOfSDecl":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v4, :cond_1

    #@4c
    .line 222
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@4f
    move-result v15

    #@50
    .line 221
    const/16 v16, 0x4e

    #@52
    move/from16 v0, v16

    #@54
    if-ne v0, v15, :cond_1

    #@56
    move-object v14, v4

    #@57
    .line 224
    check-cast v14, Lorg/apache/xalan/templates/ElemTextLiteral;

    #@59
    .line 225
    .local v14, "tl":Lorg/apache/xalan/templates/ElemTextLiteral;
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemTextLiteral;->getChars()[C

    #@5c
    move-result-object v2

    #@5d
    .line 226
    .local v2, "chars":[C
    new-instance v11, Ljava/lang/String;

    #@5f
    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([C)V

    #@62
    .line 227
    .local v11, "scriptSrc":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@65
    move-result-object v15

    #@66
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@69
    move-result v15

    #@6a
    if-nez v15, :cond_1

    #@6c
    .line 228
    const/4 v11, 0x0

    #@6d
    .line 211
    .end local v2    # "chars":[C
    .end local v4    # "childOfSDecl":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v9    # "lang":Ljava/lang/String;
    .end local v11    # "scriptSrc":Ljava/lang/String;
    .end local v12    # "sdecl":Lorg/apache/xalan/templates/ElemExtensionScript;
    .end local v13    # "srcURL":Ljava/lang/String;
    .end local v14    # "tl":Lorg/apache/xalan/templates/ElemTextLiteral;
    :cond_1
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@70
    move-result-object v3

    #@71
    goto :goto_0

    #@72
    .line 233
    :cond_2
    if-nez v9, :cond_3

    #@74
    .line 234
    const-string/jumbo v9, "javaclass"

    #@77
    .line 235
    :cond_3
    const-string/jumbo v15, "javaclass"

    #@7a
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v15

    #@7e
    if-eqz v15, :cond_4

    #@80
    if-eqz v11, :cond_4

    #@82
    .line 236
    new-instance v15, Ljavax/xml/transform/TransformerException;

    #@84
    const-string/jumbo v16, "ER_ELEM_CONTENT_NOT_ALLOWED"

    #@87
    const/16 v17, 0x1

    #@89
    move/from16 v0, v17

    #@8b
    new-array v0, v0, [Ljava/lang/Object;

    #@8d
    move-object/from16 v17, v0

    #@8f
    const/16 v18, 0x0

    #@91
    aput-object v11, v17, v18

    #@93
    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@96
    move-result-object v16

    #@97
    invoke-direct/range {v15 .. v16}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v15

    #@9b
    .line 240
    :cond_4
    const/4 v7, 0x0

    #@9c
    .line 241
    .local v7, "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@9f
    move-result-object v6

    #@a0
    .line 243
    .local v6, "extNsMgr":Lorg/apache/xalan/extensions/ExtensionNamespacesManager;
    invoke-virtual {v6}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    #@a3
    move-result-object v15

    #@a4
    .line 242
    invoke-virtual {v6, v5, v15}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    #@a7
    move-result v15

    #@a8
    .line 243
    const/16 v16, -0x1

    #@aa
    .line 242
    move/from16 v0, v16

    #@ac
    if-ne v15, v0, :cond_5

    #@ae
    .line 245
    const-string/jumbo v15, "javaclass"

    #@b1
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v15

    #@b5
    if-eqz v15, :cond_8

    #@b7
    .line 247
    if-nez v13, :cond_7

    #@b9
    .line 249
    invoke-virtual {v6, v5}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@bc
    move-result-object v7

    #@bd
    .line 265
    .end local v7    # "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    #@bf
    .line 266
    invoke-virtual {v6, v7}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    #@c2
    .line 199
    :cond_6
    return-void

    #@c3
    .line 252
    .restart local v7    # "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    :cond_7
    invoke-virtual {v6}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    #@c6
    move-result-object v15

    #@c7
    .line 251
    invoke-virtual {v6, v13, v15}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    #@ca
    move-result v15

    #@cb
    .line 252
    const/16 v16, -0x1

    #@cd
    .line 251
    move/from16 v0, v16

    #@cf
    if-ne v15, v0, :cond_5

    #@d1
    .line 254
    invoke-virtual {v6, v5, v13}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@d4
    move-result-object v7

    #@d5
    .local v7, "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    goto :goto_1

    #@d6
    .line 259
    .local v7, "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    :cond_8
    const-string/jumbo v8, "org.apache.xalan.extensions.ExtensionHandlerGeneral"

    #@d9
    .line 260
    .local v8, "handler":Ljava/lang/String;
    const/4 v15, 0x7

    #@da
    new-array v1, v15, [Ljava/lang/Object;

    #@dc
    const/4 v15, 0x0

    #@dd
    aput-object v5, v1, v15

    #@df
    move-object/from16 v0, p0

    #@e1
    iget-object v15, v0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    #@e3
    const/16 v16, 0x1

    #@e5
    aput-object v15, v1, v16

    #@e7
    move-object/from16 v0, p0

    #@e9
    iget-object v15, v0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    #@eb
    const/16 v16, 0x2

    #@ed
    aput-object v15, v1, v16

    #@ef
    .line 261
    const/4 v15, 0x3

    #@f0
    aput-object v9, v1, v15

    #@f2
    const/4 v15, 0x4

    #@f3
    aput-object v13, v1, v15

    #@f5
    const/4 v15, 0x5

    #@f6
    aput-object v11, v1, v15

    #@f8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getSystemId()Ljava/lang/String;

    #@fb
    move-result-object v15

    #@fc
    const/16 v16, 0x6

    #@fe
    aput-object v15, v1, v16

    #@100
    .line 262
    .local v1, "args":[Ljava/lang/Object;
    new-instance v7, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@102
    .end local v7    # "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-direct {v7, v5, v8, v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@105
    .local v7, "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    goto :goto_1
.end method

.method public getElement(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 172
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    #@c
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getElementCount()I
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    #@6
    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getElements()Lorg/apache/xml/utils/StringVector;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    #@2
    return-object v0
.end method

.method public getFunction(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 116
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    #@c
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getFunctionCount()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    #@6
    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getFunctions()Lorg/apache/xml/utils/StringVector;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    #@2
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 196
    const/16 v0, 0x55

    #@2
    return v0
.end method

.method public runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 0
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    return-void
.end method

.method public setElements(Lorg/apache/xml/utils/StringVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/StringVector;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    #@2
    .line 142
    return-void
.end method

.method public setFunctions(Lorg/apache/xml/utils/StringVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/StringVector;

    #@0
    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    #@2
    .line 86
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    #@2
    .line 60
    return-void
.end method
