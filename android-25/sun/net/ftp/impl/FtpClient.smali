.class public Lsun/net/ftp/impl/FtpClient;
.super Lsun/net/ftp/FtpClient;
.source "FtpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ftp/impl/FtpClient$1;,
        Lsun/net/ftp/impl/FtpClient$DefaultParser;,
        Lsun/net/ftp/impl/FtpClient$FtpFileIterator;,
        Lsun/net/ftp/impl/FtpClient$MLSxParser;
    }
.end annotation


# static fields
.field private static MDTMformats:[Ljava/lang/String;

.field private static dateFormats:[Ljava/text/SimpleDateFormat;

.field private static defaultConnectTimeout:I

.field private static defaultSoTimeout:I

.field private static encoding:Ljava/lang/String;

.field private static epsvPat:Ljava/util/regex/Pattern;

.field private static linkp:Ljava/util/regex/Pattern;

.field private static final logger:Lsun/util/logging/PlatformLogger;

.field private static pasvPat:Ljava/util/regex/Pattern;

.field private static patStrings:[Ljava/lang/String;

.field private static patternGroups:[[I

.field private static patterns:[Ljava/util/regex/Pattern;

.field private static transPat:Ljava/util/regex/Pattern;


# instance fields
.field private connectTimeout:I

.field private df:Ljava/text/DateFormat;

.field private in:Ljava/io/InputStream;

.field private lastFileName:Ljava/lang/String;

.field private lastReplyCode:Lsun/net/ftp/FtpReplyCode;

.field private lastTransSize:J

.field private loggedIn:Z

.field private mlsxParser:Lsun/net/ftp/FtpDirParser;

.field private oldSocket:Ljava/net/Socket;

.field private out:Ljava/io/PrintStream;

.field private parser:Lsun/net/ftp/FtpDirParser;

.field private final passiveMode:Z

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private replyPending:Z

.field private restartOffset:J

.field private server:Ljava/net/Socket;

.field private serverAddr:Ljava/net/InetSocketAddress;

.field private serverResponse:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sslFact:Ljavax/net/ssl/SSLSocketFactory;

.field private type:Lsun/net/ftp/FtpClient$TransferType;

.field private useCrypto:Z

.field private welcomeMsg:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lsun/net/ftp/impl/FtpClient;)Ljava/text/DateFormat;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->df:Ljava/text/DateFormat;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->linkp:Ljava/util/regex/Pattern;

    #@2
    return-object v0
.end method

.method static synthetic -get2()[[I
    .locals 1

    #@0
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I

    #@2
    return-object v0
.end method

.method static synthetic -get3()[Ljava/util/regex/Pattern;
    .locals 1

    #@0
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Proxy;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Socket;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x0

    #@2
    const/16 v9, 0x8

    #@4
    const/4 v8, 0x1

    #@5
    const/4 v7, 0x0

    #@6
    .line 57
    const-string/jumbo v4, "sun.net.ftp.FtpClient"

    #@9
    invoke-static {v4}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    #@c
    move-result-object v4

    #@d
    .line 56
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    #@f
    .line 66
    const-string/jumbo v4, "ISO8859_1"

    #@12
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@14
    .line 91
    const/4 v4, 0x4

    #@15
    new-array v4, v4, [Ljava/lang/String;

    #@17
    .line 93
    const-string/jumbo v5, "([\\-ld](?:[r\\-][w\\-][x\\-]){3})\\s*\\d+ (\\w+)\\s*(\\w+)\\s*(\\d+)\\s*([A-Z][a-z][a-z]\\s*\\d+)\\s*(\\d\\d:\\d\\d)\\s*(\\p{Print}*)"

    #@1a
    aput-object v5, v4, v7

    #@1c
    .line 95
    const-string/jumbo v5, "([\\-ld](?:[r\\-][w\\-][x\\-]){3})\\s*\\d+ (\\w+)\\s*(\\w+)\\s*(\\d+)\\s*([A-Z][a-z][a-z]\\s*\\d+)\\s*(\\d{4})\\s*(\\p{Print}*)"

    #@1f
    aput-object v5, v4, v8

    #@21
    .line 97
    const-string/jumbo v5, "(\\d{2}/\\d{2}/\\d{4})\\s*(\\d{2}:\\d{2}[ap])\\s*((?:[0-9,]+)|(?:<DIR>))\\s*(\\p{Graph}*)"

    #@24
    aput-object v5, v4, v11

    #@26
    .line 99
    const-string/jumbo v5, "(\\d{2}-\\d{2}-\\d{2})\\s*(\\d{2}:\\d{2}[AP]M)\\s*((?:[0-9,]+)|(?:<DIR>))\\s*(\\p{Graph}*)"

    #@29
    const/4 v6, 0x3

    #@2a
    aput-object v5, v4, v6

    #@2c
    .line 91
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    #@2e
    .line 101
    const/4 v4, 0x4

    #@2f
    new-array v4, v4, [[I

    #@31
    .line 104
    new-array v5, v9, [I

    #@33
    fill-array-data v5, :array_0

    #@36
    aput-object v5, v4, v7

    #@38
    .line 105
    new-array v5, v9, [I

    #@3a
    fill-array-data v5, :array_1

    #@3d
    aput-object v5, v4, v8

    #@3f
    .line 106
    new-array v5, v9, [I

    #@41
    fill-array-data v5, :array_2

    #@44
    aput-object v5, v4, v11

    #@46
    .line 107
    new-array v5, v9, [I

    #@48
    fill-array-data v5, :array_3

    #@4b
    const/4 v6, 0x3

    #@4c
    aput-object v5, v4, v6

    #@4e
    .line 101
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I

    #@50
    .line 109
    const-string/jumbo v4, "(\\p{Print}+) \\-\\> (\\p{Print}+)$"

    #@53
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@56
    move-result-object v4

    #@57
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->linkp:Ljava/util/regex/Pattern;

    #@59
    .line 113
    filled-new-array {v7, v7}, [I

    #@5c
    move-result-object v3

    #@5d
    .line 114
    .local v3, "vals":[I
    new-array v1, v8, [Ljava/lang/String;

    #@5f
    aput-object v10, v1, v7

    #@61
    .line 117
    .local v1, "encs":[Ljava/lang/String;
    new-instance v4, Lsun/net/ftp/impl/FtpClient$1;

    #@63
    invoke-direct {v4, v3, v1}, Lsun/net/ftp/impl/FtpClient$1;-><init>([I[Ljava/lang/String;)V

    #@66
    .line 116
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@69
    .line 126
    aget v4, v3, v7

    #@6b
    if-nez v4, :cond_1

    #@6d
    .line 127
    const/4 v4, -0x1

    #@6e
    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    #@70
    .line 132
    :goto_0
    aget v4, v3, v8

    #@72
    if-nez v4, :cond_2

    #@74
    .line 133
    const/4 v4, -0x1

    #@75
    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    #@77
    .line 138
    :goto_1
    aget-object v4, v1, v7

    #@79
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@7b
    .line 140
    :try_start_0
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@7d
    invoke-static {v4}, Lsun/net/ftp/impl/FtpClient;->isASCIISuperset(Ljava/lang/String;)Z

    #@80
    move-result v4

    #@81
    if-nez v4, :cond_0

    #@83
    .line 141
    const-string/jumbo v4, "ISO8859_1"

    #@86
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@88
    .line 147
    :cond_0
    :goto_2
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    #@8a
    array-length v4, v4

    #@8b
    new-array v4, v4, [Ljava/util/regex/Pattern;

    #@8d
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    #@8f
    .line 148
    const/4 v2, 0x0

    #@90
    .local v2, "i":I
    :goto_3
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    #@92
    array-length v4, v4

    #@93
    if-ge v2, v4, :cond_3

    #@95
    .line 149
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    #@97
    sget-object v5, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    #@99
    aget-object v5, v5, v2

    #@9b
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@9e
    move-result-object v5

    #@9f
    aput-object v5, v4, v2

    #@a1
    .line 148
    add-int/lit8 v2, v2, 0x1

    #@a3
    goto :goto_3

    #@a4
    .line 129
    .end local v2    # "i":I
    :cond_1
    aget v4, v3, v7

    #@a6
    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    #@a8
    goto :goto_0

    #@a9
    .line 135
    :cond_2
    aget v4, v3, v8

    #@ab
    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    #@ad
    goto :goto_1

    #@ae
    .line 143
    :catch_0
    move-exception v0

    #@af
    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ISO8859_1"

    #@b2
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@b4
    goto :goto_2

    #@b5
    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_3
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    #@b7
    .line 548
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    #@b9
    .line 549
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    #@bb
    .line 1744
    new-array v4, v11, [Ljava/lang/String;

    #@bd
    .line 1745
    const-string/jumbo v5, "yyyyMMddHHmmss.SSS"

    #@c0
    aput-object v5, v4, v7

    #@c2
    .line 1746
    const-string/jumbo v5, "yyyyMMddHHmmss"

    #@c5
    aput-object v5, v4, v8

    #@c7
    .line 1744
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    #@c9
    .line 1748
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    #@cb
    array-length v4, v4

    #@cc
    new-array v4, v4, [Ljava/text/SimpleDateFormat;

    #@ce
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    #@d0
    .line 1751
    const/4 v2, 0x0

    #@d1
    :goto_4
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    #@d3
    array-length v4, v4

    #@d4
    if-ge v2, v4, :cond_4

    #@d6
    .line 1752
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    #@d8
    new-instance v5, Ljava/text/SimpleDateFormat;

    #@da
    sget-object v6, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    #@dc
    aget-object v6, v6, v2

    #@de
    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@e1
    aput-object v5, v4, v2

    #@e3
    .line 1753
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    #@e5
    aget-object v4, v4, v2

    #@e7
    const-string/jumbo v5, "GMT"

    #@ea
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@ed
    move-result-object v5

    #@ee
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@f1
    .line 1751
    add-int/lit8 v2, v2, 0x1

    #@f3
    goto :goto_4

    #@f4
    .line 52
    :cond_4
    return-void

    #@f5
    .line 104
    nop

    #@f6
    :array_0
    .array-data 4
        0x7
        0x4
        0x5
        0x6
        0x0
        0x1
        0x2
        0x3
    .end array-data

    #@10a
    .line 105
    :array_1
    .array-data 4
        0x7
        0x4
        0x5
        0x0
        0x6
        0x1
        0x2
        0x3
    .end array-data

    #@11e
    .line 106
    :array_2
    .array-data 4
        0x4
        0x3
        0x1
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

    #@132
    .line 107
    :array_3
    .array-data 4
        0x4
        0x3
        0x1
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v0, 0x0

    #@4
    .line 811
    invoke-direct {p0}, Lsun/net/ftp/FtpClient;-><init>()V

    #@7
    .line 62
    iput v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    #@9
    .line 63
    iput v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    #@b
    .line 69
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    #@d
    .line 70
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    #@f
    .line 71
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    #@11
    .line 75
    new-instance v0, Ljava/util/Vector;

    #@13
    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    #@16
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@18
    .line 77
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@1a
    .line 83
    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->passiveMode:Z

    #@1c
    .line 84
    sget-object v0, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    #@1e
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    #@20
    .line 85
    const-wide/16 v0, 0x0

    #@22
    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    #@24
    .line 86
    const-wide/16 v0, -0x1

    #@26
    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    #@28
    .line 110
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2a
    const/4 v1, 0x2

    #@2b
    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->df:Ljava/text/DateFormat;

    #@31
    .line 369
    new-instance v0, Lsun/net/ftp/impl/FtpClient$DefaultParser;

    #@33
    invoke-direct {v0, p0, v2}, Lsun/net/ftp/impl/FtpClient$DefaultParser;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$DefaultParser;)V

    #@36
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    #@38
    .line 370
    new-instance v0, Lsun/net/ftp/impl/FtpClient$MLSxParser;

    #@3a
    invoke-direct {v0, p0, v2}, Lsun/net/ftp/impl/FtpClient$MLSxParser;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$MLSxParser;)V

    #@3d
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->mlsxParser:Lsun/net/ftp/FtpDirParser;

    #@3f
    .line 811
    return-void
.end method

.method public static create()Lsun/net/ftp/FtpClient;
    .locals 1

    #@0
    .prologue
    .line 820
    new-instance v0, Lsun/net/ftp/impl/FtpClient;

    #@2
    invoke-direct {v0}, Lsun/net/ftp/impl/FtpClient;-><init>()V

    #@5
    return-object v0
.end method

.method private createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 793
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    #@2
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 794
    new-instance v0, Lsun/net/TelnetInputStream;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {v0, p1, v1}, Lsun/net/TelnetInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@c
    return-object v0

    #@d
    .line 796
    :cond_0
    return-object p1
.end method

.method private createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    #@2
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 801
    new-instance v0, Lsun/net/TelnetOutputStream;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {v0, p1, v1}, Lsun/net/TelnetOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    #@c
    return-object v0

    #@d
    .line 803
    :cond_0
    return-object p1
.end method

.method private disconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 971
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 972
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@9
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@c
    .line 974
    :cond_0
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@e
    .line 975
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    #@10
    .line 976
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;

    #@12
    .line 977
    const-wide/16 v0, -0x1

    #@14
    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    #@16
    .line 978
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    #@18
    .line 979
    const-wide/16 v0, 0x0

    #@1a
    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    #@1c
    .line 980
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    #@1e
    .line 981
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@20
    .line 982
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@22
    const/4 v1, 0x0

    #@23
    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    #@26
    .line 970
    return-void
.end method

.method private doConnect(Ljava/net/InetSocketAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "dest"    # Ljava/net/InetSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 930
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 931
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    #@6
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@9
    move-result-object v1

    #@a
    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 933
    new-instance v1, Lsun/net/ftp/impl/FtpClient$4;

    #@10
    invoke-direct {v1, p0}, Lsun/net/ftp/impl/FtpClient$4;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    #@13
    .line 932
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/net/Socket;

    #@19
    .line 949
    .local v0, "s":Ljava/net/Socket;
    :goto_0
    if-ltz p2, :cond_3

    #@1b
    .line 950
    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@1e
    .line 962
    :goto_1
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    #@20
    if-ltz v1, :cond_6

    #@22
    .line 963
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    #@24
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@27
    .line 967
    :cond_0
    :goto_2
    return-object v0

    #@28
    .line 940
    .end local v0    # "s":Ljava/net/Socket;
    :cond_1
    new-instance v0, Ljava/net/Socket;

    #@2a
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@2c
    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    #@2f
    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_0

    #@30
    .line 943
    .end local v0    # "s":Ljava/net/Socket;
    :cond_2
    new-instance v0, Ljava/net/Socket;

    #@32
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    #@35
    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_0

    #@36
    .line 952
    :cond_3
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    #@38
    if-ltz v1, :cond_4

    #@3a
    .line 953
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    #@3c
    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@3f
    goto :goto_1

    #@40
    .line 955
    :cond_4
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    #@42
    if-lez v1, :cond_5

    #@44
    .line 956
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    #@46
    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@49
    goto :goto_1

    #@4a
    .line 958
    :cond_5
    invoke-virtual {v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    #@4d
    goto :goto_1

    #@4e
    .line 964
    :cond_6
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    #@50
    if-lez v1, :cond_0

    #@52
    .line 965
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    #@54
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@57
    goto :goto_2
.end method

.method private getResponseString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 483
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    return-object v0
.end method

.method private getResponseStrings()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method private getSecurityData()[B
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x9

    #@2
    .line 1909
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 1910
    .local v2, "s":Ljava/lang/String;
    const/4 v3, 0x4

    #@7
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    const-string/jumbo v4, "ADAT="

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 1911
    new-instance v0, Lsun/misc/BASE64Decoder;

    #@16
    invoke-direct {v0}, Lsun/misc/BASE64Decoder;-><init>()V

    #@19
    .line 1915
    .local v0, "decoder":Lsun/misc/BASE64Decoder;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1c
    move-result v3

    #@1d
    add-int/lit8 v3, v3, -0x1

    #@1f
    const/16 v4, 0x9

    #@21
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v0, v3}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v3

    #@29
    return-object v3

    #@2a
    .line 1916
    :catch_0
    move-exception v1

    #@2b
    .line 1920
    .end local v0    # "decoder":Lsun/misc/BASE64Decoder;
    :cond_0
    const/4 v3, 0x0

    #@2c
    return-object v3
.end method

.method private getTransferName()V
    .locals 4

    #@0
    .prologue
    .line 398
    const/4 v3, 0x0

    #@1
    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    #@3
    .line 399
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 400
    .local v2, "response":Ljava/lang/String;
    const-string/jumbo v3, "unique file name:"

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d
    move-result v1

    #@e
    .line 401
    .local v1, "i":I
    const/16 v3, 0x29

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@13
    move-result v0

    #@14
    .line 402
    .local v0, "e":I
    if-ltz v1, :cond_0

    #@16
    .line 403
    add-int/lit8 v1, v1, 0x11

    #@18
    .line 404
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    #@1e
    .line 397
    :cond_0
    return-void
.end method

.method private getTransferSize()V
    .locals 6

    #@0
    .prologue
    .line 374
    const-wide/16 v4, -0x1

    #@2
    iput-wide v4, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    #@4
    .line 381
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 382
    .local v1, "response":Ljava/lang/String;
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    #@a
    if-nez v3, :cond_0

    #@c
    .line 383
    const-string/jumbo v3, "150 Opening .*\\((\\d+) bytes\\)."

    #@f
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@12
    move-result-object v3

    #@13
    sput-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    #@15
    .line 385
    :cond_0
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    #@17
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@1a
    move-result-object v0

    #@1b
    .line 386
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 387
    const/4 v3, 0x1

    #@22
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 388
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@29
    move-result-wide v4

    #@2a
    iput-wide v4, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    #@2c
    .line 373
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static isASCIISuperset(Ljava/lang/String;)Z
    .locals 4
    .param p0, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    const-string/jumbo v2, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_.!~*\'();/?:@&=+$,"

    #@3
    .line 176
    .local v2, "chkS":Ljava/lang/String;
    const/16 v3, 0x51

    #@5
    new-array v1, v3, [B

    #@7
    .local v1, "chkB":[B
    fill-array-data v1, :array_0

    #@a
    .line 182
    invoke-virtual {v2, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@d
    move-result-object v0

    #@e
    .line 183
    .local v0, "b":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@11
    move-result v3

    #@12
    return v3

    #@13
    .line 176
    nop

    #@14
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x2dt
        0x5ft
        0x2et
        0x21t
        0x7et
        0x2at
        0x27t
        0x28t
        0x29t
        0x3bt
        0x2ft
        0x3ft
        0x3at
        0x40t
        0x26t
        0x3dt
        0x2bt
        0x24t
        0x2ct
    .end array-data
.end method

.method private issueCommand(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 522
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 523
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "Not connected"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 525
    :cond_0
    iget-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 527
    :try_start_0
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 532
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "\r\n"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->sendServer(Ljava/lang/String;)V

    #@2d
    .line 533
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    #@30
    move-result v1

    #@31
    return v1

    #@32
    .line 528
    :catch_0
    move-exception v0

    #@33
    .local v0, "e":Lsun/net/ftp/FtpProtocolException;
    goto :goto_0
.end method

.method private issueCommandCheck(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 544
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 545
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, ":"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    #@2b
    throw v0

    #@2c
    .line 543
    :cond_0
    return-void
.end method

.method private openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 710
    :try_start_0
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v9

    #@6
    return-object v9

    #@7
    .line 711
    :catch_0
    move-exception v2

    #@8
    .line 714
    .local v2, "e":Lsun/net/ftp/FtpProtocolException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 715
    .local v3, "errmsg":Ljava/lang/String;
    const-string/jumbo v9, "PASV"

    #@f
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12
    move-result v9

    #@13
    if-nez v9, :cond_0

    #@15
    const-string/jumbo v9, "EPSV"

    #@18
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v9

    #@1c
    if-eqz v9, :cond_1

    #@1e
    .line 724
    :cond_0
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    #@20
    if-eqz v9, :cond_2

    #@22
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    #@24
    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@27
    move-result-object v9

    #@28
    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@2a
    if-ne v9, v10, :cond_2

    #@2c
    .line 728
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    #@2e
    const-string/jumbo v10, "Passive mode failed"

    #@31
    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    #@34
    throw v9

    #@35
    .line 716
    :cond_1
    throw v2

    #@36
    .line 732
    :cond_2
    new-instance v8, Ljava/net/ServerSocket;

    #@38
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@3a
    invoke-virtual {v9}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    #@3d
    move-result-object v9

    #@3e
    invoke-direct {v8, v11, v12, v9}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@41
    .line 734
    .local v8, "portSocket":Ljava/net/ServerSocket;
    :try_start_1
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    #@44
    move-result-object v6

    #@45
    .line 735
    .local v6, "myAddress":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@48
    move-result v9

    #@49
    if-eqz v9, :cond_3

    #@4b
    .line 736
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@4d
    invoke-virtual {v9}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    #@50
    move-result-object v6

    #@51
    .line 745
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v10, "EPRT |"

    #@59
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v10

    #@5d
    instance-of v9, v6, Ljava/net/Inet6Address;

    #@5f
    if-eqz v9, :cond_7

    #@61
    const-string/jumbo v9, "2"

    #@64
    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    const-string/jumbo v10, "|"

    #@6b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    .line 746
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@72
    move-result-object v10

    #@73
    .line 745
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v9

    #@77
    .line 746
    const-string/jumbo v10, "|"

    #@7a
    .line 745
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    .line 746
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    #@81
    move-result v10

    #@82
    .line 745
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v9

    #@86
    .line 746
    const-string/jumbo v10, "|"

    #@89
    .line 745
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v9

    #@8d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v7

    #@91
    .line 747
    .local v7, "portCmd":Ljava/lang/String;
    invoke-direct {p0, v7}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    #@94
    move-result v9

    #@95
    if-eqz v9, :cond_8

    #@97
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    #@9a
    move-result v9

    #@9b
    if-eqz v9, :cond_8

    #@9d
    .line 764
    :goto_1
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    #@9f
    if-ltz v9, :cond_a

    #@a1
    .line 765
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    #@a3
    invoke-virtual {v8, v9}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    #@a6
    .line 771
    :cond_4
    :goto_2
    invoke-virtual {v8}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    #@a9
    move-result-object v1

    #@aa
    .line 772
    .local v1, "clientSocket":Ljava/net/Socket;
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    #@ac
    if-ltz v9, :cond_b

    #@ae
    .line 773
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    #@b0
    invoke-virtual {v1, v9}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b3
    .line 780
    :cond_5
    :goto_3
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V

    #@b6
    .line 782
    iget-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    #@b8
    if-eqz v9, :cond_6

    #@ba
    .line 784
    :try_start_2
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    #@bc
    iget-object v10, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    #@be
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@c1
    move-result-object v10

    #@c2
    iget-object v11, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    #@c4
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    #@c7
    move-result v11

    #@c8
    const/4 v12, 0x1

    #@c9
    invoke-virtual {v9, v1, v10, v11, v12}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@cc
    move-result-object v1

    #@cd
    .line 789
    :cond_6
    return-object v1

    #@ce
    .line 745
    .end local v1    # "clientSocket":Ljava/net/Socket;
    .end local v7    # "portCmd":Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string/jumbo v9, "1"

    #@d1
    goto :goto_0

    #@d2
    .line 749
    .restart local v7    # "portCmd":Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, "PORT "

    #@d5
    .line 750
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    #@d8
    move-result-object v0

    #@d9
    .line 753
    .local v0, "addr":[B
    const/4 v5, 0x0

    #@da
    .local v5, "i":I
    :goto_4
    array-length v9, v0

    #@db
    if-ge v5, v9, :cond_9

    #@dd
    .line 754
    new-instance v9, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v9

    #@e6
    aget-byte v10, v0, v5

    #@e8
    and-int/lit16 v10, v10, 0xff

    #@ea
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v9

    #@ee
    const-string/jumbo v10, ","

    #@f1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v9

    #@f5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v7

    #@f9
    .line 753
    add-int/lit8 v5, v5, 0x1

    #@fb
    goto :goto_4

    #@fc
    .line 758
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v9

    #@105
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    #@108
    move-result v10

    #@109
    ushr-int/lit8 v10, v10, 0x8

    #@10b
    and-int/lit16 v10, v10, 0xff

    #@10d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@110
    move-result-object v9

    #@111
    const-string/jumbo v10, ","

    #@114
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v9

    #@118
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    #@11b
    move-result v10

    #@11c
    and-int/lit16 v10, v10, 0xff

    #@11e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@121
    move-result-object v9

    #@122
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v7

    #@126
    .line 759
    invoke-direct {p0, v7}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@129
    .line 760
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@12c
    goto/16 :goto_1

    #@12e
    .line 779
    .end local v0    # "addr":[B
    .end local v5    # "i":I
    .end local v6    # "myAddress":Ljava/net/InetAddress;
    .end local v7    # "portCmd":Ljava/lang/String;
    :catchall_0
    move-exception v9

    #@12f
    .line 780
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V

    #@132
    .line 779
    throw v9

    #@133
    .line 767
    .restart local v6    # "myAddress":Ljava/net/InetAddress;
    .restart local v7    # "portCmd":Ljava/lang/String;
    :cond_a
    :try_start_4
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    #@135
    if-lez v9, :cond_4

    #@137
    .line 768
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    #@139
    invoke-virtual {v8, v9}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    #@13c
    goto/16 :goto_2

    #@13e
    .line 775
    .restart local v1    # "clientSocket":Ljava/net/Socket;
    :cond_b
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    #@140
    if-lez v9, :cond_5

    #@142
    .line 776
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    #@144
    invoke-virtual {v1, v9}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@147
    goto/16 :goto_3

    #@149
    .line 785
    :catch_1
    move-exception v4

    #@14a
    .line 786
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/io/IOException;

    #@14c
    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    #@14f
    move-result-object v10

    #@150
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@153
    throw v9
.end method

.method private openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 561
    const/4 v1, 0x0

    #@3
    .line 574
    .local v1, "dest":Ljava/net/InetSocketAddress;
    const-string/jumbo v9, "EPSV ALL"

    #@6
    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    #@9
    move-result v9

    #@a
    if-eqz v9, :cond_5

    #@c
    .line 576
    const-string/jumbo v9, "EPSV"

    #@f
    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@12
    .line 577
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    #@15
    move-result-object v8

    #@16
    .line 585
    .local v8, "serverAnswer":Ljava/lang/String;
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    #@18
    if-nez v9, :cond_0

    #@1a
    .line 586
    const-string/jumbo v9, "^229 .* \\(\\|\\|\\|(\\d+)\\|\\)"

    #@1d
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@20
    move-result-object v9

    #@21
    sput-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    #@23
    .line 588
    :cond_0
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    #@25
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@28
    move-result-object v3

    #@29
    .line 589
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@2c
    move-result v9

    #@2d
    if-nez v9, :cond_1

    #@2f
    .line 590
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    #@31
    new-instance v10, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v11, "EPSV failed : "

    #@39
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v10

    #@3d
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v10

    #@41
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v10

    #@45
    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    #@48
    throw v9

    #@49
    .line 593
    :cond_1
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    .line 594
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@50
    move-result v4

    #@51
    .line 595
    .local v4, "port":I
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@53
    invoke-virtual {v9}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@56
    move-result-object v0

    #@57
    .line 596
    .local v0, "add":Ljava/net/InetAddress;
    if-eqz v0, :cond_4

    #@59
    .line 597
    new-instance v1, Ljava/net/InetSocketAddress;

    #@5b
    .end local v1    # "dest":Ljava/net/InetSocketAddress;
    invoke-direct {v1, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@5e
    .line 637
    .end local v0    # "add":Ljava/net/InetAddress;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :goto_0
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    #@60
    if-eqz v9, :cond_9

    #@62
    .line 638
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    #@64
    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@67
    move-result-object v9

    #@68
    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@6a
    if-ne v9, v10, :cond_8

    #@6c
    .line 640
    new-instance v9, Lsun/net/ftp/impl/FtpClient$2;

    #@6e
    invoke-direct {v9, p0}, Lsun/net/ftp/impl/FtpClient$2;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    #@71
    .line 639
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@74
    move-result-object v6

    #@75
    check-cast v6, Ljava/net/Socket;

    #@77
    .line 654
    .local v6, "s":Ljava/net/Socket;
    :goto_1
    new-instance v9, Lsun/net/ftp/impl/FtpClient$3;

    #@79
    invoke-direct {v9, p0}, Lsun/net/ftp/impl/FtpClient$3;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    #@7c
    .line 653
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@7f
    move-result-object v7

    #@80
    check-cast v7, Ljava/net/InetAddress;

    #@82
    .line 663
    .local v7, "serverAddress":Ljava/net/InetAddress;
    new-instance v9, Ljava/net/InetSocketAddress;

    #@84
    invoke-direct {v9, v7, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@87
    invoke-virtual {v6, v9}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    #@8a
    .line 665
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    #@8c
    if-ltz v9, :cond_a

    #@8e
    .line 666
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    #@90
    invoke-virtual {v6, v1, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@93
    .line 674
    :goto_2
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    #@95
    if-ltz v9, :cond_c

    #@97
    .line 675
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    #@99
    invoke-virtual {v6, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    #@9c
    .line 679
    :cond_2
    :goto_3
    iget-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    #@9e
    if-eqz v9, :cond_3

    #@a0
    .line 681
    :try_start_0
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    #@a2
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@a5
    move-result-object v10

    #@a6
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@a9
    move-result v11

    #@aa
    const/4 v12, 0x1

    #@ab
    invoke-virtual {v9, v6, v10, v11, v12}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@ae
    move-result-object v6

    #@af
    .line 686
    :cond_3
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    #@b2
    move-result v9

    #@b3
    if-nez v9, :cond_e

    #@b5
    .line 687
    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    #@b8
    .line 688
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    #@bb
    move-result-object v9

    #@bc
    sget-object v10, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    #@be
    if-ne v9, v10, :cond_d

    #@c0
    .line 690
    new-instance v9, Ljava/io/FileNotFoundException;

    #@c2
    invoke-direct {v9, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v9

    #@c6
    .line 603
    .end local v6    # "s":Ljava/net/Socket;
    .end local v7    # "serverAddress":Ljava/net/InetAddress;
    .restart local v0    # "add":Ljava/net/InetAddress;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :cond_4
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    #@c8
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@cb
    move-result-object v9

    #@cc
    invoke-static {v9, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    #@cf
    move-result-object v1

    #@d0
    .local v1, "dest":Ljava/net/InetSocketAddress;
    goto :goto_0

    #@d1
    .line 607
    .end local v0    # "add":Ljava/net/InetAddress;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "port":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v8    # "serverAnswer":Ljava/lang/String;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :cond_5
    const-string/jumbo v9, "PASV"

    #@d4
    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@d7
    .line 608
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    #@da
    move-result-object v8

    #@db
    .line 622
    .restart local v8    # "serverAnswer":Ljava/lang/String;
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    #@dd
    if-nez v9, :cond_6

    #@df
    .line 623
    const-string/jumbo v9, "227 .* \\(?(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)?"

    #@e2
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@e5
    move-result-object v9

    #@e6
    sput-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    #@e8
    .line 625
    :cond_6
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    #@ea
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@ed
    move-result-object v3

    #@ee
    .line 626
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@f1
    move-result v9

    #@f2
    if-nez v9, :cond_7

    #@f4
    .line 627
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    #@f6
    new-instance v10, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v11, "PASV failed : "

    #@fe
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v10

    #@102
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v10

    #@106
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v10

    #@10a
    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    #@10d
    throw v9

    #@10e
    .line 630
    :cond_7
    const/4 v9, 0x3

    #@10f
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@112
    move-result-object v9

    #@113
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@116
    move-result v9

    #@117
    const/4 v10, 0x2

    #@118
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@11b
    move-result-object v10

    #@11c
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@11f
    move-result v10

    #@120
    shl-int/lit8 v10, v10, 0x8

    #@122
    add-int v4, v9, v10

    #@124
    .line 632
    .restart local v4    # "port":I
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@127
    move-result-object v9

    #@128
    const/16 v10, 0x2c

    #@12a
    const/16 v11, 0x2e

    #@12c
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@12f
    move-result-object v5

    #@130
    .line 633
    .restart local v5    # "s":Ljava/lang/String;
    new-instance v1, Ljava/net/InetSocketAddress;

    #@132
    .end local v1    # "dest":Ljava/net/InetSocketAddress;
    invoke-direct {v1, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@135
    .local v1, "dest":Ljava/net/InetSocketAddress;
    goto/16 :goto_0

    #@137
    .line 647
    :cond_8
    new-instance v6, Ljava/net/Socket;

    #@139
    sget-object v9, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@13b
    invoke-direct {v6, v9}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    #@13e
    .restart local v6    # "s":Ljava/net/Socket;
    goto/16 :goto_1

    #@140
    .line 650
    .end local v6    # "s":Ljava/net/Socket;
    :cond_9
    new-instance v6, Ljava/net/Socket;

    #@142
    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    #@145
    .restart local v6    # "s":Ljava/net/Socket;
    goto/16 :goto_1

    #@147
    .line 668
    .restart local v7    # "serverAddress":Ljava/net/InetAddress;
    :cond_a
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    #@149
    if-lez v9, :cond_b

    #@14b
    .line 669
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    #@14d
    invoke-virtual {v6, v1, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@150
    goto/16 :goto_2

    #@152
    .line 671
    :cond_b
    invoke-virtual {v6, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    #@155
    goto/16 :goto_2

    #@157
    .line 676
    :cond_c
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    #@159
    if-lez v9, :cond_2

    #@15b
    .line 677
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    #@15d
    invoke-virtual {v6, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    #@160
    goto/16 :goto_3

    #@162
    .line 682
    :catch_0
    move-exception v2

    #@163
    .line 683
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    #@165
    new-instance v10, Ljava/lang/StringBuilder;

    #@167
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@16a
    const-string/jumbo v11, "Can\'t open secure data channel: "

    #@16d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v10

    #@171
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v10

    #@175
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v10

    #@179
    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    #@17c
    throw v9

    #@17d
    .line 692
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    #@17f
    new-instance v10, Ljava/lang/StringBuilder;

    #@181
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v10

    #@188
    const-string/jumbo v11, ":"

    #@18b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v10

    #@18f
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    #@192
    move-result-object v11

    #@193
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v10

    #@197
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19a
    move-result-object v10

    #@19b
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    #@19e
    move-result-object v11

    #@19f
    invoke-direct {v9, v10, v11}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    #@1a2
    throw v9

    #@1a3
    .line 694
    :cond_e
    return-object v6
.end method

.method private readReply()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 498
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readServerResponse()I

    #@4
    move-result v0

    #@5
    invoke-static {v0}, Lsun/net/ftp/FtpReplyCode;->find(I)Lsun/net/ftp/FtpReplyCode;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@b
    .line 500
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@d
    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositivePreliminary()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 501
    iput-boolean v2, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    #@15
    .line 502
    return v2

    #@16
    .line 504
    :cond_0
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@18
    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositiveCompletion()Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_1

    #@1e
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@20
    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositiveIntermediate()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 505
    :cond_1
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@28
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    #@2a
    if-ne v0, v1, :cond_2

    #@2c
    .line 506
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferName()V

    #@2f
    .line 508
    :cond_2
    return v2

    #@30
    .line 510
    :cond_3
    const/4 v0, 0x0

    #@31
    return v0
.end method

.method private readServerResponse()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v14, 0xa

    #@2
    const/4 v13, 0x4

    #@3
    const/4 v12, -0x1

    #@4
    const/4 v11, 0x3

    #@5
    const/4 v10, 0x0

    #@6
    .line 413
    new-instance v5, Ljava/lang/StringBuffer;

    #@8
    const/16 v7, 0x20

    #@a
    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    #@d
    .line 415
    .local v5, "replyBuf":Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    #@e
    .line 419
    .local v2, "continuingCode":I
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@10
    invoke-virtual {v7, v10}, Ljava/util/Vector;->setSize(I)V

    #@13
    .line 421
    :cond_0
    :goto_0
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    #@15
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    #@18
    move-result v0

    #@19
    .local v0, "c":I
    if-eq v0, v12, :cond_2

    #@1b
    .line 422
    const/16 v7, 0xd

    #@1d
    if-ne v0, v7, :cond_1

    #@1f
    .line 423
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    #@21
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    #@24
    move-result v0

    #@25
    if-eq v0, v14, :cond_1

    #@27
    .line 424
    const/16 v7, 0xd

    #@29
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2c
    .line 427
    :cond_1
    int-to-char v7, v0

    #@2d
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 428
    if-ne v0, v14, :cond_0

    #@32
    .line 432
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    .line 433
    .local v6, "response":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    #@39
    .line 434
    sget-object v7, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    #@3b
    const/16 v8, 0x12c

    #@3d
    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_3

    #@43
    .line 435
    sget-object v7, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    #@45
    new-instance v8, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v9, "Server ["

    #@4d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v8

    #@51
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    #@53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    const-string/jumbo v9, "] --> "

    #@5a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@69
    .line 438
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@6c
    move-result v7

    #@6d
    if-nez v7, :cond_6

    #@6f
    .line 439
    const/4 v1, -0x1

    #@70
    .line 451
    .local v1, "code":I
    :goto_1
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@72
    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@75
    .line 452
    if-eq v2, v12, :cond_7

    #@77
    .line 454
    if-ne v1, v2, :cond_0

    #@79
    .line 455
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@7c
    move-result v7

    #@7d
    if-lt v7, v13, :cond_4

    #@7f
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    #@82
    move-result v7

    #@83
    const/16 v8, 0x2d

    #@85
    if-eq v7, v8, :cond_0

    #@87
    .line 459
    :cond_4
    const/4 v2, -0x1

    #@88
    .line 470
    :cond_5
    return v1

    #@89
    .line 442
    .end local v1    # "code":I
    :cond_6
    const/4 v7, 0x0

    #@8a
    const/4 v8, 0x3

    #@8b
    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8e
    move-result-object v7

    #@8f
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@92
    move-result v1

    #@93
    .restart local v1    # "code":I
    goto :goto_1

    #@94
    .line 443
    .end local v1    # "code":I
    :catch_0
    move-exception v3

    #@95
    .line 444
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    #@96
    .restart local v1    # "code":I
    goto :goto_1

    #@97
    .line 462
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@9a
    move-result v7

    #@9b
    if-lt v7, v13, :cond_5

    #@9d
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    #@a0
    move-result v7

    #@a1
    const/16 v8, 0x2d

    #@a3
    if-ne v7, v8, :cond_5

    #@a5
    .line 463
    move v2, v1

    #@a6
    .line 464
    goto/16 :goto_0

    #@a8
    .line 445
    .end local v1    # "code":I
    :catch_1
    move-exception v4

    #@a9
    .local v4, "e":Ljava/lang/StringIndexOutOfBoundsException;
    goto/16 :goto_0
.end method

.method private sendSecurityData([B)Z
    .locals 4
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1903
    new-instance v0, Lsun/misc/BASE64Encoder;

    #@2
    invoke-direct {v0}, Lsun/misc/BASE64Encoder;-><init>()V

    #@5
    .line 1904
    .local v0, "encoder":Lsun/misc/BASE64Encoder;
    invoke-virtual {v0, p1}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1905
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "ADAT "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    #@20
    move-result v2

    #@21
    return v2
.end method

.method private sendServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@5
    .line 476
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    #@7
    const/16 v1, 0x12c

    #@9
    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 477
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Server ["

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, "] <-- "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@35
    .line 474
    :cond_0
    return-void
.end method

.method private tryConnect(Ljava/net/InetSocketAddress;I)V
    .locals 5
    .param p1, "dest"    # Ljava/net/InetSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 915
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 916
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V

    #@9
    .line 918
    :cond_0
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->doConnect(Ljava/net/InetSocketAddress;I)Ljava/net/Socket;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@f
    .line 920
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    #@11
    new-instance v2, Ljava/io/BufferedOutputStream;

    #@13
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@15
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1c
    .line 921
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@1e
    const/4 v4, 0x1

    #@1f
    .line 920
    invoke-direct {v1, v2, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    #@22
    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 925
    new-instance v1, Ljava/io/BufferedInputStream;

    #@26
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@28
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@2f
    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    #@31
    .line 914
    return-void

    #@32
    .line 922
    :catch_0
    move-exception v0

    #@33
    .line 923
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    #@35
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    const-string/jumbo v3, "encoding not found"

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@4e
    throw v1
.end method

.method private tryLogin(Ljava/lang/String;[C)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "USER "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@17
    .line 1028
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@19
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    #@1b
    if-ne v0, v1, :cond_0

    #@1d
    .line 1029
    if-eqz p2, :cond_0

    #@1f
    array-length v0, p2

    #@20
    if-lez v0, :cond_0

    #@22
    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, "PASS "

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@3d
    .line 1022
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()Lsun/net/ftp/FtpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1555
    const-string/jumbo v0, "ABOR"

    #@3
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@6
    .line 1574
    return-object p0
.end method

.method public allocate(J)Lsun/net/ftp/FtpClient;
    .locals 3
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ALLO "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@17
    .line 2125
    return-object p0
.end method

.method public appendFile(Ljava/lang/String;Ljava/io/InputStream;)Lsun/net/ftp/FtpClient;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1379
    new-instance v4, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v5, "APPE "

    #@9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    #@18
    move-result-object v3

    #@19
    .line 1380
    .local v3, "s":Ljava/net/Socket;
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@1c
    move-result-object v4

    #@1d
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    #@20
    move-result-object v2

    #@21
    .line 1381
    .local v2, "remote":Ljava/io/OutputStream;
    const/16 v4, 0x3a98

    #@23
    new-array v0, v4, [B

    #@25
    .line 1383
    .local v0, "buf":[B
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    #@28
    move-result v1

    #@29
    .local v1, "l":I
    if-ltz v1, :cond_1

    #@2b
    .line 1384
    if-lez v1, :cond_0

    #@2d
    .line 1385
    invoke-virtual {v2, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    #@30
    goto :goto_0

    #@31
    .line 1388
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    #@34
    .line 1389
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    #@37
    move-result-object v4

    #@38
    return-object v4
.end method

.method public changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "remoteDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1147
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "directory can\'t be null or empty"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 1151
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v1, "CWD "

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@2b
    .line 1152
    return-object p0
.end method

.method public changeToParentDirectory()Lsun/net/ftp/FtpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1162
    const-string/jumbo v0, "CDUP"

    #@3
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@6
    .line 1163
    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1123
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1124
    const-string/jumbo v0, "QUIT"

    #@9
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    #@c
    .line 1125
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    #@f
    .line 1127
    :cond_0
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V

    #@12
    .line 1122
    return-void
.end method

.method public completePending()Lsun/net/ftp/FtpClient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1611
    :cond_0
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1612
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    #@7
    .line 1613
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1614
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    #@f
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@15
    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    #@18
    throw v0

    #@19
    .line 1617
    :cond_1
    return-object p0
.end method

.method public connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    .locals 1
    .param p1, "dest"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 999
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/net/ftp/impl/FtpClient;->connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;
    .locals 3
    .param p1, "dest"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1009
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1010
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Wrong address type"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1012
    :cond_0
    nop

    #@e
    nop

    #@f
    .end local p1    # "dest":Ljava/net/SocketAddress;
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    #@11
    .line 1013
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    #@13
    invoke-direct {p0, v0, p2}, Lsun/net/ftp/impl/FtpClient;->tryConnect(Ljava/net/InetSocketAddress;I)V

    #@16
    .line 1014
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 1015
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Welcome message: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 1016
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 1015
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 1016
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@38
    .line 1015
    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    #@3b
    throw v0

    #@3c
    .line 1018
    :cond_1
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    const/4 v1, 0x4

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    #@47
    .line 1019
    return-object p0
.end method

.method public deleteFile(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DELE "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@17
    .line 1415
    return-object p0
.end method

.method public enablePassiveMode(Z)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "passive"    # Z

    #@0
    .prologue
    .line 835
    return-object p0
.end method

.method public endSecureSession()Lsun/net/ftp/FtpClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2094
    iget-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2095
    return-object p0

    #@5
    .line 2098
    :cond_0
    const-string/jumbo v1, "CCC"

    #@8
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@b
    .line 2099
    const-string/jumbo v1, "PROT C"

    #@e
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@11
    .line 2100
    const/4 v1, 0x0

    #@12
    iput-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    #@14
    .line 2102
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    #@16
    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@18
    .line 2103
    const/4 v1, 0x0

    #@19
    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    #@1b
    .line 2105
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    #@1d
    new-instance v2, Ljava/io/BufferedOutputStream;

    #@1f
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@21
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@28
    .line 2106
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@2a
    const/4 v4, 0x1

    #@2b
    .line 2105
    invoke-direct {v1, v2, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    #@2e
    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 2110
    new-instance v1, Ljava/io/BufferedInputStream;

    #@32
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@34
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@37
    move-result-object v2

    #@38
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@3b
    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    #@3d
    .line 2112
    return-object p0

    #@3e
    .line 2107
    :catch_0
    move-exception v0

    #@3f
    .line 2108
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    #@41
    new-instance v2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    const-string/jumbo v3, "encoding not found"

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@5a
    throw v1
.end method

.method public getConnectTimeout()I
    .locals 1

    #@0
    .prologue
    .line 867
    iget v0, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    #@2
    return v0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1534
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1535
    .local v0, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "FEAT"

    #@8
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@b
    .line 1536
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    #@e
    move-result-object v2

    #@f
    .line 1539
    .local v2, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v1, 0x1

    #@10
    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@13
    move-result v4

    #@14
    add-int/lit8 v4, v4, -0x1

    #@16
    if-ge v1, v4, :cond_0

    #@18
    .line 1540
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/lang/String;

    #@1e
    .line 1542
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@21
    move-result v4

    #@22
    add-int/lit8 v4, v4, -0x1

    #@24
    const/4 v5, 0x1

    #@25
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 1539
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1544
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getFile(Ljava/lang/String;Ljava/io/OutputStream;)Lsun/net/ftp/FtpClient;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x3a98

    #@2
    const-wide/16 v10, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    .line 1223
    iget-wide v4, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    #@7
    cmp-long v4, v4, v10

    #@9
    if-lez v4, :cond_2

    #@b
    .line 1226
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "REST "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    iget-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    #@19
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-object v3

    #@25
    .line 1228
    .local v3, "s":Ljava/net/Socket;
    iput-wide v10, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    #@27
    .line 1230
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "RETR "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@3e
    .line 1231
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    #@41
    .line 1232
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@44
    move-result-object v4

    #@45
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    #@48
    move-result-object v2

    #@49
    .line 1233
    .local v2, "remote":Ljava/io/InputStream;
    new-array v0, v9, [B

    #@4b
    .line 1235
    .local v0, "buf":[B
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    #@4e
    move-result v1

    #@4f
    .local v1, "l":I
    if-ltz v1, :cond_1

    #@51
    .line 1236
    if-lez v1, :cond_0

    #@53
    .line 1237
    invoke-virtual {p2, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    #@56
    goto :goto_0

    #@57
    .line 1227
    .end local v0    # "buf":[B
    .end local v1    # "l":I
    .end local v2    # "remote":Ljava/io/InputStream;
    .end local v3    # "s":Ljava/net/Socket;
    :catchall_0
    move-exception v4

    #@58
    .line 1228
    iput-wide v10, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    #@5a
    .line 1227
    throw v4

    #@5b
    .line 1240
    .restart local v0    # "buf":[B
    .restart local v1    # "l":I
    .restart local v2    # "remote":Ljava/io/InputStream;
    .restart local v3    # "s":Ljava/net/Socket;
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    #@5e
    .line 1254
    :goto_1
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    #@61
    move-result-object v4

    #@62
    return-object v4

    #@63
    .line 1242
    .end local v0    # "buf":[B
    .end local v1    # "l":I
    .end local v2    # "remote":Ljava/io/InputStream;
    .end local v3    # "s":Ljava/net/Socket;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v5, "RETR "

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    #@7a
    move-result-object v3

    #@7b
    .line 1243
    .restart local v3    # "s":Ljava/net/Socket;
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    #@7e
    .line 1244
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@81
    move-result-object v4

    #@82
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    #@85
    move-result-object v2

    #@86
    .line 1245
    .restart local v2    # "remote":Ljava/io/InputStream;
    new-array v0, v9, [B

    #@88
    .line 1247
    .restart local v0    # "buf":[B
    :cond_3
    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    #@8b
    move-result v1

    #@8c
    .restart local v1    # "l":I
    if-ltz v1, :cond_4

    #@8e
    .line 1248
    if-lez v1, :cond_3

    #@90
    .line 1249
    invoke-virtual {p2, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    #@93
    goto :goto_2

    #@94
    .line 1252
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    #@97
    goto :goto_1
.end method

.method public getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 1270
    iget-wide v2, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    #@5
    cmp-long v1, v2, v6

    #@7
    if-lez v1, :cond_1

    #@9
    .line 1272
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "REST "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget-wide v2, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    #@17
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v0

    #@23
    .line 1274
    .local v0, "s":Ljava/net/Socket;
    iput-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    #@25
    .line 1276
    if-nez v0, :cond_0

    #@27
    .line 1277
    return-object v4

    #@28
    .line 1273
    .end local v0    # "s":Ljava/net/Socket;
    :catchall_0
    move-exception v1

    #@29
    .line 1274
    iput-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    #@2b
    .line 1273
    throw v1

    #@2c
    .line 1279
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v2, "RETR "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@43
    .line 1280
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    #@46
    .line 1281
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    #@4d
    move-result-object v1

    #@4e
    return-object v1

    #@4f
    .line 1284
    .end local v0    # "s":Ljava/net/Socket;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v2, "RETR "

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    #@66
    move-result-object v0

    #@67
    .line 1285
    .restart local v0    # "s":Ljava/net/Socket;
    if-nez v0, :cond_2

    #@69
    .line 1286
    return-object v4

    #@6a
    .line 1288
    :cond_2
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    #@6d
    .line 1289
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@70
    move-result-object v1

    #@71
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    #@74
    move-result-object v1

    #@75
    return-object v1
.end method

.method public getHelp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2173
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "HELP "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@17
    .line 2192
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    #@1a
    move-result-object v1

    #@1b
    .line 2193
    .local v1, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@1e
    move-result v3

    #@1f
    const/4 v4, 0x1

    #@20
    if-ne v3, v4, :cond_0

    #@22
    .line 2195
    const/4 v3, 0x0

    #@23
    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Ljava/lang/String;

    #@29
    const/4 v4, 0x4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    return-object v3

    #@2f
    .line 2199
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@34
    .line 2200
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    #@35
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@38
    move-result v3

    #@39
    add-int/lit8 v3, v3, -0x1

    #@3b
    if-ge v0, v3, :cond_1

    #@3d
    .line 2201
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Ljava/lang/String;

    #@43
    const/4 v4, 0x3

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4b
    .line 2200
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 2203
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    return-object v3
.end method

.method public getLastFileName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2029
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLastModified(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1770
    new-instance v4, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v5, "MDTM "

    #@9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@18
    .line 1771
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@1a
    sget-object v5, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    #@1c
    if-ne v4, v5, :cond_1

    #@1e
    .line 1772
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    const/4 v5, 0x4

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 1773
    .local v3, "s":Ljava/lang/String;
    const/4 v0, 0x0

    #@28
    .line 1774
    .local v0, "d":Ljava/util/Date;
    sget-object v5, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    #@2a
    const/4 v4, 0x0

    #@2b
    array-length v6, v5

    #@2c
    .end local v0    # "d":Ljava/util/Date;
    :goto_0
    if-ge v4, v6, :cond_1

    #@2e
    aget-object v1, v5, v4

    #@30
    .line 1776
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    move-result-object v0

    #@34
    .line 1779
    :goto_1
    if-eqz v0, :cond_0

    #@36
    .line 1780
    return-object v0

    #@37
    .line 1777
    :catch_0
    move-exception v2

    #@38
    .local v2, "ex":Ljava/text/ParseException;
    goto :goto_1

    #@39
    .line 1774
    .end local v2    # "ex":Ljava/text/ParseException;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1784
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-object v7
.end method

.method public getLastReplyCode()Lsun/net/ftp/FtpReplyCode;
    .locals 1

    #@0
    .prologue
    .line 1986
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@2
    return-object v0
.end method

.method public getLastResponseString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1996
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1997
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 1998
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    .line 1999
    .local v0, "l":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@1d
    .line 2000
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    goto :goto_0

    #@21
    .line 2004
    .end local v0    # "l":Ljava/lang/String;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    return-object v3
.end method

.method public getLastTransferSize()J
    .locals 2

    #@0
    .prologue
    .line 2016
    iget-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    #@2
    return-wide v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    #@0
    .prologue
    .line 905
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    #@2
    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    #@0
    .prologue
    .line 889
    iget v0, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    #@2
    return v0
.end method

.method public getServerAddress()Ljava/net/SocketAddress;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 995
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@8
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1733
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 1734
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "path can\'t be null or empty"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 1736
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "SIZE "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@28
    .line 1737
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@2a
    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    #@2c
    if-ne v1, v2, :cond_2

    #@2e
    .line 1738
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 1739
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@35
    move-result v1

    #@36
    add-int/lit8 v1, v1, -0x1

    #@38
    const/4 v2, 0x4

    #@39
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 1740
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@40
    move-result-wide v2

    #@41
    return-wide v2

    #@42
    .line 1742
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    const-wide/16 v2, -0x1

    #@44
    return-wide v2
.end method

.method public getStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1472
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v3, "STAT"

    #@5
    :goto_0
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@8
    .line 1497
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    #@b
    move-result-object v1

    #@c
    .line 1498
    .local v1, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@11
    .line 1499
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    #@12
    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@15
    move-result v3

    #@16
    add-int/lit8 v3, v3, -0x1

    #@18
    if-ge v0, v3, :cond_1

    #@1a
    .line 1500
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Ljava/lang/String;

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 1499
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_1

    #@26
    .line 1472
    .end local v0    # "i":I
    .end local v1    # "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "STAT "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    goto :goto_0

    #@3b
    .line 1502
    .restart local v0    # "i":I
    .restart local v1    # "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    return-object v3
.end method

.method public getSystem()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2153
    const-string/jumbo v1, "SYST"

    #@3
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@6
    .line 2157
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 2159
    .local v0, "resp":Ljava/lang/String;
    const/4 v1, 0x4

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public getWelcomeMsg()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1977
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getWorkingDirectory()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1175
    const-string/jumbo v1, "PWD"

    #@3
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@6
    .line 1181
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1182
    .local v0, "answ":Ljava/lang/String;
    const-string/jumbo v1, "257"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 1183
    const/4 v1, 0x0

    #@14
    return-object v1

    #@15
    .line 1185
    :cond_0
    const/16 v1, 0x22

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@1a
    move-result v1

    #@1b
    const/4 v2, 0x5

    #@1c
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 991
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

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

.method public isLoggedIn()Z
    .locals 1

    #@0
    .prologue
    .line 1136
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    #@2
    return v0
.end method

.method public isPassiveModeEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 844
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public list(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1688
    if-nez p1, :cond_0

    #@3
    const-string/jumbo v1, "LIST"

    #@6
    :goto_0
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    #@9
    move-result-object v0

    #@a
    .line 1689
    .local v0, "s":Ljava/net/Socket;
    if-eqz v0, :cond_1

    #@c
    .line 1690
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@f
    move-result-object v1

    #@10
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 1688
    .end local v0    # "s":Ljava/net/Socket;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "LIST "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    goto :goto_0

    #@2a
    .line 1692
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_1
    return-object v3
.end method

.method public listFiles(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lsun/net/ftp/FtpDirEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1880
    const/4 v1, 0x0

    #@2
    .line 1881
    .local v1, "s":Ljava/net/Socket;
    const/4 v2, 0x0

    #@3
    .line 1883
    .local v2, "sin":Ljava/io/BufferedReader;
    if-nez p1, :cond_0

    #@5
    :try_start_0
    const-string/jumbo v3, "MLSD"

    #@8
    :goto_0
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 1889
    .end local v1    # "s":Ljava/net/Socket;
    :goto_1
    if-eqz v1, :cond_1

    #@e
    .line 1890
    new-instance v2, Ljava/io/BufferedReader;

    #@10
    .end local v2    # "sin":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/InputStreamReader;

    #@12
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@15
    move-result-object v4

    #@16
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@19
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@1c
    .line 1891
    .local v2, "sin":Ljava/io/BufferedReader;
    new-instance v3, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;

    #@1e
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->mlsxParser:Lsun/net/ftp/FtpDirParser;

    #@20
    invoke-direct {v3, p0, v4, v2}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V

    #@23
    return-object v3

    #@24
    .line 1883
    .restart local v1    # "s":Ljava/net/Socket;
    .local v2, "sin":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "MLSD "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    #@37
    move-result-object v3

    #@38
    goto :goto_0

    #@39
    .line 1893
    .end local v1    # "s":Ljava/net/Socket;
    :cond_1
    if-nez p1, :cond_2

    #@3b
    const-string/jumbo v3, "LIST"

    #@3e
    :goto_2
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    #@41
    move-result-object v1

    #@42
    .line 1894
    .local v1, "s":Ljava/net/Socket;
    if-eqz v1, :cond_3

    #@44
    .line 1895
    new-instance v2, Ljava/io/BufferedReader;

    #@46
    .end local v2    # "sin":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/InputStreamReader;

    #@48
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@4b
    move-result-object v4

    #@4c
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@4f
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@52
    .line 1896
    .local v2, "sin":Ljava/io/BufferedReader;
    new-instance v3, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;

    #@54
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    #@56
    invoke-direct {v3, p0, v4, v2}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V

    #@59
    return-object v3

    #@5a
    .line 1893
    .end local v1    # "s":Ljava/net/Socket;
    .local v2, "sin":Ljava/io/BufferedReader;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "LIST "

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    goto :goto_2

    #@6f
    .line 1899
    .restart local v1    # "s":Ljava/net/Socket;
    :cond_3
    return-object v5

    #@70
    .line 1884
    .local v1, "s":Ljava/net/Socket;
    :catch_0
    move-exception v0

    #@71
    .local v0, "FtpException":Lsun/net/ftp/FtpProtocolException;
    goto :goto_1
.end method

.method public login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    .locals 6
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    .line 1044
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 1045
    new-instance v3, Lsun/net/ftp/FtpProtocolException;

    #@9
    const-string/jumbo v4, "Not connected yet"

    #@c
    sget-object v5, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    #@e
    invoke-direct {v3, v4, v5}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    #@11
    throw v3

    #@12
    .line 1047
    :cond_0
    if-eqz p1, :cond_1

    #@14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_2

    #@1a
    .line 1048
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v4, "User name can\'t be null or empty"

    #@1f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v3

    #@23
    .line 1050
    :cond_2
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->tryLogin(Ljava/lang/String;[C)V

    #@26
    .line 1055
    new-instance v2, Ljava/lang/StringBuffer;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@2b
    .line 1056
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    #@2c
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@2e
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@31
    move-result v3

    #@32
    if-ge v0, v3, :cond_5

    #@34
    .line 1057
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@36
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Ljava/lang/String;

    #@3c
    .line 1058
    .local v1, "l":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@3e
    .line 1059
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@41
    move-result v3

    #@42
    if-lt v3, v4, :cond_3

    #@44
    const-string/jumbo v3, "230"

    #@47
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_3

    #@4d
    .line 1061
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    .line 1063
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@54
    .line 1056
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@56
    goto :goto_0

    #@57
    .line 1066
    .end local v1    # "l":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    #@5d
    .line 1067
    const/4 v3, 0x1

    #@5e
    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    #@60
    .line 1068
    return-object p0
.end method

.method public login(Ljava/lang/String;[CLjava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 6
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 1083
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 1084
    new-instance v3, Lsun/net/ftp/FtpProtocolException;

    #@9
    const-string/jumbo v4, "Not connected yet"

    #@c
    sget-object v5, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    #@e
    invoke-direct {v3, v4, v5}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    #@11
    throw v3

    #@12
    .line 1086
    :cond_0
    if-eqz p1, :cond_1

    #@14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_2

    #@1a
    .line 1087
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v4, "User name can\'t be null or empty"

    #@1f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v3

    #@23
    .line 1089
    :cond_2
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->tryLogin(Ljava/lang/String;[C)V

    #@26
    .line 1094
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    #@28
    sget-object v4, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    #@2a
    if-ne v3, v4, :cond_3

    #@2c
    .line 1095
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "ACCT "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@43
    .line 1100
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@48
    .line 1101
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@4a
    if-eqz v3, :cond_6

    #@4c
    .line 1102
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    #@4e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object v1

    #@52
    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_6

    #@58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Ljava/lang/String;

    #@5e
    .line 1103
    .local v0, "l":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@60
    .line 1104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@63
    move-result v3

    #@64
    if-lt v3, v5, :cond_5

    #@66
    const-string/jumbo v3, "230"

    #@69
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6c
    move-result v3

    #@6d
    if-eqz v3, :cond_5

    #@6f
    .line 1106
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    .line 1108
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@76
    goto :goto_0

    #@77
    .line 1112
    .end local v0    # "l":Ljava/lang/String;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    #@7d
    .line 1113
    const/4 v3, 0x1

    #@7e
    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    #@80
    .line 1114
    return-object p0
.end method

.method public makeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "MKD "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@17
    .line 1428
    return-object p0
.end method

.method public nameList(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1712
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "NLST "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    #@18
    move-result-object v0

    #@19
    .line 1713
    .local v0, "s":Ljava/net/Socket;
    if-eqz v0, :cond_0

    #@1b
    .line 1714
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    #@22
    move-result-object v1

    #@23
    return-object v1

    #@24
    .line 1716
    :cond_0
    return-object v3
.end method

.method public noop()Lsun/net/ftp/FtpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1452
    const-string/jumbo v0, "NOOP"

    #@3
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@6
    .line 1453
    return-object p0
.end method

.method public putFile(Ljava/lang/String;Ljava/io/InputStream;Z)Lsun/net/ftp/FtpClient;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .param p3, "unique"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1348
    if-eqz p3, :cond_1

    #@3
    const-string/jumbo v1, "STOU "

    #@6
    .line 1350
    .local v1, "cmd":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    #@8
    sget-object v6, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    #@a
    if-ne v5, v6, :cond_3

    #@c
    .line 1351
    new-instance v5, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    #@20
    move-result-object v4

    #@21
    .line 1352
    .local v4, "s":Ljava/net/Socket;
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@24
    move-result-object v5

    #@25
    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    #@28
    move-result-object v3

    #@29
    .line 1353
    .local v3, "remote":Ljava/io/OutputStream;
    const/16 v5, 0x3a98

    #@2b
    new-array v0, v5, [B

    #@2d
    .line 1355
    .local v0, "buf":[B
    :cond_0
    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    #@30
    move-result v2

    #@31
    .local v2, "l":I
    if-ltz v2, :cond_2

    #@33
    .line 1356
    if-lez v2, :cond_0

    #@35
    .line 1357
    invoke-virtual {v3, v0, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    #@38
    goto :goto_1

    #@39
    .line 1348
    .end local v0    # "buf":[B
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "l":I
    .end local v3    # "remote":Ljava/io/OutputStream;
    .end local v4    # "s":Ljava/net/Socket;
    :cond_1
    const-string/jumbo v1, "STOR "

    #@3c
    .restart local v1    # "cmd":Ljava/lang/String;
    goto :goto_0

    #@3d
    .line 1360
    .restart local v0    # "buf":[B
    .restart local v2    # "l":I
    .restart local v3    # "remote":Ljava/io/OutputStream;
    .restart local v4    # "s":Ljava/net/Socket;
    :cond_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    #@40
    .line 1362
    .end local v0    # "buf":[B
    .end local v2    # "l":I
    .end local v3    # "remote":Ljava/io/OutputStream;
    .end local v4    # "s":Ljava/net/Socket;
    :cond_3
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    #@43
    move-result-object v5

    #@44
    return-object v5
.end method

.method public putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unique"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1320
    if-eqz p2, :cond_0

    #@3
    const-string/jumbo v1, "STOU "

    #@6
    .line 1321
    .local v1, "cmd":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    #@1a
    move-result-object v2

    #@1b
    .line 1322
    .local v2, "s":Ljava/net/Socket;
    if-nez v2, :cond_1

    #@1d
    .line 1323
    return-object v4

    #@1e
    .line 1320
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "s":Ljava/net/Socket;
    :cond_0
    const-string/jumbo v1, "STOR "

    #@21
    .restart local v1    # "cmd":Ljava/lang/String;
    goto :goto_0

    #@22
    .line 1325
    .restart local v2    # "s":Ljava/net/Socket;
    :cond_1
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    #@24
    sget-object v4, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    #@26
    if-ne v3, v4, :cond_2

    #@28
    const/4 v0, 0x1

    #@29
    .line 1326
    .local v0, "bm":Z
    :goto_1
    new-instance v3, Lsun/net/TelnetOutputStream;

    #@2b
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@2e
    move-result-object v4

    #@2f
    invoke-direct {v3, v4, v0}, Lsun/net/TelnetOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    #@32
    return-object v3

    #@33
    .line 1325
    .end local v0    # "bm":Z
    :cond_2
    const/4 v0, 0x0

    #@34
    .restart local v0    # "bm":Z
    goto :goto_1
.end method

.method public reInit()Lsun/net/ftp/FtpClient;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1626
    const-string/jumbo v2, "REIN"

    #@4
    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@7
    .line 1627
    iput-boolean v6, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    #@9
    .line 1628
    iget-boolean v2, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1629
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@f
    instance-of v2, v2, Ljavax/net/ssl/SSLSocket;

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1630
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@15
    check-cast v2, Ljavax/net/ssl/SSLSocket;

    #@17
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@1a
    move-result-object v1

    #@1b
    .line 1631
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->invalidate()V

    #@1e
    .line 1633
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    #@20
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@22
    .line 1634
    const/4 v2, 0x0

    #@23
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    #@25
    .line 1636
    :try_start_0
    new-instance v2, Ljava/io/PrintStream;

    #@27
    new-instance v3, Ljava/io/BufferedOutputStream;

    #@29
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@2b
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@2e
    move-result-object v4

    #@2f
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@32
    .line 1637
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@34
    const/4 v5, 0x1

    #@35
    .line 1636
    invoke-direct {v2, v3, v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    #@38
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 1641
    new-instance v2, Ljava/io/BufferedInputStream;

    #@3c
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@3e
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@41
    move-result-object v3

    #@42
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@45
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    #@47
    .line 1644
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_0
    iput-boolean v6, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    #@49
    .line 1645
    return-object p0

    #@4a
    .line 1638
    .restart local v1    # "session":Ljavax/net/ssl/SSLSession;
    :catch_0
    move-exception v0

    #@4b
    .line 1639
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/InternalError;

    #@4d
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    const-string/jumbo v4, "encoding not found"

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@66
    throw v2
.end method

.method public removeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RMD "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@17
    .line 1442
    return-object p0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RNFR "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@17
    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v1, "RNTO "

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@2e
    .line 1402
    return-object p0
.end method

.method public setConnectTimeout(I)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 856
    iput p1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    #@2
    .line 857
    return-object p0
.end method

.method public setDirParser(Lsun/net/ftp/FtpDirParser;)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "p"    # Lsun/net/ftp/FtpDirParser;

    #@0
    .prologue
    .line 1798
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    #@2
    .line 1799
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "p"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 893
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    #@2
    .line 894
    return-object p0
.end method

.method public setReadTimeout(I)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 878
    iput p1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    #@2
    .line 879
    return-object p0
.end method

.method public setRestartOffset(J)Lsun/net/ftp/FtpClient;
    .locals 3
    .param p1, "offset"    # J

    #@0
    .prologue
    .line 1200
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 1201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "offset can\'t be negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1203
    :cond_0
    iput-wide p1, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    #@11
    .line 1204
    return-object p0
.end method

.method public setType(Lsun/net/ftp/FtpClient$TransferType;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "type"    # Lsun/net/ftp/FtpClient$TransferType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1657
    const-string/jumbo v0, "NOOP"

    #@3
    .line 1659
    .local v0, "cmd":Ljava/lang/String;
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    #@5
    .line 1660
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    #@7
    if-ne p1, v1, :cond_0

    #@9
    .line 1661
    const-string/jumbo v0, "TYPE A"

    #@c
    .line 1663
    :cond_0
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    #@e
    if-ne p1, v1, :cond_1

    #@10
    .line 1664
    const-string/jumbo v0, "TYPE I"

    #@13
    .line 1666
    :cond_1
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->EBCDIC:Lsun/net/ftp/FtpClient$TransferType;

    #@15
    if-ne p1, v1, :cond_2

    #@17
    .line 1667
    const-string/jumbo v0, "TYPE E"

    #@1a
    .line 1669
    :cond_2
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@1d
    .line 1670
    return-object p0
.end method

.method public siteCmd(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SITE "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@17
    .line 2217
    return-object p0
.end method

.method public startSecureSession()Lsun/net/ftp/FtpClient;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 2046
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 2047
    new-instance v4, Lsun/net/ftp/FtpProtocolException;

    #@9
    const-string/jumbo v5, "Not connected yet"

    #@c
    sget-object v6, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    #@e
    invoke-direct {v4, v5, v6}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    #@11
    throw v4

    #@12
    .line 2049
    :cond_0
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    #@14
    if-nez v4, :cond_1

    #@16
    .line 2051
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Ljavax/net/ssl/SSLSocketFactory;

    #@1c
    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 2056
    :cond_1
    const-string/jumbo v4, "AUTH TLS"

    #@21
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@24
    .line 2057
    const/4 v2, 0x0

    #@25
    .line 2059
    .local v2, "s":Ljava/net/Socket;
    :try_start_1
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    #@27
    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@29
    iget-object v6, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    #@2b
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    #@31
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    #@34
    move-result v7

    #@35
    const/4 v8, 0x1

    #@36
    invoke-virtual {v4, v5, v6, v7, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1

    #@39
    move-result-object v2

    #@3a
    .line 2068
    .local v2, "s":Ljava/net/Socket;
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@3c
    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    #@3e
    .line 2069
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@40
    .line 2071
    :try_start_2
    new-instance v4, Ljava/io/PrintStream;

    #@42
    new-instance v5, Ljava/io/BufferedOutputStream;

    #@44
    iget-object v6, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@46
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@49
    move-result-object v6

    #@4a
    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4d
    .line 2072
    sget-object v6, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@4f
    const/4 v7, 0x1

    #@50
    .line 2071
    invoke-direct {v4, v5, v7, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    #@53
    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    #@55
    .line 2076
    new-instance v4, Ljava/io/BufferedInputStream;

    #@57
    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    #@59
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@5c
    move-result-object v5

    #@5d
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@60
    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    #@62
    .line 2078
    const-string/jumbo v4, "PBSZ 0"

    #@65
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@68
    .line 2079
    const-string/jumbo v4, "PROT P"

    #@6b
    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@6e
    .line 2080
    iput-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    #@70
    .line 2081
    return-object p0

    #@71
    .line 2052
    .end local v2    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v1

    #@72
    .line 2053
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    #@74
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v4

    #@7c
    .line 2060
    .end local v1    # "e":Ljava/lang/Exception;
    .local v2, "s":Ljava/net/Socket;
    :catch_1
    move-exception v3

    #@7d
    .line 2062
    .local v3, "ssle":Ljavax/net/ssl/SSLException;
    :try_start_3
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@80
    .line 2065
    :goto_0
    throw v3

    #@81
    .line 2063
    :catch_2
    move-exception v1

    #@82
    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    #@83
    .line 2073
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ssle":Ljavax/net/ssl/SSLException;
    .local v2, "s":Ljava/net/Socket;
    :catch_3
    move-exception v0

    #@84
    .line 2074
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/InternalError;

    #@86
    new-instance v5, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    sget-object v6, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    #@8d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    const-string/jumbo v6, "encoding not found"

    #@94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@9f
    throw v4
.end method

.method public structureMount(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "struct"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SMNT "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    #@17
    .line 2140
    return-object p0
.end method

.method public useKerberos()Lsun/net/ftp/FtpClient;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1967
    return-object p0
.end method
