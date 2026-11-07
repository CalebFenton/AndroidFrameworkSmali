.class public Lorg/apache/xalan/templates/ElemExtensionDecl;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemExtensionDecl.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x411ff5272262a845L


# instance fields
.field private greylist m_elements:Lorg/apache/xml/utils/StringVector;

.field private greylist m_functions:Lorg/apache/xml/utils/StringVector;

.field private greylist m_prefix:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    .line 78
    new-instance v1, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v1}, Lorg/apache/xml/utils/StringVector;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    .line 134
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    return-void
.end method


# virtual methods
.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 201
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 202
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b8

    .line 210
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v5, v3

    move-object v6, v5

    :goto_15
    if-eqz v0, :cond_54

    const/16 v4, 0x56

    .line 213
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v7

    if-ne v4, v7, :cond_4f

    .line 215
    move-object v3, v0

    check-cast v3, Lorg/apache/xalan/templates/ElemExtensionScript;

    .line 216
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemExtensionScript;->getLang()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemExtensionScript;->getSrc()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 222
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v7

    const/16 v8, 0x4e

    if-ne v8, v7, :cond_4e

    .line 224
    check-cast v3, Lorg/apache/xalan/templates/ElemTextLiteral;

    .line 225
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTextLiteral;->getChars()[C

    move-result-object v3

    .line 226
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    .line 227
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4e

    move-object v6, v2

    :cond_4e
    move-object v3, v4

    .line 211
    :cond_4f
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_15

    .line 233
    :cond_54
    const-string v0, "javaclass"

    if-nez v3, :cond_5a

    move-object v4, v0

    goto :goto_5b

    :cond_5a
    move-object v4, v3

    .line 235
    :goto_5b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    if-nez v6, :cond_64

    goto :goto_74

    .line 236
    :cond_64
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "ER_ELEM_CONTENT_NOT_ALLOWED"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :cond_74
    :goto_74
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object v3

    .line 242
    invoke-virtual {p1, v1, v3}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_b2

    .line 245
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    if-nez v5, :cond_90

    .line 249
    invoke-virtual {p1, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object v2

    goto :goto_b2

    .line 252
    :cond_90
    invoke-virtual {p1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object p0

    .line 251
    invoke-virtual {p1, v5, p0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result p0

    if-ne p0, v7, :cond_b2

    .line 254
    invoke-virtual {p1, v1, v5}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object v2

    goto :goto_b2

    .line 260
    :cond_9f
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    .line 261
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 262
    new-instance v2, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v0, "org.apache.xalan.extensions.ExtensionHandlerGeneral"

    invoke-direct {v2, v1, v0, p0}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b2
    :goto_b2
    if-eqz v2, :cond_b7

    .line 266
    invoke-virtual {p1, v2}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    :cond_b7
    return-void

    .line 208
    :cond_b8
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "ER_NO_NAMESPACE_DECL"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist getElement(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    if-eqz p0, :cond_9

    .line 174
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 172
    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getElementCount()I
    .registers 1

    .line 185
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getElements()Lorg/apache/xml/utils/StringVector;
    .registers 1

    .line 155
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    return-object p0
.end method

.method public greylist getFunction(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    if-eqz p0, :cond_9

    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getFunctionCount()I
    .registers 1

    .line 129
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getFunctions()Lorg/apache/xml/utils/StringVector;
    .registers 1

    .line 99
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    return-object p0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x55

    return p0
.end method

.method public greylist runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist setElements(Lorg/apache/xml/utils/StringVector;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    return-void
.end method

.method public greylist setFunctions(Lorg/apache/xml/utils/StringVector;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    return-void
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    return-void
.end method
