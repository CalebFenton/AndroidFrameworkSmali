.class final Lorg/apache/xml/serializer/utils/URI;
.super Ljava/lang/Object;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MARK_CHARACTERS:Ljava/lang/String; = "-_.!~*\'() "

.field private static final RESERVED_CHARACTERS:Ljava/lang/String; = ";/?:@&=+$,"

.field private static final SCHEME_CHARACTERS:Ljava/lang/String; = "+-."

.field private static final USERINFO_CHARACTERS:Ljava/lang/String; = ";:&=+$,"


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
    .line 147
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lorg/apache/xml/serializer/utils/URI;->DEBUG:Z

    #@3
    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 117
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@6
    .line 121
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@8
    .line 125
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@a
    .line 129
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@d
    .line 133
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@f
    .line 140
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@11
    .line 144
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@13
    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    const/4 v0, 0x0

    #@1
    check-cast v0, Lorg/apache/xml/serializer/utils/URI;

    #@3
    invoke-direct {p0, v0, p1}, Lorg/apache/xml/serializer/utils/URI;-><init>(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V

    #@6
    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "p_scheme"    # Ljava/lang/String;
    .param p2, "p_schemeSpecificPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 117
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@6
    .line 121
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@8
    .line 125
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@a
    .line 129
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@d
    .line 133
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@f
    .line 140
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@11
    .line 144
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@13
    .line 218
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
    .line 220
    :cond_0
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@21
    .line 221
    const-string/jumbo v1, "Cannot construct URI with null/empty scheme!"

    #@24
    .line 220
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 224
    :cond_1
    if-eqz p2, :cond_2

    #@2a
    .line 225
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
    .line 227
    :cond_2
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@36
    .line 228
    const-string/jumbo v1, "Cannot construct URI with null/empty scheme-specific part!"

    #@39
    .line 227
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 231
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    #@40
    .line 232
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/utils/URI;->setPath(Ljava/lang/String;)V

    #@43
    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "p_scheme"    # Ljava/lang/String;
    .param p2, "p_userinfo"    # Ljava/lang/String;
    .param p3, "p_host"    # Ljava/lang/String;
    .param p4, "p_port"    # I
    .param p5, "p_path"    # Ljava/lang/String;
    .param p6, "p_queryString"    # Ljava/lang/String;
    .param p7, "p_fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 117
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@7
    .line 121
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@9
    .line 125
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@b
    .line 129
    iput v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@d
    .line 133
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@f
    .line 140
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@11
    .line 144
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@13
    .line 291
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
    .line 293
    :cond_0
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@21
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@23
    const-string/jumbo v2, "ER_SCHEME_REQUIRED"

    #@26
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 296
    :cond_1
    if-nez p3, :cond_3

    #@30
    .line 298
    if-eqz p2, :cond_2

    #@32
    .line 300
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@34
    .line 301
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@36
    const-string/jumbo v2, "ER_NO_USERINFO_IF_NO_HOST"

    #@39
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 300
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0

    #@41
    .line 304
    :cond_2
    if-eq p4, v1, :cond_3

    #@43
    .line 306
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@45
    .line 307
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@47
    const-string/jumbo v2, "ER_NO_PORT_IF_NO_HOST"

    #@4a
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 306
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@51
    throw v0

    #@52
    .line 311
    :cond_3
    if-eqz p5, :cond_5

    #@54
    .line 313
    const/16 v0, 0x3f

    #@56
    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    #@59
    move-result v0

    #@5a
    if-eq v0, v1, :cond_4

    #@5c
    if-eqz p6, :cond_4

    #@5e
    .line 315
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@60
    .line 316
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@62
    const-string/jumbo v2, "ER_NO_QUERY_STRING_IN_PATH"

    #@65
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    .line 315
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v0

    #@6d
    .line 319
    :cond_4
    const/16 v0, 0x23

    #@6f
    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    #@72
    move-result v0

    #@73
    if-eq v0, v1, :cond_5

    #@75
    if-eqz p7, :cond_5

    #@77
    .line 321
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@79
    .line 322
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@7b
    const-string/jumbo v2, "ER_NO_FRAGMENT_STRING_IN_PATH"

    #@7e
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    .line 321
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@85
    throw v0

    #@86
    .line 326
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    #@89
    .line 327
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/utils/URI;->setHost(Ljava/lang/String;)V

    #@8c
    .line 328
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/utils/URI;->setPort(I)V

    #@8f
    .line 329
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/utils/URI;->setUserinfo(Ljava/lang/String;)V

    #@92
    .line 330
    invoke-virtual {p0, p5}, Lorg/apache/xml/serializer/utils/URI;->setPath(Ljava/lang/String;)V

    #@95
    .line 331
    invoke-virtual {p0, p6}, Lorg/apache/xml/serializer/utils/URI;->setQueryString(Ljava/lang/String;)V

    #@98
    .line 332
    invoke-virtual {p0, p7}, Lorg/apache/xml/serializer/utils/URI;->setFragment(Ljava/lang/String;)V

    #@9b
    .line 288
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
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
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
    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/utils/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 257
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serializer/utils/URI;)V
    .locals 2
    .param p1, "p_other"    # Lorg/apache/xml/serializer/utils/URI;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 117
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@6
    .line 121
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@8
    .line 125
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@a
    .line 129
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@d
    .line 133
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@f
    .line 140
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@11
    .line 144
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@13
    .line 162
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;)V

    #@16
    .line 160
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V
    .locals 2
    .param p1, "p_base"    # Lorg/apache/xml/serializer/utils/URI;
    .param p2, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 117
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@6
    .line 121
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@8
    .line 125
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@a
    .line 129
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@d
    .line 133
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@f
    .line 140
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@11
    .line 144
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@13
    .line 199
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V

    #@16
    .line 197
    return-void
.end method

.method private initialize(Lorg/apache/xml/serializer/utils/URI;)V
    .locals 1
    .param p1, "p_other"    # Lorg/apache/xml/serializer/utils/URI;

    #@0
    .prologue
    .line 343
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@6
    .line 344
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@c
    .line 345
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@12
    .line 346
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@18
    .line 347
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@1e
    .line 348
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getQueryString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@24
    .line 349
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getFragment()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@2a
    .line 340
    return-void
