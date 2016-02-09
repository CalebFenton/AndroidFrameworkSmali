.class public Lorg/apache/xalan/extensions/ExtensionNamespacesManager;
.super Ljava/lang/Object;
.source "ExtensionNamespacesManager.java"


# instance fields
.field private m_extensions:Ljava/util/Vector;

.field private m_predefExtensions:Ljava/util/Vector;

.field private m_unregisteredExtensions:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    #@a
    .line 43
    new-instance v0, Ljava/util/Vector;

    #@c
    const/4 v1, 0x7

    #@d
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    #@10
    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@12
    .line 48
    new-instance v0, Ljava/util/Vector;

    #@14
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@17
    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    #@19
    .line 57
    invoke-direct {p0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->setPredefinedNamespaces()V

    #@1c
    .line 55
    return-void
.end method

.method private setPredefinedNamespaces()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 210
    const-string/jumbo v3, "http://xml.apache.org/xalan/java"

    #@7
    .line 211
    .local v3, "uri":Ljava/lang/String;
    const-string/jumbo v0, "org.apache.xalan.extensions.ExtensionHandlerJavaPackage"

    #@a
    .line 212
    .local v0, "handlerClassName":Ljava/lang/String;
    const-string/jumbo v1, "javapackage"

    #@d
    .line 213
    .local v1, "lang":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@10
    .line 214
    .local v2, "lib":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@12
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@14
    .line 215
    new-array v6, v10, [Ljava/lang/Object;

    #@16
    aput-object v3, v6, v7

    #@18
    aput-object v1, v6, v8

    #@1a
    aput-object v2, v6, v9

    #@1c
    .line 214
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1f
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@22
    .line 217
    const-string/jumbo v3, "http://xml.apache.org/xslt/java"

    #@25
    .line 218
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@27
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@29
    .line 219
    new-array v6, v10, [Ljava/lang/Object;

    #@2b
    aput-object v3, v6, v7

    #@2d
    aput-object v1, v6, v8

    #@2f
    aput-object v2, v6, v9

    #@31
    .line 218
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@34
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@37
    .line 221
    const-string/jumbo v3, "http://xsl.lotus.com/java"

    #@3a
    .line 222
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@3c
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@3e
    .line 223
    new-array v6, v10, [Ljava/lang/Object;

    #@40
    aput-object v3, v6, v7

    #@42
    aput-object v1, v6, v8

    #@44
    aput-object v2, v6, v9

    #@46
    .line 222
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@49
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@4c
    .line 225
    const-string/jumbo v3, "http://xml.apache.org/xalan"

    #@4f
    .line 226
    const-string/jumbo v0, "org.apache.xalan.extensions.ExtensionHandlerJavaClass"

    #@52
    .line 227
    const-string/jumbo v1, "javaclass"

    #@55
    .line 228
    const-string/jumbo v2, "org.apache.xalan.lib.Extensions"

    #@58
    .line 229
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@5a
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@5c
    .line 230
    new-array v6, v10, [Ljava/lang/Object;

    #@5e
    aput-object v3, v6, v7

    #@60
    aput-object v1, v6, v8

    #@62
    aput-object v2, v6, v9

    #@64
    .line 229
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@67
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@6a
    .line 232
    const-string/jumbo v3, "http://xml.apache.org/xslt"

    #@6d
    .line 233
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@6f
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@71
    .line 234
    new-array v6, v10, [Ljava/lang/Object;

    #@73
    aput-object v3, v6, v7

    #@75
    aput-object v1, v6, v8

    #@77
    aput-object v2, v6, v9

    #@79
    .line 233
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7c
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@7f
    .line 237
    const-string/jumbo v3, "http://xml.apache.org/xalan/redirect"

    #@82
    .line 238
    const-string/jumbo v2, "org.apache.xalan.lib.Redirect"

    #@85
    .line 239
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@87
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@89
    .line 240
    new-array v6, v10, [Ljava/lang/Object;

    #@8b
    aput-object v3, v6, v7

    #@8d
    aput-object v1, v6, v8

    #@8f
    aput-object v2, v6, v9

    #@91
    .line 239
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@94
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@97
    .line 242
    const-string/jumbo v3, "http://xml.apache.org/xalan/PipeDocument"

    #@9a
    .line 243
    const-string/jumbo v2, "org.apache.xalan.lib.PipeDocument"

    #@9d
    .line 244
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@9f
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@a1
    .line 245
    new-array v6, v10, [Ljava/lang/Object;

    #@a3
    aput-object v3, v6, v7

    #@a5
    aput-object v1, v6, v8

    #@a7
    aput-object v2, v6, v9

    #@a9
    .line 244
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@ac
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@af
    .line 247
    const-string/jumbo v3, "http://xml.apache.org/xalan/sql"

    #@b2
    .line 248
    const-string/jumbo v2, "org.apache.xalan.lib.sql.XConnection"

    #@b5
    .line 249
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@b7
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@b9
    .line 250
    new-array v6, v10, [Ljava/lang/Object;

    #@bb
    aput-object v3, v6, v7

    #@bd
    aput-object v1, v6, v8

    #@bf
    aput-object v2, v6, v9

    #@c1
    .line 249
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c4
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@c7
    .line 255
    const-string/jumbo v3, "http://exslt.org/common"

    #@ca
    .line 256
    const-string/jumbo v2, "org.apache.xalan.lib.ExsltCommon"

    #@cd
    .line 257
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@cf
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@d1
    .line 258
    new-array v6, v10, [Ljava/lang/Object;

    #@d3
    aput-object v3, v6, v7

    #@d5
    aput-object v1, v6, v8

    #@d7
    aput-object v2, v6, v9

    #@d9
    .line 257
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@dc
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@df
    .line 260
    const-string/jumbo v3, "http://exslt.org/math"

    #@e2
    .line 261
    const-string/jumbo v2, "org.apache.xalan.lib.ExsltMath"

    #@e5
    .line 262
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@e7
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@e9
    .line 263
    new-array v6, v10, [Ljava/lang/Object;

    #@eb
    aput-object v3, v6, v7

    #@ed
    aput-object v1, v6, v8

    #@ef
    aput-object v2, v6, v9

    #@f1
    .line 262
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@f4
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@f7
    .line 265
    const-string/jumbo v3, "http://exslt.org/sets"

    #@fa
    .line 266
    const-string/jumbo v2, "org.apache.xalan.lib.ExsltSets"

    #@fd
    .line 267
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@ff
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@101
    .line 268
    new-array v6, v10, [Ljava/lang/Object;

    #@103
    aput-object v3, v6, v7

    #@105
    aput-object v1, v6, v8

    #@107
    aput-object v2, v6, v9

    #@109
    .line 267
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@10c
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@10f
    .line 270
    const-string/jumbo v3, "http://exslt.org/dates-and-times"

    #@112
    .line 271
    const-string/jumbo v2, "org.apache.xalan.lib.ExsltDatetime"

    #@115
    .line 272
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@117
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@119
    .line 273
    new-array v6, v10, [Ljava/lang/Object;

    #@11b
    aput-object v3, v6, v7

    #@11d
    aput-object v1, v6, v8

    #@11f
    aput-object v2, v6, v9

    #@121
    .line 272
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@124
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@127
    .line 275
    const-string/jumbo v3, "http://exslt.org/dynamic"

    #@12a
    .line 276
    const-string/jumbo v2, "org.apache.xalan.lib.ExsltDynamic"

    #@12d
    .line 277
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@12f
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@131
    .line 278
    new-array v6, v10, [Ljava/lang/Object;

    #@133
    aput-object v3, v6, v7

    #@135
    aput-object v1, v6, v8

    #@137
    aput-object v2, v6, v9

    #@139
    .line 277
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@13c
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@13f
    .line 280
    const-string/jumbo v3, "http://exslt.org/strings"

    #@142
    .line 281
    const-string/jumbo v2, "org.apache.xalan.lib.ExsltStrings"

    #@145
    .line 282
    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@147
    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@149
    .line 283
    new-array v6, v10, [Ljava/lang/Object;

    #@14b
    aput-object v3, v6, v7

    #@14d
    aput-object v1, v6, v8

    #@14f
    aput-object v2, v6, v9

    #@151
    .line 282
    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@154
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@157
    .line 208
    return-void
.end method


# virtual methods
.method public defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    .locals 1
    .param p1, "ns"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    invoke-virtual {p0, p1, p1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    .locals 12
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "classOrPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    .line 161
    if-eqz p1, :cond_0

    #@7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_1

    #@11
    .line 162
    :cond_0
    return-object v4

    #@12
    .line 167
    :cond_1
    move-object v0, p2

    #@13
    .line 168
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v3, "class:"

    #@16
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 169
    const/4 v3, 0x6

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 171
    :cond_2
    const-string/jumbo v3, "/"

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@27
    move-result v2

    #@28
    .line 172
    .local v2, "lastSlash":I
    const/4 v3, -0x1

    #@29
    if-eq v3, v2, :cond_3

    #@2b
    .line 173
    add-int/lit8 v3, v2, 0x1

    #@2d
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 177
    :cond_3
    if-eqz v0, :cond_4

    #@33
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_5

    #@3d
    .line 178
    :cond_4
    return-object v4

    #@3e
    .line 182
    :cond_5
    :try_start_0
    invoke-static {v0}, Lorg/apache/xalan/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    #@41
    .line 183
    new-instance v3, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@43
    .line 185
    const-string/jumbo v4, "org.apache.xalan.extensions.ExtensionHandlerJavaClass"

    #@46
    .line 186
    const/4 v5, 0x3

    #@47
    new-array v5, v5, [Ljava/lang/Object;

    #@49
    const/4 v6, 0x0

    #@4a
    aput-object p1, v5, v6

    #@4c
    const-string/jumbo v6, "javaclass"

    #@4f
    const/4 v7, 0x1

    #@50
    aput-object v6, v5, v7

    #@52
    const/4 v6, 0x2

    #@53
    aput-object v0, v5, v6

    #@55
    .line 183
    invoke-direct {v3, p1, v4, v5}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    return-object v3

    #@59
    .line 189
    :catch_0
    move-exception v1

    #@5a
    .line 190
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@5c
    .line 192
    const-string/jumbo v4, "org.apache.xalan.extensions.ExtensionHandlerJavaPackage"

    #@5f
    .line 193
    new-array v5, v11, [Ljava/lang/Object;

    #@61
    aput-object p1, v5, v8

    #@63
    const-string/jumbo v6, "javapackage"

    #@66
    aput-object v6, v5, v9

    #@68
    new-instance v6, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    const-string/jumbo v7, "."

    #@74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v6

    #@7c
    aput-object v6, v5, v10

    #@7e
    .line 190
    invoke-direct {v3, p1, v4, v5}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@81
    return-object v3
.end method

.method public getExtensions()Ljava/util/Vector;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method public namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "extensions"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 105
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 107
    invoke-virtual {p2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@d
    invoke-virtual {v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 108
    return v0

    #@18
    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 110
    :cond_1
    const/4 v1, -0x1

    #@1c
    return v1
.end method

.method public registerExtension(Ljava/lang/String;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 72
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    #@3
    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    #@6
    move-result v1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 74
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@b
    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    #@e
    move-result v0

    #@f
    .line 75
    .local v0, "predef":I
    if-eq v0, v2, :cond_1

    #@11
    .line 76
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    #@13
    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    #@15
    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@1c
    .line 70
    .end local v0    # "predef":I
    :cond_0
    :goto_0
    return-void

    #@1d
    .line 77
    .restart local v0    # "predef":I
    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    #@1f
    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_0

    #@25
    .line 78
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    #@27
    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_0
.end method

.method public registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V
    .locals 3
    .param p1, "extNsSpt"    # Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@0
    .prologue
    .line 89
    invoke-virtual {p1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 90
    .local v0, "namespace":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    #@6
    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    #@9
    move-result v1

    #@a
    const/4 v2, -0x1

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 92
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    #@f
    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@12
    .line 93
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    #@14
    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 94
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    #@1c
    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    #@1f
    .line 87
    :cond_0
    return-void
.end method

.method public registerUnregisteredNamespaces()V
    .locals 4

    #@0
    .prologue
    .line 129
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    #@3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@6
    move-result v3

    #@7
    if-ge v1, v3, :cond_1

    #@9
    .line 131
    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/lang/String;

    #@11
    .line 132
    .local v2, "ns":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    #@14
    move-result-object v0

    #@15
    .line 133
    .local v0, "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    if-eqz v0, :cond_0

    #@17
    .line 134
    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    #@19
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@1c
    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 127
    .end local v0    # "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    .end local v2    # "ns":Ljava/lang/String;
    :cond_1
    return-void
.end method
