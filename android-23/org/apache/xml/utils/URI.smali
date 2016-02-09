.class public Lorg/apache/xml/utils/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/utils/URI$MalformedURIException;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MARK_CHARACTERS:Ljava/lang/String; = "-_.!~*\'() "

.field private static final RESERVED_CHARACTERS:Ljava/lang/String; = ";/?:@&=+$,"

.field private static final SCHEME_CHARACTERS:Ljava/lang/String; = "+-."

.field private static final USERINFO_CHARACTERS:Ljava/lang/String; = ";:&=+$,"

.field static final serialVersionUID:J = 0x627b00ac4eb312a9L


# instance fields
.field private m_fragment:Ljava/lang/String;

.field private m_host:Ljava/lang/String;

.field private m_path:Ljava/lang/String;

.field private m_port:I

.field private m_queryString:Ljava/lang/String;

.field private m_scheme:Ljava/lang/String;

.field private m_userinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lorg/apache/xml/utils/URI;->DEBUG:Z

    #@3
    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 114
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@6
    .line 118
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@8
    .line 122
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@a
    .line 126
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@d
    .line 130
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@f
    .line 137
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@11
    .line 141
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@13
    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    const/4 v0, 0x0

    #@1
    check-cast v0, Lorg/apache/xml/utils/URI;

    #@3
    invoke-direct {p0, v0, p1}, Lorg/apache/xml/utils/URI;-><init>(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V

    #@6
    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "p_scheme"    # Ljava/lang/String;
    .param p2, "p_schemeSpecificPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 114
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@6
    .line 118
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@8
    .line 122
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@a
    .line 126
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@d
    .line 130
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@f
    .line 137
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@11
    .line 141
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@13
    .line 215
    if-eqz p1, :cond_0

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_1

    #@1f
    .line 217
    :cond_0
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@21
    .line 218
    const-string/jumbo v1, "Cannot construct URI with null/empty scheme!"

    #@24
    .line 217
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 221
    :cond_1
    if-eqz p2, :cond_2

    #@2a
    .line 222
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_3

    #@34
    .line 224
    :cond_2
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@36
    .line 225
    const-string/jumbo v1, "Cannot construct URI with null/empty scheme-specific part!"

    #@39
    .line 224
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 228
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/URI;->setScheme(Ljava/lang/String;)V

    #@40
    .line 229
    invoke-virtual {p0, p2}, Lorg/apache/xml/utils/URI;->setPath(Ljava/lang/String;)V

    #@43
    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "p_scheme"    # Ljava/lang/String;
    .param p2, "p_userinfo"    # Ljava/lang/String;
    .param p3, "p_host"    # Ljava/lang/String;
    .param p4, "p_port"    # I
    .param p5, "p_path"    # Ljava/lang/String;
    .param p6, "p_queryString"    # Ljava/lang/String;
    .param p7, "p_fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 114
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@7
    .line 118
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@9
    .line 122
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@b
    .line 126
    iput v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@d
    .line 130
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@f
    .line 137
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@11
    .line 141
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@13
    .line 288
    if-eqz p1, :cond_0

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_1

    #@1f
    .line 290
    :cond_0
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@21
    const-string/jumbo v1, "ER_SCHEME_REQUIRED"

    #@24
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 293
    :cond_1
    if-nez p3, :cond_3

    #@2e
    .line 295
    if-eqz p2, :cond_2

    #@30
    .line 297
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@32
    .line 298
    const-string/jumbo v1, "ER_NO_USERINFO_IF_NO_HOST"

    #@35
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 297
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 301
    :cond_2
    if-eq p4, v1, :cond_3

    #@3f
    .line 303
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@41
    .line 304
    const-string/jumbo v1, "ER_NO_PORT_IF_NO_HOST"

    #@44
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 303
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    .line 308
    :cond_3
    if-eqz p5, :cond_5

    #@4e
    .line 310
    const/16 v0, 0x3f

    #@50
    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    #@53
    move-result v0

    #@54
    if-eq v0, v1, :cond_4

    #@56
    if-eqz p6, :cond_4

    #@58
    .line 312
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@5a
    .line 313
    const-string/jumbo v1, "ER_NO_QUERY_STRING_IN_PATH"

    #@5d
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    .line 312
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@64
    throw v0

    #@65
    .line 316
    :cond_4
    const/16 v0, 0x23

    #@67
    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    #@6a
    move-result v0

    #@6b
    if-eq v0, v1, :cond_5

    #@6d
    if-eqz p7, :cond_5

    #@6f
    .line 318
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@71
    .line 319
    const-string/jumbo v1, "ER_NO_FRAGMENT_STRING_IN_PATH"

    #@74
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    .line 318
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v0

    #@7c
    .line 323
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/URI;->setScheme(Ljava/lang/String;)V

    #@7f
    .line 324
    invoke-virtual {p0, p3}, Lorg/apache/xml/utils/URI;->setHost(Ljava/lang/String;)V

    #@82
    .line 325
    invoke-virtual {p0, p4}, Lorg/apache/xml/utils/URI;->setPort(I)V

    #@85
    .line 326
    invoke-virtual {p0, p2}, Lorg/apache/xml/utils/URI;->setUserinfo(Ljava/lang/String;)V

    #@88
    .line 327
    invoke-virtual {p0, p5}, Lorg/apache/xml/utils/URI;->setPath(Ljava/lang/String;)V

    #@8b
    .line 328
    invoke-virtual {p0, p6}, Lorg/apache/xml/utils/URI;->setQueryString(Ljava/lang/String;)V

    #@8e
    .line 329
    invoke-virtual {p0, p7}, Lorg/apache/xml/utils/URI;->setFragment(Ljava/lang/String;)V

    #@91
    .line 285
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "p_scheme"    # Ljava/lang/String;
    .param p2, "p_host"    # Ljava/lang/String;
    .param p3, "p_path"    # Ljava/lang/String;
    .param p4, "p_queryString"    # Ljava/lang/String;
    .param p5, "p_fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    const/4 v2, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v3, p2

    #@5
    move-object v5, p3

    #@6
    move-object v6, p4

    #@7
    move-object v7, p5

    #@8
    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/utils/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 254
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/URI;)V
    .locals 2
    .param p1, "p_other"    # Lorg/apache/xml/utils/URI;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 114
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@6
    .line 118
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@8
    .line 122
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@a
    .line 126
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@d
    .line 130
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@f
    .line 137
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@11
    .line 141
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@13
    .line 159
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI;->initialize(Lorg/apache/xml/utils/URI;)V

    #@16
    .line 157
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V
    .locals 2
    .param p1, "p_base"    # Lorg/apache/xml/utils/URI;
    .param p2, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 114
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@6
    .line 118
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@8
    .line 122
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@a
    .line 126
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@d
    .line 130
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@f
    .line 137
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@11
    .line 141
    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@13
    .line 196
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/utils/URI;->initialize(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V

    #@16
    .line 194
    return-void
.end method

.method private initialize(Lorg/apache/xml/utils/URI;)V
    .locals 1
    .param p1, "p_other"    # Lorg/apache/xml/utils/URI;

    #@0
    .prologue
    .line 340
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@6
    .line 341
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getUserinfo()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@c
    .line 342
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getHost()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@12
    .line 343
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getPort()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@18
    .line 344
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@1e
    .line 345
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getQueryString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@24
    .line 346
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getFragment()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@2a
    .line 337
    return-void
.end method

.method private initialize(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V
    .locals 17
    .param p1, "p_base"    # Lorg/apache/xml/utils/URI;
    .param p2, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    .line 369
    if-nez p1, :cond_1

    #@2
    .line 370
    if-eqz p2, :cond_0

    #@4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object v13

    #@8
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@b
    move-result v13

    #@c
    if-nez v13, :cond_1

    #@e
    .line 372
    :cond_0
    new-instance v13, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@10
    .line 373
    const-string/jumbo v14, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    #@13
    const/4 v15, 0x0

    #@14
    invoke-static {v14, v15}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v14

    #@18
    .line 372
    invoke-direct {v13, v14}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v13

    #@1c
    .line 377
    :cond_1
    if-eqz p2, :cond_2

    #@1e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@21
    move-result-object v13

    #@22
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@25
    move-result v13

    #@26
    if-nez v13, :cond_3

    #@28
    .line 379
    :cond_2
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/utils/URI;->initialize(Lorg/apache/xml/utils/URI;)V

    #@2b
    .line 381
    return-void

    #@2c
    .line 384
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2f
    move-result-object v11

    #@30
    .line 385
    .local v11, "uriSpec":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@33
    move-result v12

    #@34
    .line 386
    .local v12, "uriSpecLen":I
    const/4 v3, 0x0

    #@35
    .line 389
    .local v3, "index":I
    const/16 v13, 0x3a

    #@37
    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    #@3a
    move-result v2

    #@3b
    .line 390
    .local v2, "colonIndex":I
    if-gez v2, :cond_4

    #@3d
    .line 392
    if-nez p1, :cond_6

    #@3f
    .line 394
    new-instance v13, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@41
    const-string/jumbo v14, "ER_NO_SCHEME_IN_URI"

    #@44
    const/4 v15, 0x1

    #@45
    new-array v15, v15, [Ljava/lang/Object;

    #@47
    const/16 v16, 0x0

    #@49
    aput-object v11, v15, v16

    #@4b
    invoke-static {v14, v15}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4e
    move-result-object v14

    #@4f
    invoke-direct {v13, v14}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@52
    throw v13

    #@53
    .line 399
    :cond_4
    move-object/from16 v0, p0

    #@55
    invoke-direct {v0, v11}, Lorg/apache/xml/utils/URI;->initializeScheme(Ljava/lang/String;)V

    #@58
    .line 400
    add-int/lit8 v13, v2, 0x1

    #@5a
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5d
    move-result-object v11

    #@5e
    .line 402
    move-object/from16 v0, p0

    #@60
    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@62
    if-eqz v13, :cond_5

    #@64
    if-eqz p1, :cond_5

    #@66
    .line 418
    const-string/jumbo v13, "/"

    #@69
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6c
    move-result v13

    #@6d
    if-nez v13, :cond_a

    #@6f
    move-object/from16 v0, p0

    #@71
    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@73
    move-object/from16 v0, p1

    #@75
    iget-object v14, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@77
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v13

    #@7b
    if-eqz v13, :cond_a

    #@7d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getSchemeSpecificPart()Ljava/lang/String;

    #@80
    move-result-object v13

    #@81
    const-string/jumbo v14, "/"

    #@84
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@87
    move-result v13

    #@88
    if-eqz v13, :cond_a

    #@8a
    .line 424
    .end local p1    # "p_base":Lorg/apache/xml/utils/URI;
    :cond_5
    :goto_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@8d
    move-result v12

    #@8e
    .line 428
    :cond_6
    const-string/jumbo v13, "//"

    #@91
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@94
    move-result v13

    #@95
    if-eqz v13, :cond_8

    #@97
    .line 430
    const/4 v3, 0x2

    #@98
    .line 432
    move v8, v3

    #@99
    .line 435
    .local v8, "startPos":I
    const/4 v10, 0x0

    #@9a
    .line 437
    :goto_1
    if-ge v3, v12, :cond_7

    #@9c
    .line 439
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    #@9f
    move-result v10

    #@a0
    .line 441
    .local v10, "testChar":C
    const/16 v13, 0x2f

    #@a2
    if-eq v10, v13, :cond_7

    #@a4
    const/16 v13, 0x3f

    #@a6
    if-ne v10, v13, :cond_b

    #@a8
    .line 451
    .end local v10    # "testChar":C
    :cond_7
    if-le v3, v8, :cond_c

    #@aa
    .line 453
    invoke-virtual {v11, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ad
    move-result-object v13

    #@ae
    move-object/from16 v0, p0

    #@b0
    invoke-direct {v0, v13}, Lorg/apache/xml/utils/URI;->initializeAuthority(Ljava/lang/String;)V

    #@b3
    .line 461
    .end local v8    # "startPos":I
    :cond_8
    :goto_2
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b6
    move-result-object v13

    #@b7
    move-object/from16 v0, p0

    #@b9
    invoke-direct {v0, v13}, Lorg/apache/xml/utils/URI;->initializePath(Ljava/lang/String;)V

    #@bc
    .line 468
    if-eqz p1, :cond_17

    #@be
    .line 478
    move-object/from16 v0, p0

    #@c0
    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@c2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@c5
    move-result v13

    #@c6
    if-nez v13, :cond_d

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@cc
    if-nez v13, :cond_d

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@d2
    if-nez v13, :cond_d

    #@d4
    .line 480
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getScheme()Ljava/lang/String;

    #@d7
    move-result-object v13

    #@d8
    move-object/from16 v0, p0

    #@da
    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@dc
    .line 481
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getUserinfo()Ljava/lang/String;

    #@df
    move-result-object v13

    #@e0
    move-object/from16 v0, p0

    #@e2
    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@e4
    .line 482
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getHost()Ljava/lang/String;

    #@e7
    move-result-object v13

    #@e8
    move-object/from16 v0, p0

    #@ea
    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@ec
    .line 483
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getPort()I

    #@ef
    move-result v13

    #@f0
    move-object/from16 v0, p0

    #@f2
    iput v13, v0, Lorg/apache/xml/utils/URI;->m_port:I

    #@f4
    .line 484
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    #@f7
    move-result-object v13

    #@f8
    move-object/from16 v0, p0

    #@fa
    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@fc
    .line 486
    move-object/from16 v0, p0

    #@fe
    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@100
    if-nez v13, :cond_9

    #@102
    .line 488
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getQueryString()Ljava/lang/String;

    #@105
    move-result-object v13

    #@106
    move-object/from16 v0, p0

    #@108
    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@10a
    .line 491
    :cond_9
    return-void

    #@10b
    .line 420
    .restart local p1    # "p_base":Lorg/apache/xml/utils/URI;
    :cond_a
    const/16 p1, 0x0

    #@10d
    .local p1, "p_base":Lorg/apache/xml/utils/URI;
    goto/16 :goto_0

    #@10f
    .line 441
    .end local p1    # "p_base":Lorg/apache/xml/utils/URI;
    .restart local v8    # "startPos":I
    .restart local v10    # "testChar":C
    :cond_b
    const/16 v13, 0x23

    #@111
    if-eq v10, v13, :cond_7

    #@113
    .line 446
    add-int/lit8 v3, v3, 0x1

    #@115
    goto :goto_1

    #@116
    .line 457
    .end local v10    # "testChar":C
    :cond_c
    const-string/jumbo v13, ""

    #@119
    move-object/from16 v0, p0

    #@11b
    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@11d
    goto :goto_2

    #@11e
    .line 496
    .end local v8    # "startPos":I
    :cond_d
    move-object/from16 v0, p0

    #@120
    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@122
    if-nez v13, :cond_e

    #@124
    .line 498
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getScheme()Ljava/lang/String;

    #@127
    move-result-object v13

    #@128
    move-object/from16 v0, p0

    #@12a
    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@12c
    .line 503
    :cond_e
    move-object/from16 v0, p0

    #@12e
    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@130
    if-nez v13, :cond_f

    #@132
    .line 505
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getUserinfo()Ljava/lang/String;

    #@135
    move-result-object v13

    #@136
    move-object/from16 v0, p0

    #@138
    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@13a
    .line 506
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getHost()Ljava/lang/String;

    #@13d
    move-result-object v13

    #@13e
    move-object/from16 v0, p0

    #@140
    iput-object v13, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@142
    .line 507
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getPort()I

    #@145
    move-result v13

    #@146
    move-object/from16 v0, p0

    #@148
    iput v13, v0, Lorg/apache/xml/utils/URI;->m_port:I

    #@14a
    .line 515
    move-object/from16 v0, p0

    #@14c
    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@14e
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@151
    move-result v13

    #@152
    if-lez v13, :cond_10

    #@154
    move-object/from16 v0, p0

    #@156
    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@158
    const-string/jumbo v14, "/"

    #@15b
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@15e
    move-result v13

    #@15f
    if-eqz v13, :cond_10

    #@161
    .line 517
    return-void

    #@162
    .line 511
    :cond_f
    return-void

    #@163
    .line 522
    :cond_10
    new-instance v5, Ljava/lang/String;

    #@165
    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    #@168
    .line 523
    .local v5, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    #@16b
    move-result-object v1

    #@16c
    .line 526
    .local v1, "basePath":Ljava/lang/String;
    if-eqz v1, :cond_11

    #@16e
    .line 528
    const/16 v13, 0x2f

    #@170
    invoke-virtual {v1, v13}, Ljava/lang/String;->lastIndexOf(I)I

    #@173
    move-result v4

    #@174
    .line 530
    .local v4, "lastSlash":I
    const/4 v13, -0x1

    #@175
    if-eq v4, v13, :cond_11

    #@177
    .line 532
    add-int/lit8 v13, v4, 0x1

    #@179
    const/4 v14, 0x0

    #@17a
    invoke-virtual {v1, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17d
    move-result-object v5

    #@17e
    .line 537
    .end local v4    # "lastSlash":I
    :cond_11
    move-object/from16 v0, p0

    #@180
    iget-object v13, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@182
    invoke-virtual {v5, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@185
    move-result-object v5

    #@186
    .line 540
    const/4 v3, -0x1

    #@187
    .line 542
    :goto_3
    const-string/jumbo v13, "/./"

    #@18a
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@18d
    move-result v3

    #@18e
    const/4 v13, -0x1

    #@18f
    if-eq v3, v13, :cond_12

    #@191
    .line 544
    add-int/lit8 v13, v3, 0x1

    #@193
    const/4 v14, 0x0

    #@194
    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@197
    move-result-object v13

    #@198
    add-int/lit8 v14, v3, 0x3

    #@19a
    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@19d
    move-result-object v14

    #@19e
    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@1a1
    move-result-object v5

    #@1a2
    goto :goto_3

    #@1a3
    .line 548
    :cond_12
    const-string/jumbo v13, "/."

    #@1a6
    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1a9
    move-result v13

    #@1aa
    if-eqz v13, :cond_13

    #@1ac
    .line 550
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@1af
    move-result v13

    #@1b0
    add-int/lit8 v13, v13, -0x1

    #@1b2
    const/4 v14, 0x0

    #@1b3
    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b6
    move-result-object v5

    #@1b7
    .line 555
    :cond_13
    const/4 v3, -0x1

    #@1b8
    .line 557
    const/4 v6, -0x1

    #@1b9
    .line 558
    .local v6, "segIndex":I
    const/4 v9, 0x0

    #@1ba
    .line 560
    :cond_14
    :goto_4
    const-string/jumbo v13, "/../"

    #@1bd
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1c0
    move-result v3

    #@1c1
    if-lez v3, :cond_15

    #@1c3
    .line 562
    const-string/jumbo v13, "/../"

    #@1c6
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1c9
    move-result v13

    #@1ca
    const/4 v14, 0x0

    #@1cb
    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1ce
    move-result-object v9

    #@1cf
    .line 563
    .local v9, "tempString":Ljava/lang/String;
    const/16 v13, 0x2f

    #@1d1
    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    #@1d4
    move-result v6

    #@1d5
    .line 565
    const/4 v13, -0x1

    #@1d6
    if-eq v6, v13, :cond_14

    #@1d8
    .line 567
    add-int/lit8 v7, v6, 0x1

    #@1da
    .end local v6    # "segIndex":I
    .local v7, "segIndex":I
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1dd
    move-result-object v13

    #@1de
    const-string/jumbo v14, ".."

    #@1e1
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e4
    move-result v13

    #@1e5
    if-nez v13, :cond_18

    #@1e7
    .line 569
    const/4 v13, 0x0

    #@1e8
    invoke-virtual {v5, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1eb
    move-result-object v13

    #@1ec
    add-int/lit8 v14, v3, 0x4

    #@1ee
    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1f1
    move-result-object v14

    #@1f2
    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@1f5
    move-result-object v5

    #@1f6
    move v6, v7

    #@1f7
    .end local v7    # "segIndex":I
    .restart local v6    # "segIndex":I
    goto :goto_4

    #@1f8
    .line 577
    .end local v9    # "tempString":Ljava/lang/String;
    :cond_15
    const-string/jumbo v13, "/.."

    #@1fb
    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1fe
    move-result v13

    #@1ff
    if-eqz v13, :cond_16

    #@201
    .line 579
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@204
    move-result v13

    #@205
    add-int/lit8 v13, v13, -0x3

    #@207
    const/4 v14, 0x0

    #@208
    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20b
    move-result-object v9

    #@20c
    .line 580
    .restart local v9    # "tempString":Ljava/lang/String;
    const/16 v13, 0x2f

    #@20e
    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    #@211
    move-result v6

    #@212
    .line 582
    const/4 v13, -0x1

    #@213
    if-eq v6, v13, :cond_16

    #@215
    .line 584
    add-int/lit8 v13, v6, 0x1

    #@217
    const/4 v14, 0x0

    #@218
    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21b
    move-result-object v5

    #@21c
    .line 588
    .end local v9    # "tempString":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    #@21e
    iput-object v5, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@220
    .line 366
    .end local v1    # "basePath":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "segIndex":I
    :cond_17
    return-void

    #@221
    .restart local v1    # "basePath":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "segIndex":I
    .restart local v9    # "tempString":Ljava/lang/String;
    :cond_18
    move v6, v7

    #@222
    .end local v7    # "segIndex":I
    .restart local v6    # "segIndex":I
    goto :goto_4
.end method

.method private initializeAuthority(Ljava/lang/String;)V
    .locals 14
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v13, 0x40

    #@2
    const/16 v12, 0x3a

    #@4
    .line 645
    const/4 v3, 0x0

    #@5
    .line 646
    .local v3, "index":I
    const/4 v7, 0x0

    #@6
    .line 647
    .local v7, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    .line 648
    .local v0, "end":I
    const/4 v8, 0x0

    #@b
    .line 649
    .local v8, "testChar":C
    const/4 v9, 0x0

    #@c
    .line 652
    .local v9, "userinfo":Ljava/lang/String;
    invoke-virtual {p1, v13, v7}, Ljava/lang/String;->indexOf(II)I

    #@f
    move-result v10

    #@10
    const/4 v11, -0x1

    #@11
    if-eq v10, v11, :cond_1

    #@13
    .line 654
    .end local v8    # "testChar":C
    :goto_0
    if-ge v3, v0, :cond_0

    #@15
    .line 656
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v8

    #@19
    .line 658
    .local v8, "testChar":C
    if-ne v8, v13, :cond_3

    #@1b
    .line 666
    .end local v8    # "testChar":C
    :cond_0
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v9

    #@1f
    .line 668
    .local v9, "userinfo":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    #@21
    .line 672
    .end local v9    # "userinfo":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@22
    .line 674
    .local v1, "host":Ljava/lang/String;
    move v7, v3

    #@23
    .line 676
    :goto_1
    if-ge v3, v0, :cond_2

    #@25
    .line 678
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v8

    #@29
    .line 680
    .restart local v8    # "testChar":C
    if-ne v8, v12, :cond_4

    #@2b
    .line 688
    .end local v8    # "testChar":C
    :cond_2
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 690
    .local v1, "host":Ljava/lang/String;
    const/4 v5, -0x1

    #@30
    .line 692
    .local v5, "port":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@33
    move-result v10

    #@34
    if-lez v10, :cond_8

    #@36
    .line 696
    if-ne v8, v12, :cond_8

    #@38
    .line 698
    add-int/lit8 v3, v3, 0x1

    #@3a
    .line 700
    move v7, v3

    #@3b
    .line 702
    :goto_2
    if-ge v3, v0, :cond_5

    #@3d
    .line 704
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_2

    #@40
    .line 663
    .end local v1    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    .restart local v8    # "testChar":C
    .local v9, "userinfo":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_0

    #@43
    .line 685
    .end local v9    # "userinfo":Ljava/lang/String;
    .local v1, "host":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@45
    goto :goto_1

    #@46
    .line 707
    .end local v8    # "testChar":C
    .local v1, "host":Ljava/lang/String;
    .restart local v5    # "port":I
    :cond_5
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 709
    .local v6, "portStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@4d
    move-result v10

    #@4e
    if-lez v10, :cond_8

    #@50
    .line 711
    const/4 v2, 0x0

    #@51
    .local v2, "i":I
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@54
    move-result v10

    #@55
    if-ge v2, v10, :cond_7

    #@57
    .line 713
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    #@5a
    move-result v10

    #@5b
    invoke-static {v10}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    #@5e
    move-result v10

    #@5f
    if-nez v10, :cond_6

    #@61
    .line 715
    new-instance v10, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@63
    .line 716
    new-instance v11, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v11

    #@6c
    const-string/jumbo v12, " is invalid. Port should only contain digits!"

    #@6f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v11

    #@73
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v11

    #@77
    .line 715
    invoke-direct {v10, v11}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v10

    #@7b
    .line 711
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@7d
    goto :goto_3

    #@7e
    .line 722
    :cond_7
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    move-result v5

    #@82
    .line 733
    .end local v2    # "i":I
    .end local v6    # "portStr":Ljava/lang/String;
    :cond_8
    :goto_4
    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/URI;->setHost(Ljava/lang/String;)V

    #@85
    .line 734
    invoke-virtual {p0, v5}, Lorg/apache/xml/utils/URI;->setPort(I)V

    #@88
    .line 735
    invoke-virtual {p0, v9}, Lorg/apache/xml/utils/URI;->setUserinfo(Ljava/lang/String;)V

    #@8b
    .line 642
    return-void

    #@8c
    .line 725
    .restart local v2    # "i":I
    .restart local v6    # "portStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@8d
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_4
.end method

.method private initializePath(Ljava/lang/String;)V
    .locals 9
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/16 v7, 0x3f

    #@3
    const/16 v6, 0x25

    #@5
    const/16 v5, 0x23

    #@7
    .line 748
    if-nez p1, :cond_0

    #@9
    .line 750
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@b
    .line 751
    const-string/jumbo v5, "Cannot initialize path from null string!"

    #@e
    .line 750
    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@11
    throw v4

    #@12
    .line 754
    :cond_0
    const/4 v1, 0x0

    #@13
    .line 755
    .local v1, "index":I
    const/4 v2, 0x0

    #@14
    .line 756
    .local v2, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v0

    #@18
    .line 757
    .local v0, "end":I
    const/4 v3, 0x0

    #@19
    .line 760
    :goto_0
    if-ge v1, v0, :cond_1

    #@1b
    .line 762
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v3

    #@1f
    .line 764
    .local v3, "testChar":C
    if-eq v3, v7, :cond_1

    #@21
    if-ne v3, v5, :cond_5

    #@23
    .line 790
    .end local v3    # "testChar":C
    :cond_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    iput-object v4, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@29
    .line 793
    if-ne v3, v7, :cond_3

    #@2b
    .line 795
    add-int/lit8 v1, v1, 0x1

    #@2d
    .line 797
    move v2, v1

    #@2e
    .line 799
    :goto_1
    if-ge v1, v0, :cond_2

    #@30
    .line 801
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v3

    #@34
    .line 803
    .restart local v3    # "testChar":C
    if-ne v3, v5, :cond_9

    #@36
    .line 827
    .end local v3    # "testChar":C
    :cond_2
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    iput-object v4, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@3c
    .line 831
    :cond_3
    if-ne v3, v5, :cond_10

    #@3e
    .line 833
    add-int/lit8 v1, v1, 0x1

    #@40
    .line 835
    move v2, v1

    #@41
    .line 837
    :goto_2
    if-ge v1, v0, :cond_f

    #@43
    .line 839
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@46
    move-result v3

    #@47
    .line 841
    .restart local v3    # "testChar":C
    if-ne v3, v6, :cond_e

    #@49
    .line 843
    add-int/lit8 v4, v1, 0x2

    #@4b
    if-ge v4, v0, :cond_d

    #@4d
    add-int/lit8 v4, v1, 0x1

    #@4f
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@52
    move-result v4

    #@53
    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_d

    #@59
    .line 844
    add-int/lit8 v4, v1, 0x2

    #@5b
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@5e
    move-result v4

    #@5f
    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    #@62
    move-result v4

    #@63
    if-eqz v4, :cond_d

    #@65
    .line 857
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@67
    goto :goto_2

    #@68
    .line 770
    :cond_5
    if-ne v3, v6, :cond_8

    #@6a
    .line 772
    add-int/lit8 v4, v1, 0x2

    #@6c
    if-ge v4, v0, :cond_7

    #@6e
    add-int/lit8 v4, v1, 0x1

    #@70
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@73
    move-result v4

    #@74
    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    #@77
    move-result v4

    #@78
    if-eqz v4, :cond_7

    #@7a
    .line 773
    add-int/lit8 v4, v1, 0x2

    #@7c
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@7f
    move-result v4

    #@80
    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    #@83
    move-result v4

    #@84
    if-eqz v4, :cond_7

    #@86
    .line 787
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@88
    goto :goto_0

    #@89
    .line 775
    :cond_7
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@8b
    .line 776
    const-string/jumbo v5, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    #@8e
    invoke-static {v5, v8}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@91
    move-result-object v5

    #@92
    .line 775
    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@95
    throw v4

    #@96
    .line 779
    :cond_8
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    #@99
    move-result v4

    #@9a
    if-nez v4, :cond_6

    #@9c
    .line 780
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    #@9f
    move-result v4

    #@a0
    if-nez v4, :cond_6

    #@a2
    .line 782
    const/16 v4, 0x5c

    #@a4
    if-eq v4, v3, :cond_6

    #@a6
    .line 783
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@a8
    const-string/jumbo v5, "ER_PATH_INVALID_CHAR"

    #@ab
    const/4 v6, 0x1

    #@ac
    new-array v6, v6, [Ljava/lang/Object;

    #@ae
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@b1
    move-result-object v7

    #@b2
    const/4 v8, 0x0

    #@b3
    aput-object v7, v6, v8

    #@b5
    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b8
    move-result-object v5

    #@b9
    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v4

    #@bd
    .line 808
    :cond_9
    if-ne v3, v6, :cond_c

    #@bf
    .line 810
    add-int/lit8 v4, v1, 0x2

    #@c1
    if-ge v4, v0, :cond_b

    #@c3
    add-int/lit8 v4, v1, 0x1

    #@c5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@c8
    move-result v4

    #@c9
    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    #@cc
    move-result v4

    #@cd
    if-eqz v4, :cond_b

    #@cf
    .line 811
    add-int/lit8 v4, v1, 0x2

    #@d1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@d4
    move-result v4

    #@d5
    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    #@d8
    move-result v4

    #@d9
    if-eqz v4, :cond_b

    #@db
    .line 824
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@dd
    goto/16 :goto_1

    #@df
    .line 813
    :cond_b
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@e1
    .line 814
    const-string/jumbo v5, "Query string contains invalid escape sequence!"

    #@e4
    .line 813
    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@e7
    throw v4

    #@e8
    .line 817
    :cond_c
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    #@eb
    move-result v4

    #@ec
    if-nez v4, :cond_a

    #@ee
    .line 818
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    #@f1
    move-result v4

    #@f2
    if-nez v4, :cond_a

    #@f4
    .line 820
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@f6
    .line 821
    new-instance v5, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v6, "Query string contains invalid character:"

    #@fe
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v5

    #@102
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@105
    move-result-object v5

    #@106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v5

    #@10a
    .line 820
    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@10d
    throw v4

    #@10e
    .line 846
    :cond_d
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@110
    .line 847
    const-string/jumbo v5, "Fragment contains invalid escape sequence!"

    #@113
    .line 846
    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@116
    throw v4

    #@117
    .line 850
    :cond_e
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    #@11a
    move-result v4

    #@11b
    if-nez v4, :cond_4

    #@11d
    .line 851
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    #@120
    move-result v4

    #@121
    if-nez v4, :cond_4

    #@123
    .line 853
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@125
    .line 854
    new-instance v5, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v6, "Fragment contains invalid character:"

    #@12d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v5

    #@131
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@134
    move-result-object v5

    #@135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v5

    #@139
    .line 853
    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@13c
    throw v4

    #@13d
    .line 860
    .end local v3    # "testChar":C
    :cond_f
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@140
    move-result-object v4

    #@141
    iput-object v4, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@143
    .line 745
    :cond_10
    return-void
.end method

.method private initializeScheme(Ljava/lang/String;)V
    .locals 7
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    .line 604
    .local v3, "uriSpecLen":I
    const/4 v0, 0x0

    #@6
    .line 605
    .local v0, "index":I
    const/4 v1, 0x0

    #@7
    .line 606
    .local v1, "scheme":Ljava/lang/String;
    const/4 v2, 0x0

    #@8
    .line 608
    :goto_0
    if-ge v0, v3, :cond_0

    #@a
    .line 610
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v2

    #@e
    .line 612
    .local v2, "testChar":C
    const/16 v4, 0x3a

    #@10
    if-eq v2, v4, :cond_0

    #@12
    const/16 v4, 0x2f

    #@14
    if-ne v2, v4, :cond_1

    #@16
    .line 621
    .end local v2    # "testChar":C
    :cond_0
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 623
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_2

    #@20
    .line 625
    new-instance v4, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@22
    const-string/jumbo v5, "ER_NO_SCHEME_INURI"

    #@25
    const/4 v6, 0x0

    #@26
    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-direct {v4, v5}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v4

    #@2e
    .line 612
    .local v1, "scheme":Ljava/lang/String;
    .restart local v2    # "testChar":C
    :cond_1
    const/16 v4, 0x3f

    #@30
    if-eq v2, v4, :cond_0

    #@32
    .line 613
    const/16 v4, 0x23

    #@34
    if-eq v2, v4, :cond_0

    #@36
    .line 618
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 629
    .end local v2    # "testChar":C
    .local v1, "scheme":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/URI;->setScheme(Ljava/lang/String;)V

    #@3c
    .line 600
    return-void
.end method

.method private static isAlpha(C)Z
    .locals 3
    .param p0, "p_char"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1581
    const/16 v2, 0x61

    #@4
    if-lt p0, v2, :cond_1

    #@6
    const/16 v2, 0x7a

    #@8
    if-gt p0, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    .line 1582
    :cond_1
    const/16 v2, 0x41

    #@d
    if-lt p0, v2, :cond_2

    #@f
    const/16 v2, 0x5a

    #@11
    if-le p0, v2, :cond_0

    #@13
    :cond_2
    move v0, v1

    #@14
    goto :goto_0
.end method

.method private static isAlphanum(C)Z
    .locals 1
    .param p0, "p_char"    # C

    #@0
    .prologue
    .line 1594
    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isAlpha(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public static isConformantSchemeName(Ljava/lang/String;)Z
    .locals 5
    .param p0, "p_scheme"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1411
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_1

    #@d
    .line 1413
    :cond_0
    return v4

    #@e
    .line 1416
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v2

    #@12
    invoke-static {v2}, Lorg/apache/xml/utils/URI;->isAlpha(C)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_2

    #@18
    .line 1418
    return v4

    #@19
    .line 1423
    :cond_2
    const/4 v0, 0x1

    #@1a
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1d
    move-result v2

    #@1e
    if-ge v0, v2, :cond_4

    #@20
    .line 1425
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v1

    #@24
    .line 1427
    .local v1, "testChar":C
    invoke-static {v1}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_3

    #@2a
    const-string/jumbo v2, "+-."

    #@2d
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    #@30
    move-result v2

    #@31
    const/4 v3, -0x1

    #@32
    if-ne v2, v3, :cond_3

    #@34
    .line 1429
    return v4

    #@35
    .line 1423
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1433
    .end local v1    # "testChar":C
    :cond_4
    const/4 v2, 0x1

    #@39
    return v2
.end method

.method private static isDigit(C)Z
    .locals 2
    .param p0, "p_char"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1555
    const/16 v1, 0x30

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x39

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private static isHex(C)Z
    .locals 3
    .param p0, "p_char"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1568
    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    const/16 v2, 0x61

    #@a
    if-lt p0, v2, :cond_1

    #@c
    const/16 v2, 0x66

    #@e
    if-gt p0, v2, :cond_1

    #@10
    :cond_0
    :goto_0
    return v0

    #@11
    .line 1569
    :cond_1
    const/16 v2, 0x41

    #@13
    if-lt p0, v2, :cond_2

    #@15
    const/16 v2, 0x46

    #@17
    if-le p0, v2, :cond_0

    #@19
    :cond_2
    move v0, v1

    #@1a
    goto :goto_0
.end method

.method private static isReservedCharacter(C)Z
    .locals 2
    .param p0, "p_char"    # C

    #@0
    .prologue
    .line 1607
    const-string/jumbo v0, ";/?:@&=+$,"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private static isURIString(Ljava/lang/String;)Z
    .locals 5
    .param p0, "p_uric"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1634
    if-nez p0, :cond_0

    #@3
    .line 1636
    return v4

    #@4
    .line 1639
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    .line 1640
    .local v0, "end":I
    const/4 v2, 0x0

    #@9
    .line 1642
    .local v2, "testChar":C
    const/4 v1, 0x0

    #@a
    .end local v2    # "testChar":C
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@c
    .line 1644
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v2

    #@10
    .line 1646
    .local v2, "testChar":C
    const/16 v3, 0x25

    #@12
    if-ne v2, v3, :cond_3

    #@14
    .line 1648
    add-int/lit8 v3, v1, 0x2

    #@16
    if-ge v3, v0, :cond_2

    #@18
    add-int/lit8 v3, v1, 0x1

    #@1a
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v3

    #@1e
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 1649
    add-int/lit8 v3, v1, 0x2

    #@26
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v3

    #@2a
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_2

    #@30
    .line 1655
    add-int/lit8 v1, v1, 0x2

    #@32
    .line 1642
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1651
    :cond_2
    return v4

    #@36
    .line 1661
    :cond_3
    invoke-static {v2}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    #@39
    move-result v3

    #@3a
    if-nez v3, :cond_1

    #@3c
    invoke-static {v2}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    #@3f
    move-result v3

    #@40
    if-nez v3, :cond_1

    #@42
    .line 1667
    return v4

    #@43
    .line 1671
    .end local v2    # "testChar":C
    :cond_4
    const/4 v3, 0x1

    #@44
    return v3
.end method

.method private static isUnreservedCharacter(C)Z
    .locals 3
    .param p0, "p_char"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1619
    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const-string/jumbo v1, "-_.!~*\'() "

    #@a
    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v1

    #@e
    const/4 v2, -0x1

    #@f
    if-eq v1, v2, :cond_1

    #@11
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public static isWellFormedAddress(Ljava/lang/String;)Z
    .locals 9
    .param p0, "p_address"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x2e

    #@2
    const/4 v7, 0x0

    #@3
    .line 1452
    if-nez p0, :cond_0

    #@5
    .line 1454
    return v7

    #@6
    .line 1457
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 1458
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    .line 1460
    .local v0, "addrLength":I
    if-eqz v0, :cond_1

    #@10
    const/16 v6, 0xff

    #@12
    if-le v0, v6, :cond_2

    #@14
    .line 1462
    :cond_1
    return v7

    #@15
    .line 1465
    :cond_2
    const-string/jumbo v6, "."

    #@18
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v6

    #@1c
    if-nez v6, :cond_3

    #@1e
    const-string/jumbo v6, "-"

    #@21
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_4

    #@27
    .line 1467
    :cond_3
    return v7

    #@28
    .line 1473
    :cond_4
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    #@2b
    move-result v3

    #@2c
    .line 1475
    .local v3, "index":I
    const-string/jumbo v6, "."

    #@2f
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_5

    #@35
    .line 1477
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    #@3c
    move-result v3

    #@3d
    .line 1480
    :cond_5
    add-int/lit8 v6, v3, 0x1

    #@3f
    if-ge v6, v0, :cond_b

    #@41
    add-int/lit8 v6, v3, 0x1

    #@43
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@46
    move-result v6

    #@47
    invoke-static {v6}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_b

    #@4d
    .line 1483
    const/4 v4, 0x0

    #@4e
    .line 1488
    .local v4, "numDots":I
    const/4 v2, 0x0

    #@4f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_a

    #@51
    .line 1490
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@54
    move-result v5

    #@55
    .line 1492
    .local v5, "testChar":C
    if-ne v5, v8, :cond_9

    #@57
    .line 1494
    add-int/lit8 v6, v2, -0x1

    #@59
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    #@5c
    move-result v6

    #@5d
    invoke-static {v6}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    #@60
    move-result v6

    #@61
    if-eqz v6, :cond_8

    #@63
    .line 1495
    add-int/lit8 v6, v2, 0x1

    #@65
    if-ge v6, v0, :cond_6

    #@67
    add-int/lit8 v6, v2, 0x1

    #@69
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    #@6c
    move-result v6

    #@6d
    invoke-static {v6}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    #@70
    move-result v6

    #@71
    if-eqz v6, :cond_8

    #@73
    .line 1500
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@75
    .line 1488
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@77
    goto :goto_0

    #@78
    .line 1497
    :cond_8
    return v7

    #@79
    .line 1502
    :cond_9
    invoke-static {v5}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    #@7c
    move-result v6

    #@7d
    if-nez v6, :cond_7

    #@7f
    .line 1504
    return v7

    #@80
    .line 1508
    .end local v5    # "testChar":C
    :cond_a
    const/4 v6, 0x3

    #@81
    if-eq v4, v6, :cond_10

    #@83
    .line 1510
    return v7

    #@84
    .line 1520
    .end local v2    # "i":I
    .end local v4    # "numDots":I
    :cond_b
    const/4 v2, 0x0

    #@85
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_10

    #@87
    .line 1522
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@8a
    move-result v5

    #@8b
    .line 1524
    .restart local v5    # "testChar":C
    if-ne v5, v8, :cond_f

    #@8d
    .line 1526
    add-int/lit8 v6, v2, -0x1

    #@8f
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    #@92
    move-result v6

    #@93
    invoke-static {v6}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    #@96
    move-result v6

    #@97
    if-nez v6, :cond_c

    #@99
    .line 1528
    return v7

    #@9a
    .line 1531
    :cond_c
    add-int/lit8 v6, v2, 0x1

    #@9c
    if-ge v6, v0, :cond_d

    #@9e
    add-int/lit8 v6, v2, 0x1

    #@a0
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    #@a3
    move-result v6

    #@a4
    invoke-static {v6}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    #@a7
    move-result v6

    #@a8
    if-eqz v6, :cond_e

    #@aa
    .line 1520
    :cond_d
    add-int/lit8 v2, v2, 0x1

    #@ac
    goto :goto_1

    #@ad
    .line 1533
    :cond_e
    return v7

    #@ae
    .line 1536
    :cond_f
    invoke-static {v5}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    #@b1
    move-result v6

    #@b2
    if-nez v6, :cond_d

    #@b4
    const/16 v6, 0x2d

    #@b6
    if-eq v5, v6, :cond_d

    #@b8
    .line 1538
    return v7

    #@b9
    .line 1543
    .end local v5    # "testChar":C
    :cond_10
    const/4 v6, 0x1

    #@ba
    return v6
.end method


# virtual methods
.method public appendPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "p_addToPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1210
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1212
    :cond_0
    return-void

    #@f
    .line 1215
    :cond_1
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isURIString(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_2

    #@15
    .line 1217
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@17
    const-string/jumbo v1, "ER_PATH_INVALID_CHAR"

    #@1a
    new-array v2, v2, [Ljava/lang/Object;

    #@1c
    aput-object p1, v2, v3

    #@1e
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 1220
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@28
    if-eqz v0, :cond_3

    #@2a
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@2c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_5

    #@36
    .line 1222
    :cond_3
    const-string/jumbo v0, "/"

    #@39
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_4

    #@3f
    .line 1224
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@41
    .line 1207
    :goto_0
    return-void

    #@42
    .line 1228
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v1, "/"

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@58
    goto :goto_0

    #@59
    .line 1231
    :cond_5
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@5b
    const-string/jumbo v1, "/"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_7

    #@64
    .line 1233
    const-string/jumbo v0, "/"

    #@67
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6a
    move-result v0

    #@6b
    if-eqz v0, :cond_6

    #@6d
    .line 1235
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@6f
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@79
    goto :goto_0

    #@7a
    .line 1239
    :cond_6
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@7c
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@82
    goto :goto_0

    #@83
    .line 1244
    :cond_7
    const-string/jumbo v0, "/"

    #@86
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@89
    move-result v0

    #@8a
    if-eqz v0, :cond_8

    #@8c
    .line 1246
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@8e
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@91
    move-result-object v0

    #@92
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@94
    goto :goto_0

    #@95
    .line 1250
    :cond_8
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@97
    new-instance v1, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v2, "/"

    #@9f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@b1
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "p_test"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1344
    instance-of v1, p1, Lorg/apache/xml/utils/URI;

    #@2
    if-eqz v1, :cond_2

    #@4
    move-object v0, p1

    #@5
    .line 1346
    check-cast v0, Lorg/apache/xml/utils/URI;

    #@7
    .line 1348
    .local v0, "testURI":Lorg/apache/xml/utils/URI;
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@9
    if-nez v1, :cond_1

    #@b
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@d
    if-nez v1, :cond_1

    #@f
    .line 1349
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@11
    if-nez v1, :cond_3

    #@13
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@15
    if-nez v1, :cond_3

    #@17
    .line 1350
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@19
    if-nez v1, :cond_4

    #@1b
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@1d
    if-nez v1, :cond_4

    #@1f
    .line 1351
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@21
    iget v2, v0, Lorg/apache/xml/utils/URI;->m_port:I

    #@23
    if-ne v1, v2, :cond_2

    #@25
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@27
    if-nez v1, :cond_5

    #@29
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@2b
    if-nez v1, :cond_5

    #@2d
    .line 1352
    :goto_2
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@2f
    if-nez v1, :cond_6

    #@31
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@33
    if-nez v1, :cond_6

    #@35
    .line 1353
    :goto_3
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@37
    if-nez v1, :cond_7

    #@39
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@3b
    if-nez v1, :cond_7

    #@3d
    .line 1356
    :goto_4
    const/4 v1, 0x1

    #@3e
    return v1

    #@3f
    .line 1348
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@41
    if-eqz v1, :cond_2

    #@43
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@45
    if-eqz v1, :cond_2

    #@47
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@49
    .line 1349
    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@4b
    .line 1348
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v1

    #@4f
    if-nez v1, :cond_0

    #@51
    .line 1360
    .end local v0    # "testURI":Lorg/apache/xml/utils/URI;
    :cond_2
    const/4 v1, 0x0

    #@52
    return v1

    #@53
    .line 1349
    .restart local v0    # "testURI":Lorg/apache/xml/utils/URI;
    :cond_3
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@55
    if-eqz v1, :cond_2

    #@57
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@59
    if-eqz v1, :cond_2

    #@5b
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@5d
    .line 1350
    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@5f
    .line 1349
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v1

    #@63
    .line 1348
    if-eqz v1, :cond_2

    #@65
    goto :goto_0

    #@66
    .line 1350
    :cond_4
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@68
    if-eqz v1, :cond_2

    #@6a
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@6c
    if-eqz v1, :cond_2

    #@6e
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@70
    .line 1351
    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@72
    .line 1350
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v1

    #@76
    .line 1348
    if-eqz v1, :cond_2

    #@78
    goto :goto_1

    #@79
    .line 1351
    :cond_5
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@7b
    if-eqz v1, :cond_2

    #@7d
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@7f
    if-eqz v1, :cond_2

    #@81
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@83
    .line 1352
    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@85
    .line 1351
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v1

    #@89
    .line 1348
    if-eqz v1, :cond_2

    #@8b
    goto :goto_2

    #@8c
    .line 1352
    :cond_6
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@8e
    if-eqz v1, :cond_2

    #@90
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@92
    if-eqz v1, :cond_2

    #@94
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@96
    .line 1353
    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@98
    .line 1352
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v1

    #@9c
    .line 1348
    if-eqz v1, :cond_2

    #@9e
    goto :goto_3

    #@9f
    .line 1353
    :cond_7
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@a1
    if-eqz v1, :cond_2

    #@a3
    iget-object v1, v0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@a5
    if-eqz v1, :cond_2

    #@a7
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@a9
    .line 1354
    iget-object v2, v0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@ab
    .line 1353
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v1

    #@af
    .line 1348
    if-eqz v1, :cond_2

    #@b1
    goto :goto_4
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1024
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 944
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1000
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath(ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "p_includeQueryString"    # Z
    .param p2, "p_includeFragment"    # Z

    #@0
    .prologue
    .line 975
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@7
    .line 977
    .local v0, "pathString":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    #@9
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 979
    const/16 v1, 0x3f

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@12
    .line 980
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    .line 983
    :cond_0
    if-eqz p2, :cond_1

    #@19
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 985
    const/16 v1, 0x23

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22
    .line 986
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 989
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 954
    iget v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@2
    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1012
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 883
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 885
    .local v0, "schemespec":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@8
    if-nez v1, :cond_0

    #@a
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@c
    if-eqz v1, :cond_8

    #@e
    .line 887
    :cond_0
    :goto_0
    const-string/jumbo v1, "//"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 890
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 892
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    .line 893
    const/16 v1, 0x40

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22
    .line 896
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@24
    if-eqz v1, :cond_3

    #@26
    .line 898
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 901
    :cond_3
    iget v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@2d
    if-eq v1, v2, :cond_4

    #@2f
    .line 903
    const/16 v1, 0x3a

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@34
    .line 904
    iget v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@39
    .line 907
    :cond_4
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@3b
    if-eqz v1, :cond_5

    #@3d
    .line 909
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    .line 912
    :cond_5
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@44
    if-eqz v1, :cond_6

    #@46
    .line 914
    const/16 v1, 0x3f

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4b
    .line 915
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 918
    :cond_6
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@52
    if-eqz v1, :cond_7

    #@54
    .line 920
    const/16 v1, 0x23

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@59
    .line 921
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5e
    .line 924
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    return-object v1

    #@63
    .line 885
    :cond_8
    iget v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@65
    if-eq v1, v2, :cond_1

    #@67
    goto :goto_0
.end method

.method public getUserinfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 934
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isGenericURI()Z
    .locals 1

    #@0
    .prologue
    .line 1396
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "p_fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1309
    if-nez p1, :cond_0

    #@3
    .line 1311
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@5
    .line 1306
    :goto_0
    return-void

    #@6
    .line 1313
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->isGenericURI()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1315
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@e
    .line 1316
    const-string/jumbo v1, "ER_FRAG_FOR_GENERIC_URI"

    #@11
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1315
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 1318
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 1320
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@21
    .line 1321
    const-string/jumbo v1, "ER_FRAG_WHEN_PATH_NULL"

    #@24
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 1320
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 1323
    :cond_2
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isURIString(Ljava/lang/String;)Z

    #@2f
    move-result v0

    #@30
    if-nez v0, :cond_3

    #@32
    .line 1325
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@34
    const-string/jumbo v1, "ER_FRAG_INVALID_CHAR"

    #@37
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 1329
    :cond_3
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@41
    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 3
    .param p1, "p_host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1121
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_2

    #@d
    .line 1123
    :cond_0
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@f
    .line 1124
    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@11
    .line 1125
    const/4 v0, -0x1

    #@12
    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@14
    .line 1132
    :cond_1
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@16
    .line 1118
    return-void

    #@17
    .line 1127
    :cond_2
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 1129
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@1f
    const-string/jumbo v1, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    #@22
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "p_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1182
    if-nez p1, :cond_0

    #@3
    .line 1184
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    #@5
    .line 1185
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@7
    .line 1186
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    #@9
    .line 1179
    :goto_0
    return-void

    #@a
    .line 1190
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI;->initializePath(Ljava/lang/String;)V

    #@d
    goto :goto_0
.end method

.method public setPort(I)V
    .locals 3
    .param p1, "p_port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1149
    if-ltz p1, :cond_0

    #@3
    const v0, 0xffff

    #@6
    if-gt p1, v0, :cond_0

    #@8
    .line 1151
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1153
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@e
    .line 1154
    const-string/jumbo v1, "ER_PORT_WHEN_HOST_NULL"

    #@11
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1153
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 1157
    :cond_0
    const/4 v0, -0x1

    #@1a
    if-eq p1, v0, :cond_1

    #@1c
    .line 1159
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@1e
    const-string/jumbo v1, "ER_INVALID_PORT"

    #@21
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 1162
    :cond_1
    iput p1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    #@2b
    .line 1146
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1, "p_queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1270
    if-nez p1, :cond_0

    #@3
    .line 1272
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@5
    .line 1267
    :goto_0
    return-void

    #@6
    .line 1274
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->isGenericURI()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1276
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@e
    .line 1277
    const-string/jumbo v1, "Query string can only be set for a generic URI!"

    #@11
    .line 1276
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1279
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 1281
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@1d
    .line 1282
    const-string/jumbo v1, "Query string cannot be set when path is null!"

    #@20
    .line 1281
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1284
    :cond_2
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isURIString(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_3

    #@2a
    .line 1286
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@2c
    .line 1287
    const-string/jumbo v1, "Query string contains invalid character!"

    #@2f
    .line 1286
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 1291
    :cond_3
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    #@35
    goto :goto_0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 3
    .param p1, "p_scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1039
    if-nez p1, :cond_0

    #@3
    .line 1041
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@5
    const-string/jumbo v1, "ER_SCHEME_FROM_NULL_STRING"

    #@8
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1044
    :cond_0
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1046
    new-instance v0, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@18
    const-string/jumbo v1, "ER_SCHEME_NOT_CONFORMANT"

    #@1b
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 1049
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@29
    .line 1036
    return-void
.end method

.method public setUserinfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "p_userinfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1064
    if-nez p1, :cond_1

    #@3
    .line 1066
    iput-object v3, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@5
    .line 1106
    :cond_0
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    #@7
    .line 1061
    return-void

    #@8
    .line 1070
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    #@a
    if-nez v3, :cond_2

    #@c
    .line 1072
    new-instance v3, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@e
    .line 1073
    const-string/jumbo v4, "Userinfo cannot be set when host is null!"

    #@11
    .line 1072
    invoke-direct {v3, v4}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@14
    throw v3

    #@15
    .line 1078
    :cond_2
    const/4 v1, 0x0

    #@16
    .line 1079
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@19
    move-result v0

    #@1a
    .line 1080
    .local v0, "end":I
    const/4 v2, 0x0

    #@1b
    .line 1082
    :goto_0
    if-ge v1, v0, :cond_0

    #@1d
    .line 1084
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v2

    #@21
    .line 1086
    .local v2, "testChar":C
    const/16 v3, 0x25

    #@23
    if-ne v2, v3, :cond_5

    #@25
    .line 1088
    add-int/lit8 v3, v1, 0x2

    #@27
    if-ge v3, v0, :cond_4

    #@29
    add-int/lit8 v3, v1, 0x1

    #@2b
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v3

    #@2f
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_4

    #@35
    .line 1089
    add-int/lit8 v3, v1, 0x2

    #@37
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v3

    #@3b
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_4

    #@41
    .line 1102
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1091
    :cond_4
    new-instance v3, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@46
    .line 1092
    const-string/jumbo v4, "Userinfo contains invalid escape sequence!"

    #@49
    .line 1091
    invoke-direct {v3, v4}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3

    #@4d
    .line 1095
    :cond_5
    invoke-static {v2}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    #@50
    move-result v3

    #@51
    if-nez v3, :cond_3

    #@53
    .line 1096
    const-string/jumbo v3, ";:&=+$,"

    #@56
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    #@59
    move-result v3

    #@5a
    const/4 v4, -0x1

    #@5b
    if-ne v3, v4, :cond_3

    #@5d
    .line 1098
    new-instance v3, Lorg/apache/xml/utils/URI$MalformedURIException;

    #@5f
    .line 1099
    new-instance v4, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v5, "Userinfo contains invalid character:"

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    .line 1098
    invoke-direct {v3, v4}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@76
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1371
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1373
    .local v0, "uriSpecString":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1375
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    .line 1376
    const/16 v1, 0x3a

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@13
    .line 1379
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->getSchemeSpecificPart()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 1381
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method