.end method

.method private initialize(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V
    .locals 18
    .param p1, "p_base"    # Lorg/apache/xml/serializer/utils/URI;
    .param p2, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    if-nez p1, :cond_1

    #@2
    .line 373
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
    .line 375
    :cond_0
    new-instance v13, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@10
    .line 376
    sget-object v14, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@12
    const-string/jumbo v15, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    #@15
    const/16 v16, 0x0

    #@17
    invoke-virtual/range {v14 .. v16}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v14

    #@1b
    .line 375
    invoke-direct {v13, v14}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v13

    #@1f
    .line 380
    :cond_1
    if-eqz p2, :cond_2

    #@21
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@24
    move-result-object v13

    #@25
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@28
    move-result v13

    #@29
    if-nez v13, :cond_3

    #@2b
    .line 382
    :cond_2
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;)V

    #@2e
    .line 384
    return-void

    #@2f
    .line 387
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@32
    move-result-object v11

    #@33
    .line 388
    .local v11, "uriSpec":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@36
    move-result v12

    #@37
    .line 389
    .local v12, "uriSpecLen":I
    const/4 v3, 0x0

    #@38
    .line 392
    .local v3, "index":I
    const/16 v13, 0x3a

    #@3a
    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    #@3d
    move-result v2

    #@3e
    .line 393
    .local v2, "colonIndex":I
    if-gez v2, :cond_4

    #@40
    .line 395
    if-nez p1, :cond_5

    #@42
    .line 397
    new-instance v13, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@44
    sget-object v14, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@46
    const-string/jumbo v15, "ER_NO_SCHEME_IN_URI"

    #@49
    const/16 v16, 0x1

    #@4b
    move/from16 v0, v16

    #@4d
    new-array v0, v0, [Ljava/lang/Object;

    #@4f
    move-object/from16 v16, v0

    #@51
    const/16 v17, 0x0

    #@53
    aput-object v11, v16, v17

    #@55
    invoke-virtual/range {v14 .. v16}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@58
    move-result-object v14

    #@59
    invoke-direct {v13, v14}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v13

    #@5d
    .line 402
    :cond_4
    move-object/from16 v0, p0

    #@5f
    invoke-direct {v0, v11}, Lorg/apache/xml/serializer/utils/URI;->initializeScheme(Ljava/lang/String;)V

    #@62
    .line 403
    add-int/lit8 v13, v2, 0x1

    #@64
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@67
    move-result-object v11

    #@68
    .line 404
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@6b
    move-result v12

    #@6c
    .line 408
    :cond_5
    const-string/jumbo v13, "//"

    #@6f
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@72
    move-result v13

    #@73
    if-eqz v13, :cond_7

    #@75
    .line 410
    const/4 v3, 0x2

    #@76
    .line 412
    move v8, v3

    #@77
    .line 415
    .local v8, "startPos":I
    const/4 v10, 0x0

    #@78
    .line 417
    :goto_0
    if-ge v3, v12, :cond_6

    #@7a
    .line 419
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    #@7d
    move-result v10

    #@7e
    .line 421
    .local v10, "testChar":C
    const/16 v13, 0x2f

    #@80
    if-eq v10, v13, :cond_6

    #@82
    const/16 v13, 0x3f

    #@84
    if-ne v10, v13, :cond_9

    #@86
    .line 431
    .end local v10    # "testChar":C
    :cond_6
    if-le v3, v8, :cond_a

    #@88
    .line 433
    invoke-virtual {v11, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8b
    move-result-object v13

    #@8c
    move-object/from16 v0, p0

    #@8e
    invoke-direct {v0, v13}, Lorg/apache/xml/serializer/utils/URI;->initializeAuthority(Ljava/lang/String;)V

    #@91
    .line 441
    .end local v8    # "startPos":I
    :cond_7
    :goto_1
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@94
    move-result-object v13

    #@95
    move-object/from16 v0, p0

    #@97
    invoke-direct {v0, v13}, Lorg/apache/xml/serializer/utils/URI;->initializePath(Ljava/lang/String;)V

    #@9a
    .line 448
    if-eqz p1, :cond_15

    #@9c
    .line 458
    move-object/from16 v0, p0

    #@9e
    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@a0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@a3
    move-result v13

    #@a4
    if-nez v13, :cond_b

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@aa
    if-nez v13, :cond_b

    #@ac
    move-object/from16 v0, p0

    #@ae
    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@b0
    if-nez v13, :cond_b

    #@b2
    .line 460
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    #@b5
    move-result-object v13

    #@b6
    move-object/from16 v0, p0

    #@b8
    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@ba
    .line 461
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    #@bd
    move-result-object v13

    #@be
    move-object/from16 v0, p0

    #@c0
    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@c2
    .line 462
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    #@c5
    move-result-object v13

    #@c6
    move-object/from16 v0, p0

    #@c8
    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@ca
    .line 463
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    #@cd
    move-result v13

    #@ce
    move-object/from16 v0, p0

    #@d0
    iput v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@d2
    .line 464
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    #@d5
    move-result-object v13

    #@d6
    move-object/from16 v0, p0

    #@d8
    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@da
    .line 466
    move-object/from16 v0, p0

    #@dc
    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@de
    if-nez v13, :cond_8

    #@e0
    .line 468
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getQueryString()Ljava/lang/String;

    #@e3
    move-result-object v13

    #@e4
    move-object/from16 v0, p0

    #@e6
    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@e8
    .line 471
    :cond_8
    return-void

    #@e9
    .line 421
    .restart local v8    # "startPos":I
    .restart local v10    # "testChar":C
    :cond_9
    const/16 v13, 0x23

    #@eb
    if-eq v10, v13, :cond_6

    #@ed
    .line 426
    add-int/lit8 v3, v3, 0x1

    #@ef
    goto :goto_0

    #@f0
    .line 437
    .end local v10    # "testChar":C
    :cond_a
    const-string/jumbo v13, ""

    #@f3
    move-object/from16 v0, p0

    #@f5
    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@f7
    goto :goto_1

    #@f8
    .line 476
    .end local v8    # "startPos":I
    :cond_b
    move-object/from16 v0, p0

    #@fa
    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@fc
    if-nez v13, :cond_c

    #@fe
    .line 478
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    #@101
    move-result-object v13

    #@102
    move-object/from16 v0, p0

    #@104
    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@106
    .line 483
    :cond_c
    move-object/from16 v0, p0

    #@108
    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@10a
    if-nez v13, :cond_d

    #@10c
    .line 485
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    #@10f
    move-result-object v13

    #@110
    move-object/from16 v0, p0

    #@112
    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@114
    .line 486
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    #@117
    move-result-object v13

    #@118
    move-object/from16 v0, p0

    #@11a
    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@11c
    .line 487
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    #@11f
    move-result v13

    #@120
    move-object/from16 v0, p0

    #@122
    iput v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@124
    .line 495
    move-object/from16 v0, p0

    #@126
    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@128
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@12b
    move-result v13

    #@12c
    if-lez v13, :cond_e

    #@12e
    move-object/from16 v0, p0

    #@130
    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@132
    const-string/jumbo v14, "/"

    #@135
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@138
    move-result v13

    #@139
    if-eqz v13, :cond_e

    #@13b
    .line 497
    return-void

    #@13c
    .line 491
    :cond_d
    return-void

    #@13d
    .line 502
    :cond_e
    new-instance v5, Ljava/lang/String;

    #@13f
    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    #@142
    .line 503
    .local v5, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    #@145
    move-result-object v1

    #@146
    .line 506
    .local v1, "basePath":Ljava/lang/String;
    if-eqz v1, :cond_f

    #@148
    .line 508
    const/16 v13, 0x2f

    #@14a
    invoke-virtual {v1, v13}, Ljava/lang/String;->lastIndexOf(I)I

    #@14d
    move-result v4

    #@14e
    .line 510
    .local v4, "lastSlash":I
    const/4 v13, -0x1

    #@14f
    if-eq v4, v13, :cond_f

    #@151
    .line 512
    add-int/lit8 v13, v4, 0x1

    #@153
    const/4 v14, 0x0

    #@154
    invoke-virtual {v1, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@157
    move-result-object v5

    #@158
    .line 517
    .end local v4    # "lastSlash":I
    :cond_f
    move-object/from16 v0, p0

    #@15a
    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@15c
    invoke-virtual {v5, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@15f
    move-result-object v5

    #@160
    .line 520
    const/4 v3, -0x1

    #@161
    .line 522
    :goto_2
    const-string/jumbo v13, "/./"

    #@164
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@167
    move-result v3

    #@168
    const/4 v13, -0x1

    #@169
    if-eq v3, v13, :cond_10

    #@16b
    .line 524
    add-int/lit8 v13, v3, 0x1

    #@16d
    const/4 v14, 0x0

    #@16e
    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@171
    move-result-object v13

    #@172
    add-int/lit8 v14, v3, 0x3

    #@174
    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@177
    move-result-object v14

    #@178
    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@17b
    move-result-object v5

    #@17c
    goto :goto_2

    #@17d
    .line 528
    :cond_10
    const-string/jumbo v13, "/."

    #@180
    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@183
    move-result v13

    #@184
    if-eqz v13, :cond_11

    #@186
    .line 530
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@189
    move-result v13

    #@18a
    add-int/lit8 v13, v13, -0x1

    #@18c
    const/4 v14, 0x0

    #@18d
    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@190
    move-result-object v5

    #@191
    .line 535
    :cond_11
    const/4 v3, -0x1

    #@192
    .line 537
    const/4 v6, -0x1

    #@193
    .line 538
    .local v6, "segIndex":I
    const/4 v9, 0x0

    #@194
    .line 540
    :cond_12
    :goto_3
    const-string/jumbo v13, "/../"

    #@197
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@19a
    move-result v3

    #@19b
    if-lez v3, :cond_13

    #@19d
    .line 542
    const-string/jumbo v13, "/../"

    #@1a0
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1a3
    move-result v13

    #@1a4
    const/4 v14, 0x0

    #@1a5
    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a8
    move-result-object v9

    #@1a9
    .line 543
    .local v9, "tempString":Ljava/lang/String;
    const/16 v13, 0x2f

    #@1ab
    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    #@1ae
    move-result v6

    #@1af
    .line 545
    const/4 v13, -0x1

    #@1b0
    if-eq v6, v13, :cond_12

    #@1b2
    .line 547
    add-int/lit8 v7, v6, 0x1

    #@1b4
    .end local v6    # "segIndex":I
    .local v7, "segIndex":I
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b7
    move-result-object v13

    #@1b8
    const-string/jumbo v14, ".."

    #@1bb
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1be
    move-result v13

    #@1bf
    if-nez v13, :cond_16

    #@1c1
    .line 549
    const/4 v13, 0x0

    #@1c2
    invoke-virtual {v5, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c5
    move-result-object v13

    #@1c6
    add-int/lit8 v14, v3, 0x4

    #@1c8
    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1cb
    move-result-object v14

    #@1cc
    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@1cf
    move-result-object v5

    #@1d0
    move v6, v7

    #@1d1
    .end local v7    # "segIndex":I
    .restart local v6    # "segIndex":I
    goto :goto_3

    #@1d2
    .line 557
    .end local v9    # "tempString":Ljava/lang/String;
    :cond_13
    const-string/jumbo v13, "/.."

    #@1d5
    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1d8
    move-result v13

    #@1d9
    if-eqz v13, :cond_14

    #@1db
    .line 559
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@1de
    move-result v13

    #@1df
    add-int/lit8 v13, v13, -0x3

    #@1e1
    const/4 v14, 0x0

    #@1e2
    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e5
    move-result-object v9

    #@1e6
    .line 560
    .restart local v9    # "tempString":Ljava/lang/String;
    const/16 v13, 0x2f

    #@1e8
    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    #@1eb
    move-result v6

    #@1ec
    .line 562
    const/4 v13, -0x1

    #@1ed
    if-eq v6, v13, :cond_14

    #@1ef
    .line 564
    add-int/lit8 v13, v6, 0x1

    #@1f1
    const/4 v14, 0x0

    #@1f2
    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f5
    move-result-object v5

    #@1f6
    .line 568
    .end local v9    # "tempString":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    #@1f8
    iput-object v5, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@1fa
    .line 369
    .end local v1    # "basePath":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "segIndex":I
    :cond_15
    return-void

    #@1fb
    .restart local v1    # "basePath":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "segIndex":I
    .restart local v9    # "tempString":Ljava/lang/String;
    :cond_16
    move v6, v7

    #@1fc
    .end local v7    # "segIndex":I
    .restart local v6    # "segIndex":I
    goto :goto_3
.end method

.method private initializeAuthority(Ljava/lang/String;)V
    .locals 14
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v13, 0x40

    #@2
    const/16 v12, 0x3a

    #@4
    .line 625
    const/4 v3, 0x0

    #@5
    .line 626
    .local v3, "index":I
    const/4 v7, 0x0

    #@6
    .line 627
    .local v7, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    .line 628
    .local v0, "end":I
    const/4 v8, 0x0

    #@b
    .line 629
    .local v8, "testChar":C
    const/4 v9, 0x0

    #@c
    .line 632
    .local v9, "userinfo":Ljava/lang/String;
    invoke-virtual {p1, v13, v7}, Ljava/lang/String;->indexOf(II)I

    #@f
    move-result v10

    #@10
    const/4 v11, -0x1

    #@11
    if-eq v10, v11, :cond_1

    #@13
    .line 634
    .end local v8    # "testChar":C
    :goto_0
    if-ge v3, v0, :cond_0

    #@15
    .line 636
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v8

    #@19
    .line 638
    .local v8, "testChar":C
    if-ne v8, v13, :cond_3

    #@1b
    .line 646
    .end local v8    # "testChar":C
    :cond_0
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v9

    #@1f
    .line 648
    .local v9, "userinfo":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    #@21
    .line 652
    .end local v9    # "userinfo":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@22
    .line 654
    .local v1, "host":Ljava/lang/String;
    move v7, v3

    #@23
    .line 656
    :goto_1
    if-ge v3, v0, :cond_2

    #@25
    .line 658
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v8

    #@29
    .line 660
    .restart local v8    # "testChar":C
    if-ne v8, v12, :cond_4

    #@2b
    .line 668
    .end local v8    # "testChar":C
    :cond_2
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 670
    .local v1, "host":Ljava/lang/String;
    const/4 v5, -0x1

    #@30
    .line 672
    .local v5, "port":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@33
    move-result v10

    #@34
    if-lez v10, :cond_8

    #@36
    .line 676
    if-ne v8, v12, :cond_8

    #@38
    .line 678
    add-int/lit8 v3, v3, 0x1

    #@3a
    .line 680
    move v7, v3

    #@3b
    .line 682
    :goto_2
    if-ge v3, v0, :cond_5

    #@3d
    .line 684
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_2

    #@40
    .line 643
    .end local v1    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    .restart local v8    # "testChar":C
    .local v9, "userinfo":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_0

    #@43
    .line 665
    .end local v9    # "userinfo":Ljava/lang/String;
    .local v1, "host":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@45
    goto :goto_1

    #@46
    .line 687
    .end local v8    # "testChar":C
    .local v1, "host":Ljava/lang/String;
    .restart local v5    # "port":I
    :cond_5
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 689
    .local v6, "portStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@4d
    move-result v10

    #@4e
    if-lez v10, :cond_8

    #@50
    .line 691
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
    .line 693
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    #@5a
    move-result v10

    #@5b
    invoke-static {v10}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    #@5e
    move-result v10

    #@5f
    if-nez v10, :cond_6

    #@61
    .line 695
    new-instance v10, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@63
    .line 696
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
    .line 695
    invoke-direct {v10, v11}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v10

    #@7b
    .line 691
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@7d
    goto :goto_3

    #@7e
    .line 702
    :cond_7
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    move-result v5

    #@82
    .line 713
    .end local v2    # "i":I
    .end local v6    # "portStr":Ljava/lang/String;
    :cond_8
    :goto_4
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/utils/URI;->setHost(Ljava/lang/String;)V

    #@85
    .line 714
    invoke-virtual {p0, v5}, Lorg/apache/xml/serializer/utils/URI;->setPort(I)V

    #@88
    .line 715
    invoke-virtual {p0, v9}, Lorg/apache/xml/serializer/utils/URI;->setUserinfo(Ljava/lang/String;)V

    #@8b
    .line 622
    return-void

    #@8c
    .line 705
    .restart local v2    # "i":I
    .restart local v6    # "portStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@8d
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_4
.end method

.method private initializePath(Ljava/lang/String;)V
    .locals 10
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
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
    .line 728
    if-nez p1, :cond_0

    #@9
    .line 730
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@b
    .line 731
    const-string/jumbo v5, "Cannot initialize path from null string!"

    #@e
    .line 730
    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@11
    throw v4

    #@12
    .line 734
    :cond_0
    const/4 v1, 0x0

    #@13
    .line 735
    .local v1, "index":I
    const/4 v2, 0x0

    #@14
    .line 736
    .local v2, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v0

    #@18
    .line 737
    .local v0, "end":I
    const/4 v3, 0x0

    #@19
    .line 740
    :goto_0
    if-ge v1, v0, :cond_1

    #@1b
    .line 742
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v3

    #@1f
    .line 744
    .local v3, "testChar":C
    if-eq v3, v7, :cond_1

    #@21
    if-ne v3, v5, :cond_5

    #@23
    .line 770
    .end local v3    # "testChar":C
    :cond_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    iput-object v4, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@29
    .line 773
    if-ne v3, v7, :cond_3

    #@2b
    .line 775
    add-int/lit8 v1, v1, 0x1

    #@2d
    .line 777
    move v2, v1

    #@2e
    .line 779
    :goto_1
    if-ge v1, v0, :cond_2

    #@30
    .line 781
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v3

    #@34
    .line 783
    .restart local v3    # "testChar":C
    if-ne v3, v5, :cond_9

    #@36
    .line 807
    .end local v3    # "testChar":C
    :cond_2
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    iput-object v4, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@3c
    .line 811
    :cond_3
    if-ne v3, v5, :cond_10

    #@3e
    .line 813
    add-int/lit8 v1, v1, 0x1

    #@40
    .line 815
    move v2, v1

    #@41
    .line 817
    :goto_2
    if-ge v1, v0, :cond_f

    #@43
    .line 819
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@46
    move-result v3

    #@47
    .line 821
    .restart local v3    # "testChar":C
    if-ne v3, v6, :cond_e

    #@49
    .line 823
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
    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_d

    #@59
    .line 824
    add-int/lit8 v4, v1, 0x2

    #@5b
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@5e
    move-result v4

    #@5f
    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    #@62
    move-result v4

    #@63
    if-eqz v4, :cond_d

    #@65
    .line 837
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@67
    goto :goto_2

    #@68
    .line 750
    :cond_5
    if-ne v3, v6, :cond_8

    #@6a
    .line 752
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
    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    #@77
    move-result v4

    #@78
    if-eqz v4, :cond_7

    #@7a
    .line 753
    add-int/lit8 v4, v1, 0x2

    #@7c
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@7f
    move-result v4

    #@80
    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    #@83
    move-result v4

    #@84
    if-eqz v4, :cond_7

    #@86
    .line 767
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@88
    goto :goto_0

    #@89
    .line 755
    :cond_7
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@8b
    .line 756
    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@8d
    const-string/jumbo v6, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    #@90
    invoke-virtual {v5, v6, v8}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@93
    move-result-object v5

    #@94
    .line 755
    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@97
    throw v4

    #@98
    .line 759
    :cond_8
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    #@9b
    move-result v4

    #@9c
    if-nez v4, :cond_6

    #@9e
    .line 760
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    #@a1
    move-result v4

    #@a2
    if-nez v4, :cond_6

    #@a4
    .line 762
    const/16 v4, 0x5c

    #@a6
    if-eq v4, v3, :cond_6

    #@a8
    .line 763
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@aa
    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@ac
    const-string/jumbo v6, "ER_PATH_INVALID_CHAR"

    #@af
    const/4 v7, 0x1

    #@b0
    new-array v7, v7, [Ljava/lang/Object;

    #@b2
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@b5
    move-result-object v8

    #@b6
    const/4 v9, 0x0

    #@b7
    aput-object v8, v7, v9

    #@b9
    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@bc
    move-result-object v5

    #@bd
    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@c0
    throw v4

    #@c1
    .line 788
    :cond_9
    if-ne v3, v6, :cond_c

    #@c3
    .line 790
    add-int/lit8 v4, v1, 0x2

    #@c5
    if-ge v4, v0, :cond_b

    #@c7
    add-int/lit8 v4, v1, 0x1

    #@c9
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@cc
    move-result v4

    #@cd
    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    #@d0
    move-result v4

    #@d1
    if-eqz v4, :cond_b

    #@d3
    .line 791
    add-int/lit8 v4, v1, 0x2

    #@d5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@d8
    move-result v4

    #@d9
    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    #@dc
    move-result v4

    #@dd
    if-eqz v4, :cond_b

    #@df
    .line 804
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@e1
    goto/16 :goto_1

    #@e3
    .line 793
    :cond_b
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@e5
    .line 794
    const-string/jumbo v5, "Query string contains invalid escape sequence!"

    #@e8
    .line 793
    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@eb
    throw v4

    #@ec
    .line 797
    :cond_c
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    #@ef
    move-result v4

    #@f0
    if-nez v4, :cond_a

    #@f2
    .line 798
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    #@f5
    move-result v4

    #@f6
    if-nez v4, :cond_a

    #@f8
    .line 800
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@fa
    .line 801
    new-instance v5, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v6, "Query string contains invalid character:"

    #@102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v5

    #@106
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@109
    move-result-object v5

    #@10a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v5

    #@10e
    .line 800
    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@111
    throw v4

    #@112
    .line 826
    :cond_d
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@114
    .line 827
    const-string/jumbo v5, "Fragment contains invalid escape sequence!"

    #@117
    .line 826
    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@11a
    throw v4

    #@11b
    .line 830
    :cond_e
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    #@11e
    move-result v4

    #@11f
    if-nez v4, :cond_4

    #@121
    .line 831
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    #@124
    move-result v4

    #@125
    if-nez v4, :cond_4

    #@127
    .line 833
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@129
    .line 834
    new-instance v5, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v6, "Fragment contains invalid character:"

    #@131
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v5

    #@135
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@138
    move-result-object v5

    #@139
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v5

    #@13d
    .line 833
    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@140
    throw v4

    #@141
    .line 840
    .end local v3    # "testChar":C
    :cond_f
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@144
    move-result-object v4

    #@145
    iput-object v4, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@147
    .line 725
    :cond_10
    return-void
.end method

.method private initializeScheme(Ljava/lang/String;)V
    .locals 8
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 583
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    .line 584
    .local v3, "uriSpecLen":I
    const/4 v0, 0x0

    #@6
    .line 585
    .local v0, "index":I
    const/4 v1, 0x0

    #@7
    .line 586
    .local v1, "scheme":Ljava/lang/String;
    const/4 v2, 0x0

    #@8
    .line 588
    :goto_0
    if-ge v0, v3, :cond_0

    #@a
    .line 590
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v2

    #@e
    .line 592
    .local v2, "testChar":C
    const/16 v4, 0x3a

    #@10
    if-eq v2, v4, :cond_0

    #@12
    const/16 v4, 0x2f

    #@14
    if-ne v2, v4, :cond_1

    #@16
    .line 601
    .end local v2    # "testChar":C
    :cond_0
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 603
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_2

    #@20
    .line 605
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@22
    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@24
    const-string/jumbo v6, "ER_NO_SCHEME_INURI"

    #@27
    const/4 v7, 0x0

    #@28
    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v4

    #@30
    .line 592
    .local v1, "scheme":Ljava/lang/String;
    .restart local v2    # "testChar":C
    :cond_1
    const/16 v4, 0x3f

    #@32
    if-eq v2, v4, :cond_0

    #@34
    .line 593
    const/16 v4, 0x23

    #@36
    if-eq v2, v4, :cond_0

    #@38
    .line 598
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 609
    .end local v2    # "testChar":C
    .local v1, "scheme":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    #@3e
    .line 580
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
    .line 1561
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
    .line 1562
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
    .line 1574
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isAlpha(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

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
    .line 1391
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
    .line 1393
    :cond_0
    return v4

    #@e
    .line 1396
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v2

    #@12
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isAlpha(C)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_2

    #@18
    .line 1398
    return v4

    #@19
    .line 1403
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
    .line 1405
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v1

    #@24
    .line 1407
    .local v1, "testChar":C
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

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
    .line 1409
    return v4

    #@35
    .line 1403
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1413
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
    .line 1535
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
    .line 1548
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

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
    .line 1549
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
    .line 1587
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
    .line 1614
    if-nez p0, :cond_0

    #@3
    .line 1616
    return v4

    #@4
    .line 1619
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    .line 1620
    .local v0, "end":I
    const/4 v2, 0x0

    #@9
    .line 1622
    .local v2, "testChar":C
    const/4 v1, 0x0

    #@a
    .end local v2    # "testChar":C
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@c
    .line 1624
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v2

    #@10
    .line 1626
    .local v2, "testChar":C
    const/16 v3, 0x25

    #@12
    if-ne v2, v3, :cond_3

    #@14
    .line 1628
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
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 1629
    add-int/lit8 v3, v1, 0x2

    #@26
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v3

    #@2a
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_2

    #@30
    .line 1635
    add-int/lit8 v1, v1, 0x2

    #@32
    .line 1622
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1631
    :cond_2
    return v4

    #@36
    .line 1641
    :cond_3
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    #@39
    move-result v3

    #@3a
    if-nez v3, :cond_1

    #@3c
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    #@3f
    move-result v3

    #@40
    if-nez v3, :cond_1

    #@42
    .line 1647
    return v4

    #@43
    .line 1651
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
    .line 1599
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

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
    .line 1432
    if-nez p0, :cond_0

    #@5
    .line 1434
    return v7

    #@6
    .line 1437
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 1438
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    .line 1440
    .local v0, "addrLength":I
    if-eqz v0, :cond_1

    #@10
    const/16 v6, 0xff

    #@12
    if-le v0, v6, :cond_2

    #@14
    .line 1442
    :cond_1
    return v7

    #@15
    .line 1445
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
    .line 1447
    :cond_3
    return v7

    #@28
    .line 1453
    :cond_4
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    #@2b
    move-result v3

    #@2c
    .line 1455
    .local v3, "index":I
    const-string/jumbo v6, "."

    #@2f
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_5

    #@35
    .line 1457
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    #@3c
    move-result v3

    #@3d
    .line 1460
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
    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_b

    #@4d
    .line 1463
    const/4 v4, 0x0

    #@4e
    .line 1468
    .local v4, "numDots":I
    const/4 v2, 0x0

    #@4f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_a

    #@51
    .line 1470
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@54
    move-result v5

    #@55
    .line 1472
    .local v5, "testChar":C
    if-ne v5, v8, :cond_9

    #@57
    .line 1474
    add-int/lit8 v6, v2, -0x1

    #@59
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    #@5c
    move-result v6

    #@5d
    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    #@60
    move-result v6

    #@61
    if-eqz v6, :cond_8

    #@63
    .line 1475
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
    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    #@70
    move-result v6

    #@71
    if-eqz v6, :cond_8

    #@73
    .line 1480
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@75
    .line 1468
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@77
    goto :goto_0

    #@78
    .line 1477
    :cond_8
    return v7

    #@79
    .line 1482
    :cond_9
    invoke-static {v5}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    #@7c
    move-result v6

    #@7d
    if-nez v6, :cond_7

    #@7f
    .line 1484
    return v7

    #@80
    .line 1488
    .end local v5    # "testChar":C
    :cond_a
    const/4 v6, 0x3

    #@81
    if-eq v4, v6, :cond_10

    #@83
    .line 1490
    return v7

    #@84
    .line 1500
    .end local v2    # "i":I
    .end local v4    # "numDots":I
    :cond_b
    const/4 v2, 0x0

    #@85
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_10

    #@87
    .line 1502
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@8a
    move-result v5

    #@8b
    .line 1504
    .restart local v5    # "testChar":C
    if-ne v5, v8, :cond_f

    #@8d
    .line 1506
    add-int/lit8 v6, v2, -0x1

    #@8f
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    #@92
    move-result v6

    #@93
    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    #@96
    move-result v6

    #@97
    if-nez v6, :cond_c

    #@99
    .line 1508
    return v7

    #@9a
    .line 1511
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
    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    #@a7
    move-result v6

    #@a8
    if-eqz v6, :cond_e

    #@aa
    .line 1500
    :cond_d
    add-int/lit8 v2, v2, 0x1

    #@ac
    goto :goto_1

    #@ad
    .line 1513
    :cond_e
    return v7

    #@ae
    .line 1516
    :cond_f
    invoke-static {v5}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    #@b1
    move-result v6

    #@b2
    if-nez v6, :cond_d

    #@b4
    const/16 v6, 0x2d

    #@b6
    if-eq v5, v6, :cond_d

    #@b8
    .line 1518
    return v7

    #@b9
    .line 1523
    .end local v5    # "testChar":C
    :cond_10
    const/4 v6, 0x1

    #@ba
    return v6
.end method


# virtual methods
.method public appendPath(Ljava/lang/String;)V
    .locals 5
    .param p1, "p_addToPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1190
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
    .line 1192
    :cond_0
    return-void

    #@f
    .line 1195
    :cond_1
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_2

    #@15
    .line 1197
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@17
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@19
    const-string/jumbo v2, "ER_PATH_INVALID_CHAR"

    #@1c
    new-array v3, v3, [Ljava/lang/Object;

    #@1e
    aput-object p1, v3, v4

    #@20
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 1200
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_3

    #@2c
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@2e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@35
    move-result v0

    #@36
    if-nez v0, :cond_5

    #@38
    .line 1202
    :cond_3
    const-string/jumbo v0, "/"

    #@3b
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_4

    #@41
    .line 1204
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@43
    .line 1187
    :goto_0
    return-void

    #@44
    .line 1208
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v1, "/"

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@5a
    goto :goto_0

    #@5b
    .line 1211
    :cond_5
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@5d
    const-string/jumbo v1, "/"

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_7

    #@66
    .line 1213
    const-string/jumbo v0, "/"

    #@69
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_6

    #@6f
    .line 1215
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@71
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@7b
    goto :goto_0

    #@7c
    .line 1219
    :cond_6
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@7e
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@84
    goto :goto_0

    #@85
    .line 1224
    :cond_7
    const-string/jumbo v0, "/"

    #@88
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8b
    move-result v0

    #@8c
    if-eqz v0, :cond_8

    #@8e
    .line 1226
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@90
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@96
    goto :goto_0

    #@97
    .line 1230
    :cond_8
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@99
    new-instance v1, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v2, "/"

    #@a1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@b0
    move-result-object v0

    #@b1
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@b3
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "p_test"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1324
    instance-of v1, p1, Lorg/apache/xml/serializer/utils/URI;

    #@2
    if-eqz v1, :cond_2

    #@4
    move-object v0, p1

    #@5
    .line 1326
    check-cast v0, Lorg/apache/xml/serializer/utils/URI;

    #@7
    .line 1328
    .local v0, "testURI":Lorg/apache/xml/serializer/utils/URI;
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@9
    if-nez v1, :cond_1

    #@b
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@d
    if-nez v1, :cond_1

    #@f
    .line 1329
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@11
    if-nez v1, :cond_3

    #@13
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@15
    if-nez v1, :cond_3

    #@17
    .line 1330
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@19
    if-nez v1, :cond_4

    #@1b
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@1d
    if-nez v1, :cond_4

    #@1f
    .line 1331
    :goto_1
    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@21
    iget v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@23
    if-ne v1, v2, :cond_2

    #@25
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@27
    if-nez v1, :cond_5

    #@29
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@2b
    if-nez v1, :cond_5

    #@2d
    .line 1332
    :goto_2
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@2f
    if-nez v1, :cond_6

    #@31
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@33
    if-nez v1, :cond_6

    #@35
    .line 1333
    :goto_3
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@37
    if-nez v1, :cond_7

    #@39
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@3b
    if-nez v1, :cond_7

    #@3d
    .line 1336
    :goto_4
    const/4 v1, 0x1

    #@3e
    return v1

    #@3f
    .line 1328
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@41
    if-eqz v1, :cond_2

    #@43
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@45
    if-eqz v1, :cond_2

    #@47
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@49
    .line 1329
    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@4b
    .line 1328
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v1

    #@4f
    if-nez v1, :cond_0

    #@51
    .line 1340
    .end local v0    # "testURI":Lorg/apache/xml/serializer/utils/URI;
    :cond_2
    const/4 v1, 0x0

    #@52
    return v1

    #@53
    .line 1329
    .restart local v0    # "testURI":Lorg/apache/xml/serializer/utils/URI;
    :cond_3
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@55
    if-eqz v1, :cond_2

    #@57
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@59
    if-eqz v1, :cond_2

    #@5b
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@5d
    .line 1330
    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@5f
    .line 1329
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v1

    #@63
    .line 1328
    if-eqz v1, :cond_2

    #@65
    goto :goto_0

    #@66
    .line 1330
    :cond_4
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@68
    if-eqz v1, :cond_2

    #@6a
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@6c
    if-eqz v1, :cond_2

    #@6e
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@70
    .line 1331
    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@72
    .line 1330
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v1

    #@76
    .line 1328
    if-eqz v1, :cond_2

    #@78
    goto :goto_1

    #@79
    .line 1331
    :cond_5
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@7b
    if-eqz v1, :cond_2

    #@7d
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@7f
    if-eqz v1, :cond_2

    #@81
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@83
    .line 1332
    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@85
    .line 1331
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v1

    #@89
    .line 1328
    if-eqz v1, :cond_2

    #@8b
    goto :goto_2

    #@8c
    .line 1332
    :cond_6
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@8e
    if-eqz v1, :cond_2

    #@90
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@92
    if-eqz v1, :cond_2

    #@94
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@96
    .line 1333
    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@98
    .line 1332
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v1

    #@9c
    .line 1328
    if-eqz v1, :cond_2

    #@9e
    goto :goto_3

    #@9f
    .line 1333
    :cond_7
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@a1
    if-eqz v1, :cond_2

    #@a3
    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@a5
    if-eqz v1, :cond_2

    #@a7
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@a9
    .line 1334
    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@ab
    .line 1333
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v1

    #@af
    .line 1328
    if-eqz v1, :cond_2

    #@b1
    goto :goto_4
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 924
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 980
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath(ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "p_includeQueryString"    # Z
    .param p2, "p_includeFragment"    # Z

    #@0
    .prologue
    .line 955
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@7
    .line 957
    .local v0, "pathString":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    #@9
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 959
    const/16 v1, 0x3f

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@12
    .line 960
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    .line 963
    :cond_0
    if-eqz p2, :cond_1

    #@19
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 965
    const/16 v1, 0x23

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22
    .line 966
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 969
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
    .line 934
    iget v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@2
    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 992
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 851
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 863
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 865
    .local v0, "schemespec":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@8
    if-nez v1, :cond_0

    #@a
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@c
    if-eqz v1, :cond_8

    #@e
    .line 867
    :cond_0
    :goto_0
    const-string/jumbo v1, "//"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 870
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 872
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    .line 873
    const/16 v1, 0x40

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22
    .line 876
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@24
    if-eqz v1, :cond_3

    #@26
    .line 878
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 881
    :cond_3
    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@2d
    if-eq v1, v2, :cond_4

    #@2f
    .line 883
    const/16 v1, 0x3a

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@34
    .line 884
    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@39
    .line 887
    :cond_4
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@3b
    if-eqz v1, :cond_5

    #@3d
    .line 889
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    .line 892
    :cond_5
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@44
    if-eqz v1, :cond_6

    #@46
    .line 894
    const/16 v1, 0x3f

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4b
    .line 895
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 898
    :cond_6
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@52
    if-eqz v1, :cond_7

    #@54
    .line 900
    const/16 v1, 0x23

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@59
    .line 901
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5e
    .line 904
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    return-object v1

    #@63
    .line 865
    :cond_8
    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@65
    if-eq v1, v2, :cond_1

    #@67
    goto :goto_0
.end method

.method public getUserinfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 914
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isGenericURI()Z
    .locals 1

    #@0
    .prologue
    .line 1376
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

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
    .locals 4
    .param p1, "p_fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1289
    if-nez p1, :cond_0

    #@3
    .line 1291
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@5
    .line 1286
    :goto_0
    return-void

    #@6
    .line 1293
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->isGenericURI()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1295
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@e
    .line 1296
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@10
    const-string/jumbo v2, "ER_FRAG_FOR_GENERIC_URI"

    #@13
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 1295
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 1298
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 1300
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@23
    .line 1301
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@25
    const-string/jumbo v2, "ER_FRAG_WHEN_PATH_NULL"

    #@28
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 1300
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 1303
    :cond_2
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_3

    #@36
    .line 1305
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@38
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@3a
    const-string/jumbo v2, "ER_FRAG_INVALID_CHAR"

    #@3d
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 1309
    :cond_3
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@47
    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 4
    .param p1, "p_host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1101
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
    .line 1103
    :cond_0
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@f
    .line 1104
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@11
    .line 1105
    const/4 v0, -0x1

    #@12
    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@14
    .line 1112
    :cond_1
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@16
    .line 1098
    return-void

    #@17
    .line 1107
    :cond_2
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 1109
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@1f
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@21
    const-string/jumbo v2, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    #@24
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "p_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1162
    if-nez p1, :cond_0

    #@3
    .line 1164
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    #@5
    .line 1165
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@7
    .line 1166
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    #@9
    .line 1159
    :goto_0
    return-void

    #@a
    .line 1170
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->initializePath(Ljava/lang/String;)V

    #@d
    goto :goto_0
.end method

.method public setPort(I)V
    .locals 4
    .param p1, "p_port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1129
    if-ltz p1, :cond_0

    #@3
    const v0, 0xffff

    #@6
    if-gt p1, v0, :cond_0

    #@8
    .line 1131
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1133
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@e
    .line 1134
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@10
    const-string/jumbo v2, "ER_PORT_WHEN_HOST_NULL"

    #@13
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 1133
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 1137
    :cond_0
    const/4 v0, -0x1

    #@1c
    if-eq p1, v0, :cond_1

    #@1e
    .line 1139
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@20
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@22
    const-string/jumbo v2, "ER_INVALID_PORT"

    #@25
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 1142
    :cond_1
    iput p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    #@2f
    .line 1126
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1, "p_queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1250
    if-nez p1, :cond_0

    #@3
    .line 1252
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@5
    .line 1247
    :goto_0
    return-void

    #@6
    .line 1254
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->isGenericURI()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1256
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@e
    .line 1257
    const-string/jumbo v1, "Query string can only be set for a generic URI!"

    #@11
    .line 1256
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1259
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 1261
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@1d
    .line 1262
    const-string/jumbo v1, "Query string cannot be set when path is null!"

    #@20
    .line 1261
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1264
    :cond_2
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_3

    #@2a
    .line 1266
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@2c
    .line 1267
    const-string/jumbo v1, "Query string contains invalid character!"

    #@2f
    .line 1266
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 1271
    :cond_3
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    #@35
    goto :goto_0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 4
    .param p1, "p_scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1019
    if-nez p1, :cond_0

    #@3
    .line 1021
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@5
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@7
    const-string/jumbo v2, "ER_SCHEME_FROM_NULL_STRING"

    #@a
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1024
    :cond_0
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 1026
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@1a
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@1c
    const-string/jumbo v2, "ER_SCHEME_NOT_CONFORMANT"

    #@1f
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 1029
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@2d
    .line 1016
    return-void
.end method

.method public setUserinfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "p_userinfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1044
    if-nez p1, :cond_1

    #@3
    .line 1046
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@5
    .line 1086
    :cond_0
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    #@7
    .line 1041
    return-void

    #@8
    .line 1050
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    #@a
    if-nez v3, :cond_2

    #@c
    .line 1052
    new-instance v3, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@e
    .line 1053
    const-string/jumbo v4, "Userinfo cannot be set when host is null!"

    #@11
    .line 1052
    invoke-direct {v3, v4}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@14
    throw v3

    #@15
    .line 1058
    :cond_2
    const/4 v1, 0x0

    #@16
    .line 1059
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@19
    move-result v0

    #@1a
    .line 1060
    .local v0, "end":I
    const/4 v2, 0x0

    #@1b
    .line 1062
    :goto_0
    if-ge v1, v0, :cond_0

    #@1d
    .line 1064
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v2

    #@21
    .line 1066
    .local v2, "testChar":C
    const/16 v3, 0x25

    #@23
    if-ne v2, v3, :cond_5

    #@25
    .line 1068
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
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_4

    #@35
    .line 1069
    add-int/lit8 v3, v1, 0x2

    #@37
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v3

    #@3b
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_4

    #@41
    .line 1082
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1071
    :cond_4
    new-instance v3, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@46
    .line 1072
    const-string/jumbo v4, "Userinfo contains invalid escape sequence!"

    #@49
    .line 1071
    invoke-direct {v3, v4}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3

    #@4d
    .line 1075
    :cond_5
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    #@50
    move-result v3

    #@51
    if-nez v3, :cond_3

    #@53
    .line 1076
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
    .line 1078
    new-instance v3, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    #@5f
    .line 1079
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
    .line 1078
    invoke-direct {v3, v4}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    #@76
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1351
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1353
    .local v0, "uriSpecString":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1355
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    .line 1356
    const/16 v1, 0x3a

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@13
    .line 1359
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getSchemeSpecificPart()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 1361
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method
