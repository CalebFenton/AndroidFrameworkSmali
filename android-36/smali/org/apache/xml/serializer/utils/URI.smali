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
.field private static greylist DEBUG:Z = false

.field private static final greylist MARK_CHARACTERS:Ljava/lang/String; = "-_.!~*\'() "

.field private static final greylist RESERVED_CHARACTERS:Ljava/lang/String; = ";/?:@&=+$,"

.field private static final greylist SCHEME_CHARACTERS:Ljava/lang/String; = "+-."

.field private static final greylist USERINFO_CHARACTERS:Ljava/lang/String; = ";:&=+$,"


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

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 133
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0, p1}, Lorg/apache/xml/serializer/utils/URI;-><init>(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 133
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_3a

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p2, :cond_32

    .line 225
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    .line 231
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/utils/URI;->setPath(Ljava/lang/String;)V

    return-void

    .line 227
    :cond_32
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string p1, "Cannot construct URI with null/empty scheme-specific part!"

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 220
    :cond_3a
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string p1, "Cannot construct URI with null/empty scheme!"

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 133
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_8c

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8c

    if-nez p3, :cond_42

    if-nez p2, :cond_34

    if-ne p4, v1, :cond_26

    goto :goto_42

    .line 306
    :cond_26
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string p2, "ER_NO_PORT_IF_NO_HOST"

    .line 307
    invoke-virtual {p1, p2, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :cond_34
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string p2, "ER_NO_USERINFO_IF_NO_HOST"

    .line 301
    invoke-virtual {p1, p2, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    :goto_42
    if-eqz p5, :cond_76

    const/16 v2, 0x3f

    .line 313
    invoke-virtual {p5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v1, :cond_5d

    if-nez p6, :cond_4f

    goto :goto_5d

    .line 315
    :cond_4f
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string p2, "ER_NO_QUERY_STRING_IN_PATH"

    .line 316
    invoke-virtual {p1, p2, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    :goto_5d
    const/16 v2, 0x23

    .line 319
    invoke-virtual {p5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v1, :cond_76

    if-nez p7, :cond_68

    goto :goto_76

    .line 321
    :cond_68
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string p2, "ER_NO_FRAGMENT_STRING_IN_PATH"

    .line 322
    invoke-virtual {p1, p2, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :cond_76
    :goto_76
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/utils/URI;->setHost(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/utils/URI;->setPort(I)V

    .line 329
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/utils/URI;->setUserinfo(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, p5}, Lorg/apache/xml/serializer/utils/URI;->setPath(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, p6}, Lorg/apache/xml/serializer/utils/URI;->setQueryString(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, p7}, Lorg/apache/xml/serializer/utils/URI;->setFragment(Ljava/lang/String;)V

    return-void

    .line 293
    :cond_8c
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string p2, "ER_SCHEME_REQUIRED"

    invoke-virtual {p1, p2, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
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

    .line 259
    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/utils/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/serializer/utils/URI;)V
    .registers 4

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 133
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    .line 162
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 133
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    .line 199
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V

    return-void
.end method

.method private greylist initialize(Lorg/apache/xml/serializer/utils/URI;)V
    .registers 3

    .line 343
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 347
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    return-void
.end method

.method private greylist initialize(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_1e

    if-eqz p2, :cond_f

    .line 373
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1e

    .line 375
    :cond_f
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string p2, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p1, p2, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_1e
    if-eqz p2, :cond_1a2

    .line 380
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_1a2

    .line 387
    :cond_2c
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 388
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3a

    .line 392
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_51

    if-eqz p1, :cond_3f

    goto :goto_5e

    .line 397
    :cond_3f
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v0, "ER_NO_SCHEME_IN_URI"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 402
    :cond_51
    invoke-direct {p0, p2}, Lorg/apache/xml/serializer/utils/URI;->initializeScheme(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 403
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 404
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 408
    :goto_5e
    const-string v1, "//"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x2f

    const/4 v3, 0x0

    if-eqz v1, :cond_8e

    const/4 v1, 0x2

    move v4, v1

    :goto_6b
    if-ge v4, v0, :cond_7f

    .line 419
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v2, :cond_7f

    const/16 v6, 0x3f

    if-eq v5, v6, :cond_7f

    const/16 v6, 0x23

    if-ne v5, v6, :cond_7c

    goto :goto_7f

    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    :cond_7f
    :goto_7f
    if-le v4, v1, :cond_89

    .line 433
    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/utils/URI;->initializeAuthority(Ljava/lang/String;)V

    goto :goto_8f

    .line 437
    :cond_89
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    goto :goto_8f

    :cond_8e
    move v4, v3

    .line 441
    :goto_8f
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/xml/serializer/utils/URI;->initializePath(Ljava/lang/String;)V

    if-eqz p1, :cond_1a1

    .line 458
    iget-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_d1

    iget-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez p2, :cond_d1

    iget-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez p2, :cond_d1

    .line 460
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 461
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 463
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    move-result p2

    iput p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 464
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 466
    iget-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-nez p2, :cond_1a1

    .line 468
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getQueryString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    return-void

    .line 476
    :cond_d1
    iget-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez p2, :cond_db

    .line 478
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 483
    :cond_db
    iget-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez p2, :cond_1a1

    .line 485
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    move-result p2

    iput p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 495
    iget-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_105

    iget-object p2, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_105

    goto/16 :goto_1a1

    .line 502
    :cond_105
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2}, Ljava/lang/String;-><init>()V

    .line 503
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_11d

    .line 508
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v0, :cond_11d

    add-int/lit8 v1, v1, 0x1

    .line 512
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 517
    :cond_11d
    iget-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 522
    :goto_123
    const-string p2, "/./"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v0, :cond_13c

    add-int/lit8 v1, p2, 0x1

    .line 524
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_123

    .line 528
    :cond_13c
    const-string p2, "/."

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14e

    .line 530
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 540
    :cond_14e
    :goto_14e
    const-string p2, "/../"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_181

    .line 542
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 543
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v4, v0, :cond_14e

    add-int/lit8 v5, v4, 0x1

    .line 547
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v4, ".."

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14e

    .line 549
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_14e

    .line 557
    :cond_181
    const-string p2, "/.."

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_19f

    .line 559
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x3

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 560
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-eq p2, v0, :cond_19f

    add-int/lit8 p2, p2, 0x1

    .line 564
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 568
    :cond_19f
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    :cond_1a1
    :goto_1a1
    return-void

    .line 382
    :cond_1a2
    :goto_1a2
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;)V

    return-void
.end method

.method private greylist initializeAuthority(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .line 627
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    .line 632
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    move v3, v2

    move v5, v3

    :goto_10
    if-ge v3, v0, :cond_1c

    .line 636
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 646
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

    .line 658
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_32

    goto :goto_35

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 668
    :cond_35
    :goto_35
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 672
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

    .line 687
    :cond_49
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 689
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_81

    .line 691
    :goto_53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_7d

    .line 693
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_66

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 695
    :cond_66
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid. Port should only contain digits!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 702
    :cond_7d
    :try_start_7d
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_81} :catch_81

    .line 713
    :catch_81
    :cond_81
    invoke-virtual {p0, v3}, Lorg/apache/xml/serializer/utils/URI;->setHost(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0, v4}, Lorg/apache/xml/serializer/utils/URI;->setPort(I)V

    .line 715
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/utils/URI;->setUserinfo(Ljava/lang/String;)V

    return-void
.end method

.method private greylist initializePath(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    if-eqz p1, :cond_135

    .line 736
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    const/16 v4, 0x3f

    const/16 v5, 0x25

    const/16 v6, 0x23

    if-ge v2, v0, :cond_70

    .line 742
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_70

    if-ne v3, v6, :cond_1a

    goto :goto_70

    :cond_1a
    if-ne v3, v5, :cond_46

    add-int/lit8 v4, v2, 0x2

    if-ge v4, v0, :cond_37

    add-int/lit8 v5, v2, 0x1

    .line 752
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 753
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_6d

    .line 755
    :cond_37
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const/4 v1, 0x0

    .line 756
    invoke-virtual {p1, v0, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 759
    :cond_46
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 760
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_6d

    const/16 v4, 0x5c

    if-ne v4, v3, :cond_57

    goto :goto_6d

    .line 763
    :cond_57
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_PATH_INVALID_CHAR"

    invoke-virtual {p1, v1, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 770
    :cond_70
    :goto_70
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-ne v3, v4, :cond_d7

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_7b
    if-ge v1, v0, :cond_d0

    .line 781
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_84

    goto :goto_d0

    :cond_84
    if-ne v3, v5, :cond_a9

    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_a1

    add-int/lit8 v7, v1, 0x1

    .line 790
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 791
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_a1

    goto :goto_cd

    .line 793
    :cond_a1
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string p1, "Query string contains invalid escape sequence!"

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 797
    :cond_a9
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_cd

    .line 798
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_b6

    goto :goto_cd

    .line 800
    :cond_b6
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Query string contains invalid character:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cd
    :goto_cd
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 807
    :cond_d0
    :goto_d0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    move v2, v1

    :cond_d7
    if-ne v3, v6, :cond_134

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_dc
    if-ge v1, v0, :cond_12e

    .line 819
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_107

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_ff

    add-int/lit8 v4, v1, 0x1

    .line 823
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 824
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_ff

    goto :goto_12b

    .line 826
    :cond_ff
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string p1, "Fragment contains invalid escape sequence!"

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 830
    :cond_107
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_12b

    .line 831
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_114

    goto :goto_12b

    .line 833
    :cond_114
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment contains invalid character:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12b
    :goto_12b
    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    .line 840
    :cond_12e
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    :cond_134
    return-void

    .line 730
    :cond_135
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string p1, "Cannot initialize path from null string!"

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist initializeScheme(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .line 583
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_20

    .line 590
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

    .line 601
    :cond_20
    :goto_20
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 609
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    return-void

    .line 605
    :cond_2e
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v0, "ER_NO_SCHEME_INURI"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

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

    .line 1574
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

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

    .line 1391
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_39

    .line 1396
    :cond_e
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xml/serializer/utils/URI;->isAlpha(C)Z

    move-result v1

    if-nez v1, :cond_19

    return v0

    :cond_19
    const/4 v1, 0x1

    move v2, v1

    .line 1403
    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 1405
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1407
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

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

    .line 1548
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

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

    .line 1587
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

    .line 1619
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    :goto_9
    const/4 v3, 0x1

    if-ge v2, v1, :cond_42

    .line 1624
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_32

    add-int/lit8 v4, v2, 0x2

    if-ge v4, v1, :cond_31

    add-int/lit8 v2, v2, 0x1

    .line 1628
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1629
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_31

    :cond_2f
    move v2, v4

    goto :goto_40

    :cond_31
    :goto_31
    return v0

    .line 1641
    :cond_32
    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v5

    if-nez v5, :cond_40

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

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

    .line 1599
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

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

    .line 1437
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1438
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b3

    const/16 v3, 0xff

    if-le v2, v3, :cond_14

    goto/16 :goto_b3

    .line 1445
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

    .line 1453
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1455
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1457
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    :cond_3a
    const/4 v3, 0x1

    add-int/2addr v5, v3

    if-ge v5, v2, :cond_7f

    .line 1460
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_7f

    move p0, v0

    move v5, p0

    :goto_4a
    if-ge p0, v2, :cond_7b

    .line 1470
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_71

    add-int/lit8 v6, p0, -0x1

    .line 1474
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_70

    add-int/lit8 v6, p0, 0x1

    if-ge v6, v2, :cond_6d

    .line 1475
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_6d

    goto :goto_70

    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    :cond_70
    :goto_70
    return v0

    .line 1482
    :cond_71
    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

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

    .line 1502
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_a4

    add-int/lit8 v5, p0, -0x1

    .line 1506
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v5

    if-nez v5, :cond_95

    return v0

    :cond_95
    add-int/lit8 v5, p0, 0x1

    if-ge v5, v2, :cond_af

    .line 1511
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v5

    if-nez v5, :cond_af

    return v0

    .line 1516
    :cond_a4
    invoke-static {v5}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

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
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    if-eqz p1, :cond_9e

    .line 1190
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_9e

    .line 1195
    :cond_e
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1200
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    const-string v1, "/"

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    goto :goto_71

    .line 1211
    :cond_25
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1213
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1215
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1219
    :cond_41
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1224
    :cond_4a
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1226
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1230
    :cond_59
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1202
    :cond_71
    :goto_71
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1204
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1208
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    return-void

    .line 1197
    :cond_8c
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_PATH_INVALID_CHAR"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9e
    :goto_9e
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1324
    instance-of v0, p1, Lorg/apache/xml/serializer/utils/URI;

    if-eqz v0, :cond_86

    .line 1326
    check-cast p1, Lorg/apache/xml/serializer/utils/URI;

    .line 1328
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v1, p1, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_1a

    :cond_e
    if-eqz v0, :cond_86

    iget-object v1, p1, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_86

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_1a
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v1, p1, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_2e

    :cond_22
    if-eqz v0, :cond_86

    iget-object v1, p1, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_86

    .line 1329
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_2e
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_36

    iget-object v1, p1, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_42

    :cond_36
    if-eqz v0, :cond_86

    iget-object v1, p1, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_86

    .line 1330
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_42
    iget v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    iget v1, p1, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    if-ne v0, v1, :cond_86

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-nez v0, :cond_50

    iget-object v1, p1, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_5c

    :cond_50
    if-eqz v0, :cond_86

    iget-object v1, p1, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_86

    .line 1331
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_5c
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-nez v0, :cond_64

    iget-object v1, p1, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_70

    :cond_64
    if-eqz v0, :cond_86

    iget-object v1, p1, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_86

    .line 1332
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_70
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-nez p0, :cond_78

    iget-object v0, p1, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v0, :cond_84

    :cond_78
    if-eqz p0, :cond_86

    iget-object p1, p1, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_86

    .line 1333
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

    .line 1004
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getHost()Ljava/lang/String;
    .registers 1

    .line 924
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getPath()Ljava/lang/String;
    .registers 1

    .line 980
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getPath(ZZ)Ljava/lang/String;
    .registers 5

    .line 955
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_17

    .line 957
    iget-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz p1, :cond_17

    const/16 p1, 0x3f

    .line 959
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 960
    iget-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    if-eqz p2, :cond_27

    .line 963
    iget-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_27

    const/16 p1, 0x23

    .line 965
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 966
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 969
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getPort()I
    .registers 1

    .line 934
    iget p0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    return p0
.end method

.method public greylist getQueryString()Ljava/lang/String;
    .registers 1

    .line 992
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getScheme()Ljava/lang/String;
    .registers 1

    .line 851
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getSchemeSpecificPart()Ljava/lang/String;
    .registers 4

    .line 863
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 865
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    const/4 v2, -0x1

    if-nez v1, :cond_12

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_12

    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    if-eq v1, v2, :cond_17

    .line 867
    :cond_12
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 870
    :cond_17
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 872
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    .line 873
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 876
    :cond_23
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 878
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 881
    :cond_2a
    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    if-eq v1, v2, :cond_38

    const/16 v1, 0x3a

    .line 883
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 884
    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 887
    :cond_38
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_3f

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    :cond_3f
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_4d

    const/16 v1, 0x3f

    .line 894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 895
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 898
    :cond_4d
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_5b

    const/16 v1, 0x23

    .line 900
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 901
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 904
    :cond_5b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getUserinfo()Ljava/lang/String;
    .registers 1

    .line 914
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    return-object p0
.end method

.method public greylist isGenericURI()Z
    .registers 1

    .line 1376
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

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
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 1291
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    return-void

    .line 1293
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->isGenericURI()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1298
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1303
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1309
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    return-void

    .line 1305
    :cond_1b
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_FRAG_INVALID_CHAR"

    invoke-virtual {p1, v1, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1300
    :cond_29
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_FRAG_WHEN_PATH_NULL"

    .line 1301
    invoke-virtual {p1, v1, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1295
    :cond_37
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_FRAG_FOR_GENERIC_URI"

    .line 1296
    invoke-virtual {p1, v1, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setHost(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    .line 1101
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_23

    .line 1107
    :cond_e
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2a

    .line 1109
    :cond_15
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    invoke-virtual {p1, v1, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1103
    :cond_23
    :goto_23
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 1104
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1105
    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 1112
    :goto_2a
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    return-void
.end method

.method public greylist setPath(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_a

    const/4 p1, 0x0

    .line 1164
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 1165
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 1166
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    return-void

    .line 1170
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->initializePath(Ljava/lang/String;)V

    return-void
.end method

.method public greylist setPort(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_1b

    const v1, 0xffff

    if-gt p1, v1, :cond_1b

    .line 1131
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_d

    goto :goto_1e

    .line 1133
    :cond_d
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_PORT_WHEN_HOST_NULL"

    .line 1134
    invoke-virtual {p1, v1, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    const/4 v1, -0x1

    if-ne p1, v1, :cond_21

    .line 1142
    :goto_1e
    iput p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    return-void

    .line 1139
    :cond_21
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_INVALID_PORT"

    invoke-virtual {p1, v1, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setQueryString(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 1252
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    return-void

    .line 1254
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->isGenericURI()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1259
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1264
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1271
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    return-void

    .line 1266
    :cond_1b
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string p1, "Query string contains invalid character!"

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1261
    :cond_23
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string p1, "Query string cannot be set when path is null!"

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1256
    :cond_2b
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string p1, "Query string can only be set for a generic URI!"

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setScheme(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 1024
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1029
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    return-void

    .line 1026
    :cond_10
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_SCHEME_NOT_CONFORMANT"

    invoke-virtual {p1, v1, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1021
    :cond_1e
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_SCHEME_FROM_NULL_STRING"

    invoke-virtual {p1, v1, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setUserinfo(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    .line 1046
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    goto :goto_66

    .line 1050
    :cond_6
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_69

    .line 1059
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_66

    .line 1064
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_3c

    add-int/lit8 v2, v1, 0x2

    if-ge v2, v0, :cond_34

    add-int/lit8 v3, v1, 0x1

    .line 1068
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1069
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_63

    .line 1071
    :cond_34
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string p1, "Userinfo contains invalid escape sequence!"

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1075
    :cond_3c
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v3

    if-nez v3, :cond_63

    const-string v3, ";:&=+$,"

    .line 1076
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4c

    goto :goto_63

    .line 1078
    :cond_4c
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Userinfo contains invalid character:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_63
    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1086
    :cond_66
    :goto_66
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    return-void

    .line 1052
    :cond_69
    new-instance p0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string p1, "Userinfo cannot be set when host is null!"

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1351
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1353
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 1355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    .line 1356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1359
    :cond_11
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1361
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
