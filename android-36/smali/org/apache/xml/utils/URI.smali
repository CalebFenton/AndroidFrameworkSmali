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
.field private static greylist DEBUG:Z = false

.field private static final greylist MARK_CHARACTERS:Ljava/lang/String; = "-_.!~*\'() "

.field private static final greylist RESERVED_CHARACTERS:Ljava/lang/String; = ";/?:@&=+$,"

.field private static final greylist SCHEME_CHARACTERS:Ljava/lang/String; = "+-."

.field private static final greylist USERINFO_CHARACTERS:Ljava/lang/String; = ";:&=+$,"

.field static final whitelist serialVersionUID:J = 0x627b00ac4eb312a9L


# instance fields
.field private greylist m_fragment:Ljava/lang/String;

.field private greylist m_host:Ljava/lang/String;

.field private greylist m_path:Ljava/lang/String;

.field private greylist m_port:I

.field private greylist m_queryString:Ljava/lang/String;

.field private greylist m_scheme:Ljava/lang/String;

.field private greylist m_userinfo:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 126
    iput v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 130
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, v0, p1}, Lorg/apache/xml/utils/URI;-><init>(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 126
    iput v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 130
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_3a

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p2, :cond_32

    .line 222
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    .line 228
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/URI;->setScheme(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, p2}, Lorg/apache/xml/utils/URI;->setPath(Ljava/lang/String;)V

    return-void

    .line 224
    :cond_32
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "Cannot construct URI with null/empty scheme-specific part!"

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_3a
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "Cannot construct URI with null/empty scheme!"

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 126
    iput v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 130
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_84

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_84

    if-nez p3, :cond_3e

    if-nez p2, :cond_32

    if-ne p4, v1, :cond_26

    goto :goto_3e

    .line 303
    :cond_26
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_NO_PORT_IF_NO_HOST"

    .line 304
    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_32
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_NO_USERINFO_IF_NO_HOST"

    .line 298
    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    :goto_3e
    if-eqz p5, :cond_6e

    const/16 v2, 0x3f

    .line 310
    invoke-virtual {p5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v1, :cond_57

    if-nez p6, :cond_4b

    goto :goto_57

    .line 312
    :cond_4b
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_NO_QUERY_STRING_IN_PATH"

    .line 313
    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    :goto_57
    const/16 v2, 0x23

    .line 316
    invoke-virtual {p5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v1, :cond_6e

    if-nez p7, :cond_62

    goto :goto_6e

    .line 318
    :cond_62
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_NO_FRAGMENT_STRING_IN_PATH"

    .line 319
    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 323
    :cond_6e
    :goto_6e
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/URI;->setScheme(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0, p3}, Lorg/apache/xml/utils/URI;->setHost(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p4}, Lorg/apache/xml/utils/URI;->setPort(I)V

    .line 326
    invoke-virtual {p0, p2}, Lorg/apache/xml/utils/URI;->setUserinfo(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p5}, Lorg/apache/xml/utils/URI;->setPath(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, p6}, Lorg/apache/xml/utils/URI;->setQueryString(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, p7}, Lorg/apache/xml/utils/URI;->setFragment(Ljava/lang/String;)V

    return-void

    .line 290
    :cond_84
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_SCHEME_REQUIRED"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 256
    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/utils/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/utils/URI;)V
    .registers 4

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 126
    iput v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 130
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    .line 159
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI;->initialize(Lorg/apache/xml/utils/URI;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 126
    iput v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 130
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/utils/URI;->initialize(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V

    return-void
.end method

.method private greylist initialize(Lorg/apache/xml/utils/URI;)V
    .registers 3

    .line 340
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 344
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    return-void
.end method

.method private greylist initialize(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1c

    if-eqz p2, :cond_10

    .line 370
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_1c

    .line 372
    :cond_10
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    .line 373
    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    if-eqz p2, :cond_1bf

    .line 377
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2a

    goto/16 :goto_1bf

    .line 384
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 385
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    .line 389
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 390
    const-string v3, "/"

    if-gez v2, :cond_4f

    if-eqz p1, :cond_3f

    goto :goto_7d

    .line 394
    :cond_3f
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_NO_SCHEME_IN_URI"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 399
    :cond_4f
    invoke-direct {p0, p2}, Lorg/apache/xml/utils/URI;->initializeScheme(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 400
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 402
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_79

    if-eqz p1, :cond_79

    .line 418
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_79

    :cond_78
    move-object p1, v0

    .line 424
    :cond_79
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 428
    :goto_7d
    const-string v0, "//"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x2f

    const/4 v4, 0x0

    if-eqz v0, :cond_ad

    const/4 v0, 0x2

    move v5, v0

    :goto_8a
    if-ge v5, v1, :cond_9e

    .line 439
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v2, :cond_9e

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_9e

    const/16 v7, 0x23

    if-ne v6, v7, :cond_9b

    goto :goto_9e

    :cond_9b
    add-int/lit8 v5, v5, 0x1

    goto :goto_8a

    :cond_9e
    :goto_9e
    if-le v5, v0, :cond_a8

    .line 453
    invoke-virtual {p2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/URI;->initializeAuthority(Ljava/lang/String;)V

    goto :goto_ae

    .line 457
    :cond_a8
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    goto :goto_ae

    :cond_ad
    move v5, v4

    .line 461
    :goto_ae
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/xml/utils/URI;->initializePath(Ljava/lang/String;)V

    if-eqz p1, :cond_1be

    .line 478
    iget-object p2, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_f0

    iget-object p2, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez p2, :cond_f0

    iget-object p2, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-nez p2, :cond_f0

    .line 480
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getHost()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getPort()I

    move-result p2

    iput p2, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 484
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 486
    iget-object p2, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-nez p2, :cond_1be

    .line 488
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getQueryString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    return-void

    .line 496
    :cond_f0
    iget-object p2, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez p2, :cond_fa

    .line 498
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    .line 503
    :cond_fa
    iget-object p2, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-nez p2, :cond_1be

    .line 505
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 506
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getHost()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getPort()I

    move-result p2

    iput p2, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 515
    iget-object p2, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_122

    iget-object p2, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_122

    goto/16 :goto_1be

    .line 522
    :cond_122
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2}, Ljava/lang/String;-><init>()V

    .line 523
    invoke-virtual {p1}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_13a

    .line 528
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v0, :cond_13a

    add-int/lit8 v1, v1, 0x1

    .line 532
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 537
    :cond_13a
    iget-object p1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 542
    :goto_140
    const-string p2, "/./"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v0, :cond_159

    add-int/lit8 v1, p2, 0x1

    .line 544
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_140

    .line 548
    :cond_159
    const-string p2, "/."

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_16b

    .line 550
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 560
    :cond_16b
    :goto_16b
    const-string p2, "/../"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_19e

    .line 562
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 563
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eq v3, v0, :cond_16b

    add-int/lit8 v5, v3, 0x1

    .line 567
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, ".."

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16b

    .line 569
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_16b

    .line 577
    :cond_19e
    const-string p2, "/.."

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1bc

    .line 579
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x3

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 580
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-eq p2, v0, :cond_1bc

    add-int/lit8 p2, p2, 0x1

    .line 584
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 588
    :cond_1bc
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    :cond_1be
    :goto_1be
    return-void

    .line 379
    :cond_1bf
    :goto_1bf
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI;->initialize(Lorg/apache/xml/utils/URI;)V

    return-void
.end method

.method private greylist initializeAuthority(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .line 647
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    .line 652
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    move v3, v2

    move v5, v3

    :goto_10
    if-ge v3, v0, :cond_1c

    .line 656
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 666
    :cond_1c
    :goto_1c
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_23
    const/4 v1, 0x0

    move v3, v2

    move v5, v3

    :goto_26
    move v6, v3

    :goto_27
    const/16 v7, 0x3a

    if-ge v6, v0, :cond_35

    .line 678
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_32

    goto :goto_35

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 688
    :cond_35
    :goto_35
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 692
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_81

    if-ne v5, v7, :cond_81

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    :goto_44
    if-ge v5, v0, :cond_49

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 707
    :cond_49
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 709
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_81

    .line 711
    :goto_53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_7d

    .line 713
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_66

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 715
    :cond_66
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid. Port should only contain digits!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 722
    :cond_7d
    :try_start_7d
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_81} :catch_81

    .line 733
    :catch_81
    :cond_81
    invoke-virtual {p0, v3}, Lorg/apache/xml/utils/URI;->setHost(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0, v4}, Lorg/apache/xml/utils/URI;->setPort(I)V

    .line 735
    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/URI;->setUserinfo(Ljava/lang/String;)V

    return-void
.end method

.method private greylist initializePath(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    if-eqz p1, :cond_131

    .line 756
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    const/16 v4, 0x3f

    const/16 v5, 0x25

    const/16 v6, 0x23

    if-ge v2, v0, :cond_6c

    .line 762
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_6c

    if-ne v3, v6, :cond_1a

    goto :goto_6c

    :cond_1a
    if-ne v3, v5, :cond_44

    add-int/lit8 v4, v2, 0x2

    if-ge v4, v0, :cond_37

    add-int/lit8 v5, v2, 0x1

    .line 772
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 773
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_69

    .line 775
    :cond_37
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const/4 v0, 0x0

    .line 776
    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 779
    :cond_44
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_69

    .line 780
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_69

    const/16 v4, 0x5c

    if-ne v4, v3, :cond_55

    goto :goto_69

    .line 783
    :cond_55
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_PATH_INVALID_CHAR"

    invoke-static {v0, p1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 790
    :cond_6c
    :goto_6c
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    if-ne v3, v4, :cond_d3

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_77
    if-ge v1, v0, :cond_cc

    .line 801
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_80

    goto :goto_cc

    :cond_80
    if-ne v3, v5, :cond_a5

    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_9d

    add-int/lit8 v7, v1, 0x1

    .line 810
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 811
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_9d

    goto :goto_c9

    .line 813
    :cond_9d
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "Query string contains invalid escape sequence!"

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 817
    :cond_a5
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_c9

    .line 818
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_b2

    goto :goto_c9

    .line 820
    :cond_b2
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Query string contains invalid character:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c9
    :goto_c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 827
    :cond_cc
    :goto_cc
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    move v2, v1

    :cond_d3
    if-ne v3, v6, :cond_130

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_d8
    if-ge v1, v0, :cond_12a

    .line 839
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_103

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_fb

    add-int/lit8 v4, v1, 0x1

    .line 843
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 844
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_fb

    goto :goto_127

    .line 846
    :cond_fb
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "Fragment contains invalid escape sequence!"

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 850
    :cond_103
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_127

    .line 851
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_110

    goto :goto_127

    .line 853
    :cond_110
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment contains invalid character:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_127
    :goto_127
    add-int/lit8 v1, v1, 0x1

    goto :goto_d8

    .line 860
    :cond_12a
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    :cond_130
    return-void

    .line 750
    :cond_131
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "Cannot initialize path from null string!"

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist initializeScheme(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_20

    .line 610
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_20

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_20

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_20

    const/16 v4, 0x23

    if-ne v3, v4, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 621
    :cond_20
    :goto_20
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 623
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 629
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/URI;->setScheme(Ljava/lang/String;)V

    return-void

    .line 625
    :cond_2e
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_NO_SCHEME_INURI"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist isAlpha(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist isAlphanum(C)Z
    .registers 2

    .line 1594
    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist isConformantSchemeName(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_39

    .line 1411
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_39

    .line 1416
    :cond_e
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xml/utils/URI;->isAlpha(C)Z

    move-result v1

    if-nez v1, :cond_19

    return v0

    :cond_19
    const/4 v1, 0x1

    move v2, v1

    .line 1423
    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 1425
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1427
    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    move-result v4

    if-nez v4, :cond_35

    const-string v4, "+-."

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_35

    return v0

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_38
    return v1

    :cond_39
    :goto_39
    return v0
.end method

.method private static greylist isDigit(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist isHex(C)Z
    .registers 2

    .line 1568
    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x61

    if-lt p0, v0, :cond_e

    const/16 v0, 0x66

    if-le p0, v0, :cond_19

    :cond_e
    const/16 v0, 0x41

    if-lt p0, v0, :cond_17

    const/16 v0, 0x46

    if-gt p0, v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method private static greylist isReservedCharacter(C)Z
    .registers 2

    .line 1607
    const-string v0, ";/?:@&=+$,"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist isURIString(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1639
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    :goto_9
    const/4 v3, 0x1

    if-ge v2, v1, :cond_42

    .line 1644
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_32

    add-int/lit8 v4, v2, 0x2

    if-ge v4, v1, :cond_31

    add-int/lit8 v2, v2, 0x1

    .line 1648
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1649
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_31

    :cond_2f
    move v2, v4

    goto :goto_40

    :cond_31
    :goto_31
    return v0

    .line 1661
    :cond_32
    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isReservedCharacter(C)Z

    move-result v5

    if-nez v5, :cond_40

    invoke-static {v4}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_40

    :cond_3f
    return v0

    :cond_40
    :goto_40
    add-int/2addr v2, v3

    goto :goto_9

    :cond_42
    return v3
.end method

.method private static greylist isUnreservedCharacter(C)Z
    .registers 2

    .line 1619
    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "-_.!~*\'() "

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist isWellFormedAddress(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1457
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1458
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b3

    const/16 v3, 0xff

    if-le v2, v3, :cond_14

    goto/16 :goto_b3

    .line 1465
    :cond_14
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b3

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    goto/16 :goto_b3

    :cond_26
    const/16 v4, 0x2e

    .line 1473
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1475
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1477
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    :cond_3a
    const/4 v3, 0x1

    add-int/2addr v5, v3

    if-ge v5, v2, :cond_7f

    .line 1480
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_7f

    move p0, v0

    move v5, p0

    :goto_4a
    if-ge p0, v2, :cond_7b

    .line 1490
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_71

    add-int/lit8 v6, p0, -0x1

    .line 1494
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_70

    add-int/lit8 v6, p0, 0x1

    if-ge v6, v2, :cond_6d

    .line 1495
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_6d

    goto :goto_70

    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    :cond_70
    :goto_70
    return v0

    .line 1502
    :cond_71
    invoke-static {v6}, Lorg/apache/xml/utils/URI;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_78

    return v0

    :cond_78
    :goto_78
    add-int/lit8 p0, p0, 0x1

    goto :goto_4a

    :cond_7b
    const/4 p0, 0x3

    if-eq v5, p0, :cond_b2

    return v0

    :cond_7f
    move p0, v0

    :goto_80
    if-ge p0, v2, :cond_b2

    .line 1522
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_a4

    add-int/lit8 v5, p0, -0x1

    .line 1526
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    move-result v5

    if-nez v5, :cond_95

    return v0

    :cond_95
    add-int/lit8 v5, p0, 0x1

    if-ge v5, v2, :cond_af

    .line 1531
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    move-result v5

    if-nez v5, :cond_af

    return v0

    .line 1536
    :cond_a4
    invoke-static {v5}, Lorg/apache/xml/utils/URI;->isAlphanum(C)Z

    move-result v6

    if-nez v6, :cond_af

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_af

    return v0

    :cond_af
    add-int/lit8 p0, p0, 0x1

    goto :goto_80

    :cond_b2
    return v3

    :cond_b3
    :goto_b3
    return v0
.end method


# virtual methods
.method public greylist appendPath(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    if-eqz p1, :cond_9c

    .line 1210
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_9c

    .line 1215
    :cond_e
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1220
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    const-string v1, "/"

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    goto :goto_71

    .line 1231
    :cond_25
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1233
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1235
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1239
    :cond_41
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1244
    :cond_4a
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1246
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1250
    :cond_59
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1222
    :cond_71
    :goto_71
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1224
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1228
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1217
    :cond_8c
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string v0, "ER_PATH_INVALID_CHAR"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9c
    :goto_9c
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1344
    instance-of v0, p1, Lorg/apache/xml/utils/URI;

    if-eqz v0, :cond_86

    .line 1346
    check-cast p1, Lorg/apache/xml/utils/URI;

    .line 1348
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v1, p1, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_1a

    :cond_e
    if-eqz v0, :cond_86

    iget-object v1, p1, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_86

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_1a
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v1, p1, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_2e

    :cond_22
    if-eqz v0, :cond_86

    iget-object v1, p1, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_86

    .line 1349
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_2e
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_36

    iget-object v1, p1, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_42

    :cond_36
    if-eqz v0, :cond_86

    iget-object v1, p1, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_86

    .line 1350
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_42
    iget v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    iget v1, p1, Lorg/apache/xml/utils/URI;->m_port:I

    if-ne v0, v1, :cond_86

    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    if-nez v0, :cond_50

    iget-object v1, p1, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_5c

    :cond_50
    if-eqz v0, :cond_86

    iget-object v1, p1, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_86

    .line 1351
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_5c
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-nez v0, :cond_64

    iget-object v1, p1, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_70

    :cond_64
    if-eqz v0, :cond_86

    iget-object v1, p1, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_86

    .line 1352
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_70
    iget-object p0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-nez p0, :cond_78

    iget-object v0, p1, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v0, :cond_84

    :cond_78
    if-eqz p0, :cond_86

    iget-object p1, p1, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_86

    .line 1353
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_86

    :cond_84
    const/4 p0, 0x1

    return p0

    :cond_86
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getFragment()Ljava/lang/String;
    .registers 1

    .line 1024
    iget-object p0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getHost()Ljava/lang/String;
    .registers 1

    .line 944
    iget-object p0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getPath()Ljava/lang/String;
    .registers 1

    .line 1000
    iget-object p0, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getPath(ZZ)Ljava/lang/String;
    .registers 5

    .line 975
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_17

    .line 977
    iget-object p1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz p1, :cond_17

    const/16 p1, 0x3f

    .line 979
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 980
    iget-object p1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    if-eqz p2, :cond_27

    .line 983
    iget-object p1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_27

    const/16 p1, 0x23

    .line 985
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 986
    iget-object p0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 989
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getPort()I
    .registers 1

    .line 954
    iget p0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    return p0
.end method

.method public greylist getQueryString()Ljava/lang/String;
    .registers 1

    .line 1012
    iget-object p0, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getScheme()Ljava/lang/String;
    .registers 1

    .line 871
    iget-object p0, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getSchemeSpecificPart()Ljava/lang/String;
    .registers 4

    .line 883
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 885
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    const/4 v2, -0x1

    if-nez v1, :cond_12

    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_12

    iget v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    if-eq v1, v2, :cond_17

    .line 887
    :cond_12
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    :cond_17
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 896
    :cond_23
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 901
    :cond_2a
    iget v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    if-eq v1, v2, :cond_38

    const/16 v1, 0x3a

    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 904
    iget v1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 907
    :cond_38
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_3f

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 912
    :cond_3f
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_4d

    const/16 v1, 0x3f

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 915
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    :cond_4d
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_5b

    const/16 v1, 0x23

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 921
    iget-object p0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    :cond_5b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getUserinfo()Ljava/lang/String;
    .registers 1

    .line 934
    iget-object p0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    return-object p0
.end method

.method public greylist isGenericURI()Z
    .registers 1

    .line 1396
    iget-object p0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist setFragment(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 1311
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    return-void

    .line 1313
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->isGenericURI()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1318
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1323
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1329
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    return-void

    .line 1325
    :cond_1b
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_FRAG_INVALID_CHAR"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1320
    :cond_27
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_FRAG_WHEN_PATH_NULL"

    .line 1321
    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1315
    :cond_33
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_FRAG_FOR_GENERIC_URI"

    .line 1316
    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setHost(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 1121
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_21

    .line 1127
    :cond_e
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_28

    .line 1129
    :cond_15
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1123
    :cond_21
    :goto_21
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    .line 1124
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1125
    iput v0, p0, Lorg/apache/xml/utils/URI;->m_port:I

    .line 1132
    :goto_28
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    return-void
.end method

.method public greylist setPath(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_a

    const/4 p1, 0x0

    .line 1184
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_path:Ljava/lang/String;

    .line 1185
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    .line 1186
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_fragment:Ljava/lang/String;

    return-void

    .line 1190
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI;->initializePath(Ljava/lang/String;)V

    return-void
.end method

.method public greylist setPort(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_19

    const v1, 0xffff

    if-gt p1, v1, :cond_19

    .line 1151
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_d

    goto :goto_1c

    .line 1153
    :cond_d
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_PORT_WHEN_HOST_NULL"

    .line 1154
    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1f

    .line 1162
    :goto_1c
    iput p1, p0, Lorg/apache/xml/utils/URI;->m_port:I

    return-void

    .line 1159
    :cond_1f
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_INVALID_PORT"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setQueryString(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 1272
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    return-void

    .line 1274
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->isGenericURI()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1279
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1284
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1291
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_queryString:Ljava/lang/String;

    return-void

    .line 1286
    :cond_1b
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "Query string contains invalid character!"

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1281
    :cond_23
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "Query string cannot be set when path is null!"

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1276
    :cond_2b
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "Query string can only be set for a generic URI!"

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setScheme(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 1044
    invoke-static {p1}, Lorg/apache/xml/utils/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1049
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    return-void

    .line 1046
    :cond_10
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_SCHEME_NOT_CONFORMANT"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1041
    :cond_1c
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "ER_SCHEME_FROM_NULL_STRING"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setUserinfo(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    .line 1066
    iput-object v0, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    goto :goto_66

    .line 1070
    :cond_6
    iget-object v0, p0, Lorg/apache/xml/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_69

    .line 1079
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_66

    .line 1084
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_3c

    add-int/lit8 v2, v1, 0x2

    if-ge v2, v0, :cond_34

    add-int/lit8 v3, v1, 0x1

    .line 1088
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1089
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xml/utils/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_63

    .line 1091
    :cond_34
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "Userinfo contains invalid escape sequence!"

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1095
    :cond_3c
    invoke-static {v2}, Lorg/apache/xml/utils/URI;->isUnreservedCharacter(C)Z

    move-result v3

    if-nez v3, :cond_63

    const-string v3, ";:&=+$,"

    .line 1096
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4c

    goto :goto_63

    .line 1098
    :cond_4c
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Userinfo contains invalid character:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_63
    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1106
    :cond_66
    :goto_66
    iput-object p1, p0, Lorg/apache/xml/utils/URI;->m_userinfo:Ljava/lang/String;

    return-void

    .line 1072
    :cond_69
    new-instance p0, Lorg/apache/xml/utils/URI$MalformedURIException;

    const-string p1, "Userinfo cannot be set when host is null!"

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1371
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1373
    iget-object v1, p0, Lorg/apache/xml/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    .line 1376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1379
    :cond_11
    invoke-virtual {p0}, Lorg/apache/xml/utils/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1381
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
