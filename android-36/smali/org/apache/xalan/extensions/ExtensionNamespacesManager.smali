.class public Lorg/apache/xalan/extensions/ExtensionNamespacesManager;
.super Ljava/lang/Object;
.source "ExtensionNamespacesManager.java"


# instance fields
.field private greylist m_extensions:Ljava/util/Vector;

.field private greylist m_predefExtensions:Ljava/util/Vector;

.field private greylist m_unregisteredExtensions:Ljava/util/Vector;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    .line 43
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    .line 57
    invoke-direct {p0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->setPredefinedNamespaces()V

    return-void
.end method

.method private greylist setPredefinedNamespaces()V
    .registers 8

    .line 214
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xalan/java"

    const-string v3, "javapackage"

    const-string v4, ""

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "org.apache.xalan.extensions.ExtensionHandlerJavaPackage"

    invoke-direct {v1, v2, v6, v5}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xslt/java"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v1, v2, v6, v5}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xsl.lotus.com/java"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xalan"

    const-string v3, "javaclass"

    const-string v4, "org.apache.xalan.lib.Extensions"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "org.apache.xalan.extensions.ExtensionHandlerJavaClass"

    invoke-direct {v1, v2, v6, v5}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xslt"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xalan/redirect"

    const-string v4, "org.apache.xalan.lib.Redirect"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xalan/PipeDocument"

    const-string v4, "org.apache.xalan.lib.PipeDocument"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xalan/sql"

    const-string v4, "org.apache.xalan.lib.sql.XConnection"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://exslt.org/common"

    const-string v4, "org.apache.xalan.lib.ExsltCommon"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://exslt.org/math"

    const-string v4, "org.apache.xalan.lib.ExsltMath"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://exslt.org/sets"

    const-string v4, "org.apache.xalan.lib.ExsltSets"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://exslt.org/dates-and-times"

    const-string v4, "org.apache.xalan.lib.ExsltDatetime"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://exslt.org/dynamic"

    const-string v4, "org.apache.xalan.lib.ExsltDynamic"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v1, "http://exslt.org/strings"

    const-string v2, "org.apache.xalan.lib.ExsltStrings"

    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public greylist defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    .registers 2

    .line 157
    invoke-virtual {p0, p1, p1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object p0

    return-object p0
.end method

.method public greylist defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_66

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_66

    .line 168
    :cond_e
    const-string v0, "class:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x6

    .line 169
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 171
    :cond_1b
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2a

    add-int/lit8 v0, v0, 0x1

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_2a
    if-eqz p2, :cond_66

    .line 177
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_37

    goto :goto_66

    .line 182
    :cond_37
    :try_start_37
    invoke-static {p2}, Lorg/apache/xalan/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    .line 183
    new-instance p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v0, "org.apache.xalan.extensions.ExtensionHandlerJavaClass"

    const-string v1, "javaclass"

    filled-new-array {p1, v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_47} :catch_48

    return-object p0

    .line 190
    :catch_48
    new-instance p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "javapackage"

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "org.apache.xalan.extensions.ExtensionHandlerJavaPackage"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_66
    :goto_66
    return-object p0
.end method

.method public greylist getExtensions()Ljava/util/Vector;
    .registers 1

    .line 121
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    return-object p0
.end method

.method public greylist namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I
    .registers 4

    const/4 p0, 0x0

    .line 105
    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p0, v0, :cond_1b

    .line 107
    invoke-virtual {p2, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    invoke-virtual {v0}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return p0

    :cond_18
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method public greylist registerExtension(Ljava/lang/String;)V
    .registers 4

    .line 72
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 74
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    if-eq v0, v1, :cond_1d

    .line 76
    iget-object p1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    .line 77
    :cond_1d
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 78
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2a
    return-void
.end method

.method public greylist registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V
    .registers 5

    .line 89
    invoke-virtual {p1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 92
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 94
    iget-object p0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_1f
    return-void
.end method

.method public greylist registerUnregisteredNamespaces()V
    .registers 4

    const/4 v0, 0x0

    .line 129
    :goto_1
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 131
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    invoke-virtual {p0, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 134
    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method
