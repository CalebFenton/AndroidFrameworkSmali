.class public Lsun/net/ftp/impl/FtpClient;
.super Lsun/net/ftp/FtpClient;
.source "FtpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ftp/impl/FtpClient$DefaultParser;,
        Lsun/net/ftp/impl/FtpClient$MLSxParser;,
        Lsun/net/ftp/impl/FtpClient$FtpFileIterator;
    }
.end annotation


# static fields
.field private static blacklist MDTMformats:[Ljava/lang/String;

.field private static blacklist dateFormats:[Ljava/text/SimpleDateFormat;

.field private static blacklist defaultConnectTimeout:I

.field private static blacklist defaultSoTimeout:I

.field private static blacklist encoding:Ljava/lang/String;

.field private static blacklist epsvPat:Ljava/util/regex/Pattern;

.field private static blacklist linkp:Ljava/util/regex/Pattern;

.field private static final blacklist logger:Lsun/util/logging/PlatformLogger;

.field private static blacklist pasvPat:Ljava/util/regex/Pattern;

.field private static blacklist patStrings:[Ljava/lang/String;

.field private static blacklist patternGroups:[[I

.field private static blacklist patterns:[Ljava/util/regex/Pattern;

.field private static blacklist transPat:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist connectTimeout:I

.field private blacklist df:Ljava/text/DateFormat;

.field private blacklist in:Ljava/io/InputStream;

.field private blacklist lastFileName:Ljava/lang/String;

.field private blacklist lastReplyCode:Lsun/net/ftp/FtpReplyCode;

.field private blacklist lastTransSize:J

.field private blacklist loggedIn:Z

.field private blacklist mlsxParser:Lsun/net/ftp/FtpDirParser;

.field private blacklist oldSocket:Ljava/net/Socket;

.field private blacklist out:Ljava/io/PrintStream;

.field private blacklist parser:Lsun/net/ftp/FtpDirParser;

.field private final blacklist passiveMode:Z

.field private blacklist proxy:Ljava/net/Proxy;

.field private blacklist readTimeout:I

.field private blacklist replyPending:Z

.field private blacklist restartOffset:J

.field private blacklist server:Ljava/net/Socket;

.field private blacklist serverAddr:Ljava/net/InetSocketAddress;

.field private blacklist serverResponse:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sslFact:Ljavax/net/ssl/SSLSocketFactory;

.field private blacklist type:Lsun/net/ftp/FtpClient$TransferType;

.field private blacklist useCrypto:Z

.field private blacklist welcomeMsg:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdf(Lsun/net/ftp/impl/FtpClient;)Ljava/text/DateFormat;
    .registers 1

    iget-object p0, p0, Lsun/net/ftp/impl/FtpClient;->df:Ljava/text/DateFormat;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetproxy(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Proxy;
    .registers 1

    iget-object p0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetserver(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Socket;
    .registers 1

    iget-object p0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetlinkp()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->linkp:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetpatternGroups()[[I
    .registers 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetpatterns()[Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 55
    nop

    .line 56
    const-string v0, "sun.net.ftp.FtpClient"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    .line 65
    const-string v0, "ISO8859_1"

    sput-object v0, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    .line 90
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "([\\-ld](?:[r\\-][w\\-][x\\-]){3})\\s*\\d+ (\\w+)\\s*(\\w+)\\s*(\\d+)\\s*([A-Z][a-z][a-z]\\s*\\d+)\\s*(\\d\\d:\\d\\d)\\s*(\\p{Print}*)"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "([\\-ld](?:[r\\-][w\\-][x\\-]){3})\\s*\\d+ (\\w+)\\s*(\\w+)\\s*(\\d+)\\s*([A-Z][a-z][a-z]\\s*\\d+)\\s*(\\d{4})\\s*(\\p{Print}*)"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "(\\d{2}/\\d{2}/\\d{4})\\s*(\\d{2}:\\d{2}[ap])\\s*((?:[0-9,]+)|(?:<DIR>))\\s*(\\p{Graph}*)"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v6, "(\\d{2}-\\d{2}-\\d{2})\\s*(\\d{2}:\\d{2}[AP]M)\\s*((?:[0-9,]+)|(?:<DIR>))\\s*(\\p{Graph}*)"

    aput-object v6, v1, v2

    sput-object v1, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    .line 100
    const/16 v1, 0x8

    new-array v2, v1, [I

    fill-array-data v2, :array_de

    new-array v6, v1, [I

    fill-array-data v6, :array_f2

    new-array v7, v1, [I

    fill-array-data v7, :array_106

    new-array v1, v1, [I

    fill-array-data v1, :array_11a

    filled-new-array {v2, v6, v7, v1}, [[I

    move-result-object v1

    sput-object v1, Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I

    .line 108
    const-string v1, "(\\p{Print}+) \\-\\> (\\p{Print}+)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lsun/net/ftp/impl/FtpClient;->linkp:Ljava/util/regex/Pattern;

    .line 112
    filled-new-array {v3, v3}, [I

    move-result-object v1

    .line 113
    .local v1, "vals":[I
    new-array v2, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v2, v3

    .line 115
    .local v2, "encs":[Ljava/lang/String;
    new-instance v7, Lsun/net/ftp/impl/FtpClient$1;

    invoke-direct {v7, v1, v2}, Lsun/net/ftp/impl/FtpClient$1;-><init>([I[Ljava/lang/String;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 125
    aget v7, v1, v3

    const/4 v8, -0x1

    if-nez v7, :cond_63

    .line 126
    sput v8, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    goto :goto_67

    .line 128
    :cond_63
    aget v7, v1, v3

    sput v7, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    .line 131
    :goto_67
    aget v7, v1, v4

    if-nez v7, :cond_6e

    .line 132
    sput v8, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    goto :goto_72

    .line 134
    :cond_6e
    aget v7, v1, v4

    sput v7, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    .line 137
    :goto_72
    aget-object v7, v2, v3

    sput-object v7, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    .line 139
    :try_start_76
    sget-object v7, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-static {v7}, Lsun/net/ftp/impl/FtpClient;->isASCIISuperset(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 140
    sput-object v0, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_80} :catch_81

    .line 144
    :cond_80
    goto :goto_84

    .line 142
    :catch_81
    move-exception v7

    .line 143
    .local v7, "e":Ljava/lang/Exception;
    sput-object v0, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    .line 146
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_84
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/regex/Pattern;

    sput-object v0, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8c
    sget-object v7, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_a0

    .line 148
    sget-object v7, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    sget-object v8, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    aput-object v8, v7, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 370
    .end local v0    # "i":I
    .end local v1    # "vals":[I
    .end local v2    # "encs":[Ljava/lang/String;
    :cond_a0
    sput-object v6, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    .line 560
    sput-object v6, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    .line 561
    sput-object v6, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    .line 1759
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "yyyyMMddHHmmss.SSS"

    aput-object v1, v0, v3

    const-string v1, "yyyyMMddHHmmss"

    aput-object v1, v0, v4

    sput-object v0, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    .line 1763
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    sput-object v0, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    .line 1766
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_ba
    sget-object v1, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_dc

    .line 1767
    sget-object v1, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 1768
    sget-object v1, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    aget-object v1, v1, v0

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1766
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    .line 1770
    .end local v0    # "i":I
    :cond_dc
    return-void

    nop

    :array_de
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

    :array_f2
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

    :array_106
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

    :array_11a
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

.method protected constructor blacklist <init>()V
    .registers 4

    .line 822
    invoke-direct {p0}, Lsun/net/ftp/FtpClient;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    .line 62
    iput v0, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 69
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 70
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 74
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 82
    iput-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->passiveMode:Z

    .line 83
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    .line 84
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 85
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 109
    const/4 v1, 0x2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->df:Ljava/text/DateFormat;

    .line 368
    new-instance v1, Lsun/net/ftp/impl/FtpClient$DefaultParser;

    invoke-direct {v1, p0, v0}, Lsun/net/ftp/impl/FtpClient$DefaultParser;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient-IA;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    .line 369
    new-instance v1, Lsun/net/ftp/impl/FtpClient$MLSxParser;

    invoke-direct {v1, p0, v0}, Lsun/net/ftp/impl/FtpClient$MLSxParser;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient-IA;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->mlsxParser:Lsun/net/ftp/FtpDirParser;

    .line 823
    return-void
.end method

.method public static blacklist create()Lsun/net/ftp/FtpClient;
    .registers 1

    .line 831
    new-instance v0, Lsun/net/ftp/impl/FtpClient;

    invoke-direct {v0}, Lsun/net/ftp/impl/FtpClient;-><init>()V

    return-object v0
.end method

.method private blacklist createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 804
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v0, v1, :cond_d

    .line 805
    new-instance v0, Lsun/net/TelnetInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsun/net/TelnetInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 807
    :cond_d
    return-object p1
.end method

.method private blacklist createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 811
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v0, v1, :cond_d

    .line 812
    new-instance v0, Lsun/net/TelnetOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsun/net/TelnetOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0

    .line 814
    :cond_d
    return-object p1
.end method

.method private blacklist disconnect()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 983
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 984
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 986
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 987
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 988
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;

    .line 989
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 990
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 991
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 992
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 993
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 994
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 995
    return-void
.end method

.method private blacklist doConnect(Ljava/net/InetSocketAddress;I)Ljava/net/Socket;
    .registers 5
    .param p1, "dest"    # Ljava/net/InetSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_22

    .line 943
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1a

    .line 944
    new-instance v0, Lsun/net/ftp/impl/FtpClient$4;

    invoke-direct {v0, p0}, Lsun/net/ftp/impl/FtpClient$4;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .local v0, "s":Ljava/net/Socket;
    goto :goto_27

    .line 952
    .end local v0    # "s":Ljava/net/Socket;
    :cond_1a
    new-instance v0, Ljava/net/Socket;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_27

    .line 955
    .end local v0    # "s":Ljava/net/Socket;
    :cond_22
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 961
    .restart local v0    # "s":Ljava/net/Socket;
    :goto_27
    if-ltz p2, :cond_2d

    .line 962
    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_44

    .line 964
    :cond_2d
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v1, :cond_37

    .line 965
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_44

    .line 967
    :cond_37
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v1, :cond_41

    .line 968
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_44

    .line 970
    :cond_41
    invoke-virtual {v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 974
    :goto_44
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v1, :cond_4e

    .line 975
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_57

    .line 976
    :cond_4e
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v1, :cond_57

    .line 977
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 979
    :cond_57
    :goto_57
    return-object v0
.end method

.method private blacklist getResponseString()Ljava/lang/String;
    .registers 3

    .line 482
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getResponseStrings()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    return-object v0
.end method

.method private blacklist getSecurityData()[B
    .registers 5

    .line 1925
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v0

    .line 1926
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x4

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ADAT="

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1927
    new-instance v1, Lsun/misc/BASE64Decoder;

    invoke-direct {v1}, Lsun/misc/BASE64Decoder;-><init>()V

    .line 1931
    .local v1, "decoder":Lsun/misc/BASE64Decoder;
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_26} :catch_27

    return-object v2

    .line 1932
    :catch_27
    move-exception v2

    .line 1936
    .end local v1    # "decoder":Lsun/misc/BASE64Decoder;
    :cond_28
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getTransferName()V
    .registers 5

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 398
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "response":Ljava/lang/String;
    const-string v1, "unique file name:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 400
    .local v1, "i":I
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 401
    .local v2, "e":I
    if-ltz v1, :cond_1d

    .line 402
    add-int/lit8 v1, v1, 0x11

    .line 403
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 405
    :cond_1d
    return-void
.end method

.method private blacklist getTransferSize()V
    .registers 6

    .line 373
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 380
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "response":Ljava/lang/String;
    sget-object v1, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    if-nez v1, :cond_14

    .line 382
    const-string v1, "150 Opening .*\\((\\d+) bytes\\)."

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    .line 384
    :cond_14
    sget-object v1, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 385
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 386
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 389
    .end local v2    # "s":Ljava/lang/String;
    :cond_2b
    return-void
.end method

.method private static blacklist isASCIISuperset(Ljava/lang/String;)Z
    .registers 5
    .param p0, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_.!~*\'();/?:@&=+$,"

    .line 175
    .local v0, "chkS":Ljava/lang/String;
    const/16 v1, 0x51

    new-array v1, v1, [B

    fill-array-data v1, :array_12

    .line 181
    .local v1, "chkB":[B
    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 182
    .local v2, "b":[B
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    :array_12
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

.method private blacklist issueCommand(Ljava/lang/String;)Z
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/net/ftp/FtpProtocolException;
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 529
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    if-eqz v0, :cond_f

    .line 531
    :try_start_a
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;
    :try_end_d
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_a .. :try_end_d} :catch_e

    .line 534
    goto :goto_f

    .line 532
    :catch_e
    move-exception v0

    .line 537
    :cond_f
    :goto_f
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->sendServer(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v0

    return v0

    .line 538
    :cond_33
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    const-string v1, "Illegal FTP command"

    invoke-direct {v0, v1}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "ex":Lsun/net/ftp/FtpProtocolException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal carriage return"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 541
    throw v0

    .line 527
    .end local v0    # "ex":Lsun/net/ftp/FtpProtocolException;
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist issueCommandCheck(Ljava/lang/String;)V
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 559
    return-void

    .line 557
    :cond_7
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0
.end method

.method private blacklist openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    .registers 11
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    const-string v0, "|"

    :try_start_2
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0
    :try_end_6
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    .line 722
    :catch_7
    move-exception v1

    .line 725
    .local v1, "e":Lsun/net/ftp/FtpProtocolException;
    invoke-virtual {v1}, Lsun/net/ftp/FtpProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, "errmsg":Ljava/lang/String;
    const-string v3, "PASV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "EPSV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    .line 727
    :cond_1d
    throw v1

    .line 735
    .end local v1    # "e":Lsun/net/ftp/FtpProtocolException;
    .end local v2    # "errmsg":Ljava/lang/String;
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2d

    goto :goto_35

    .line 739
    :cond_2d
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    const-string v1, "Passive mode failed"

    invoke-direct {v0, v1}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_35
    :goto_35
    new-instance v1, Ljava/net/ServerSocket;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 745
    .local v1, "portSocket":Ljava/net/ServerSocket;
    :try_start_42
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 746
    .local v2, "myAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 747
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object v2, v3

    .line 756
    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EPRT |"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    instance-of v5, v2, Ljava/net/Inet6Address;

    if-eqz v5, :cond_65

    const-string v5, "2"

    goto :goto_67

    :cond_65
    const-string v5, "1"

    :goto_67
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 757
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "portCmd":Ljava/lang/String;
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ee

    .line 760
    :cond_97
    const-string v3, "PORT "

    .line 761
    .end local v0    # "portCmd":Ljava/lang/String;
    .local v3, "portCmd":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 764
    .local v0, "addr":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9e
    array-length v6, v0
    :try_end_9f
    .catchall {:try_start_42 .. :try_end_9f} :catchall_140

    const-string v7, ","

    if-ge v5, v6, :cond_c0

    .line 765
    :try_start_a3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v8, v0, v5

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 764
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    .line 769
    .end local v5    # "i":I
    :cond_c0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    ushr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 770
    .end local v3    # "portCmd":Ljava/lang/String;
    .local v5, "portCmd":Ljava/lang/String;
    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 771
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    move-object v0, v5

    .line 775
    .end local v5    # "portCmd":Ljava/lang/String;
    .local v0, "portCmd":Ljava/lang/String;
    :cond_ee
    iget v3, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v3, :cond_f8

    .line 776
    iget v3, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    goto :goto_101

    .line 778
    :cond_f8
    sget v3, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v3, :cond_101

    .line 779
    sget v3, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 782
    :cond_101
    :goto_101
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 783
    .local v3, "clientSocket":Ljava/net/Socket;
    iget v5, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v5, :cond_10f

    .line 784
    iget v5, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v3, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_118

    .line 786
    :cond_10f
    sget v5, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v5, :cond_118

    .line 787
    sget v5, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v3, v5}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_118
    .catchall {:try_start_a3 .. :try_end_118} :catchall_140

    .line 791
    :cond_118
    :goto_118
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 792
    nop

    .line 793
    iget-boolean v5, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v5, :cond_13f

    .line 795
    :try_start_120
    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v6, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-virtual {v5, v3, v6, v7, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_132} :catch_134

    move-object v3, v4

    .line 798
    goto :goto_13f

    .line 796
    :catch_134
    move-exception v4

    .line 797
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 800
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_13f
    :goto_13f
    return-object v3

    .line 791
    .end local v0    # "portCmd":Ljava/lang/String;
    .end local v2    # "myAddress":Ljava/net/InetAddress;
    .end local v3    # "clientSocket":Ljava/net/Socket;
    :catchall_140
    move-exception v0

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 792
    throw v0
.end method

.method private blacklist openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    .registers 11
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    const/4 v0, 0x0

    .line 586
    .local v0, "dest":Ljava/net/InetSocketAddress;
    const-string v1, "EPSV ALL"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_65

    .line 588
    const-string v1, "EPSV"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 589
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "serverAnswer":Ljava/lang/String;
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    if-nez v3, :cond_1f

    .line 598
    const-string v3, "^229 .* \\(\\|\\|\\|(\\d+)\\|\\)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    .line 600
    :cond_1f
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 601
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 605
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 606
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 607
    .local v5, "port":I
    iget-object v6, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 608
    .local v6, "add":Ljava/net/InetAddress;
    if-eqz v6, :cond_41

    .line 609
    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v6, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .end local v0    # "dest":Ljava/net/InetSocketAddress;
    .local v7, "dest":Ljava/net/InetSocketAddress;
    goto :goto_4b

    .line 615
    .end local v7    # "dest":Ljava/net/InetSocketAddress;
    .restart local v0    # "dest":Ljava/net/InetSocketAddress;
    :cond_41
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v7

    .line 617
    .end local v0    # "dest":Ljava/net/InetSocketAddress;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "add":Ljava/net/InetAddress;
    .restart local v7    # "dest":Ljava/net/InetSocketAddress;
    :goto_4b
    goto :goto_ad

    .line 602
    .end local v5    # "port":I
    .end local v7    # "dest":Ljava/net/InetSocketAddress;
    .restart local v0    # "dest":Ljava/net/InetSocketAddress;
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    :cond_4c
    new-instance v2, Lsun/net/ftp/FtpProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EPSV failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 619
    .end local v1    # "serverAnswer":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_65
    const-string v1, "PASV"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 620
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v1

    .line 634
    .restart local v1    # "serverAnswer":Ljava/lang/String;
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    if-nez v3, :cond_7a

    .line 635
    const-string v3, "227 .* \\(?(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)?"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    .line 637
    :cond_7a
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 638
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_17d

    .line 642
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v4

    .line 644
    .restart local v5    # "port":I
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2c

    const/16 v7, 0x2e

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 645
    .restart local v4    # "s":Ljava/lang/String;
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v7, v6

    .line 649
    .end local v0    # "dest":Ljava/net/InetSocketAddress;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v7    # "dest":Ljava/net/InetSocketAddress;
    :goto_ad
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_cf

    .line 650
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_c7

    .line 651
    new-instance v0, Lsun/net/ftp/impl/FtpClient$2;

    invoke-direct {v0, p0}, Lsun/net/ftp/impl/FtpClient$2;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .local v0, "s":Ljava/net/Socket;
    goto :goto_d4

    .line 659
    .end local v0    # "s":Ljava/net/Socket;
    :cond_c7
    new-instance v0, Ljava/net/Socket;

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v0, v3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_d4

    .line 662
    .end local v0    # "s":Ljava/net/Socket;
    :cond_cf
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 665
    .restart local v0    # "s":Ljava/net/Socket;
    :goto_d4
    new-instance v3, Lsun/net/ftp/impl/FtpClient$3;

    invoke-direct {v3, p0}, Lsun/net/ftp/impl/FtpClient$3;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 675
    .local v3, "serverAddress":Ljava/net/InetAddress;
    new-instance v4, Ljava/net/InetSocketAddress;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 676
    iget v4, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v4, :cond_f2

    .line 677
    iget v4, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v0, v7, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_ff

    .line 679
    :cond_f2
    sget v4, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v4, :cond_fc

    .line 680
    sget v4, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v0, v7, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_ff

    .line 682
    :cond_fc
    invoke-virtual {v0, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 685
    :goto_ff
    iget v4, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v4, :cond_109

    .line 686
    iget v4, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_112

    .line 687
    :cond_109
    sget v4, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v4, :cond_112

    .line 688
    sget v4, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 690
    :cond_112
    :goto_112
    iget-boolean v4, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v4, :cond_140

    .line 692
    :try_start_116
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-virtual {v4, v0, v6, v8, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_124} :catch_126

    move-object v0, v2

    .line 695
    goto :goto_140

    .line 693
    :catch_126
    move-exception v2

    .line 694
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lsun/net/ftp/FtpProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t open secure data channel: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 697
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_140
    :goto_140
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17c

    .line 698
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 699
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v2

    sget-object v4, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    if-ne v2, v4, :cond_157

    .line 701
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 703
    :cond_157
    new-instance v2, Lsun/net/ftp/FtpProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v2

    .line 705
    :cond_17c
    return-object v0

    .line 639
    .end local v5    # "port":I
    .end local v7    # "dest":Ljava/net/InetSocketAddress;
    .local v0, "dest":Ljava/net/InetSocketAddress;
    .local v3, "m":Ljava/util/regex/Matcher;
    :cond_17d
    new-instance v2, Lsun/net/ftp/FtpProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PASV failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist readReply()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readServerResponse()I

    move-result v0

    invoke-static {v0}, Lsun/net/ftp/FtpReplyCode;->find(I)Lsun/net/ftp/FtpReplyCode;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 499
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositivePreliminary()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 500
    iput-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 501
    return v1

    .line 503
    :cond_16
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositiveCompletion()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositiveIntermediate()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    .line 509
    :cond_27
    const/4 v0, 0x0

    return v0

    .line 504
    :cond_29
    :goto_29
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    if-ne v0, v2, :cond_32

    .line 505
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferName()V

    .line 507
    :cond_32
    return v1
.end method

.method private blacklist readServerResponse()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 414
    .local v0, "replyBuf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 418
    .local v1, "continuingCode":I
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->setSize(I)V

    .line 420
    :cond_e
    :goto_e
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    move v4, v2

    .local v4, "c":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_31

    .line 421
    const/16 v2, 0xa

    const/16 v6, 0xd

    if-ne v4, v6, :cond_2a

    .line 422
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    move v4, v7

    if-eq v7, v2, :cond_2a

    .line 423
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 426
    :cond_2a
    int-to-char v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 427
    if-ne v4, v2, :cond_e

    .line 428
    nop

    .line 431
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 433
    sget-object v6, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    sget-object v7, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 434
    sget-object v6, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 437
    :cond_66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-nez v6, :cond_6f

    .line 438
    const/4 v6, -0x1

    .local v6, "code":I
    goto :goto_7d

    .line 441
    .end local v6    # "code":I
    :cond_6f
    :try_start_6f
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_77} :catch_7a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6f .. :try_end_77} :catch_78

    .restart local v6    # "code":I
    goto :goto_7c

    .line 444
    .end local v6    # "code":I
    :catch_78
    move-exception v5

    .line 447
    .local v5, "e":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_e

    .line 442
    .end local v5    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_7a
    move-exception v6

    .line 443
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    .line 448
    .local v6, "code":I
    :goto_7c
    nop

    .line 450
    :goto_7d
    iget-object v8, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 451
    const/16 v8, 0x2d

    const/4 v9, 0x4

    if-eq v1, v5, :cond_99

    .line 453
    if-ne v6, v1, :cond_e

    .line 454
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_97

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_97

    .line 455
    goto/16 :goto_e

    .line 458
    :cond_97
    const/4 v1, -0x1

    .line 459
    goto :goto_a8

    .line 461
    :cond_99
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_a8

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_a8

    .line 462
    move v1, v6

    .line 463
    goto/16 :goto_e

    .line 469
    :cond_a8
    :goto_a8
    return v6
.end method

.method private blacklist sendSecurityData([B)Z
    .registers 6
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/net/ftp/FtpProtocolException;
        }
    .end annotation

    .line 1919
    new-instance v0, Lsun/misc/BASE64Encoder;

    invoke-direct {v0}, Lsun/misc/BASE64Encoder;-><init>()V

    .line 1920
    .local v0, "encoder":Lsun/misc/BASE64Encoder;
    invoke-virtual {v0, p1}, Lsun/misc/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 1921
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADAT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private blacklist sendServer(Ljava/lang/String;)V
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 475
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 476
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 478
    :cond_33
    return-void
.end method

.method private blacklist tryConnect(Ljava/net/InetSocketAddress;I)V
    .registers 7
    .param p1, "dest"    # Ljava/net/InetSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 927
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 928
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V

    .line 930
    :cond_9
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->doConnect(Ljava/net/InetSocketAddress;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 932
    :try_start_f
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v2, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_24} :catch_33

    .line 936
    nop

    .line 937
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 938
    return-void

    .line 934
    :catch_33
    move-exception v0

    .line 935
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "encoding not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist tryLogin(Ljava/lang/String;[C)V
    .registers 5
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    if-ne v0, v1, :cond_3b

    .line 1041
    if-eqz p2, :cond_3b

    array-length v0, p2

    if-lez v0, :cond_3b

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PASS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1045
    :cond_3b
    return-void
.end method


# virtual methods
.method public blacklist abort()Lsun/net/ftp/FtpClient;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1570
    const-string v0, "ABOR"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1589
    return-object p0
.end method

.method public blacklist allocate(J)Lsun/net/ftp/FtpClient;
    .registers 5
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALLO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2141
    return-object p0
.end method

.method public blacklist appendFile(Ljava/lang/String;Ljava/io/InputStream;)Lsun/net/ftp/FtpClient;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1393
    const/16 v0, 0x5dc

    .line 1394
    .local v0, "mtu":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    .line 1395
    .local v1, "s":Ljava/net/Socket;
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    .line 1396
    .local v2, "remote":Ljava/io/OutputStream;
    mul-int/lit8 v3, v0, 0xa

    new-array v3, v3, [B

    .line 1398
    .local v3, "buf":[B
    :cond_25
    :goto_25
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "l":I
    if-ltz v4, :cond_33

    .line 1399
    if-lez v5, :cond_25

    .line 1400
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_25

    .line 1403
    :cond_33
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1404
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v4

    return-object v4
.end method

.method public blacklist changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "remoteDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    if-eqz p1, :cond_21

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CWD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1167
    return-object p0

    .line 1163
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "directory can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist changeToParentDirectory()Lsun/net/ftp/FtpClient;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    const-string v0, "CDUP"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1178
    return-object p0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1135
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1137
    :try_start_6
    const-string v0, "QUIT"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z
    :try_end_b
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_6 .. :try_end_b} :catch_c

    .line 1139
    goto :goto_d

    .line 1138
    :catch_c
    move-exception v0

    .line 1140
    :goto_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1142
    :cond_10
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V

    .line 1143
    return-void
.end method

.method public blacklist completePending()Lsun/net/ftp/FtpClient;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1626
    nop

    :goto_1
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    if-eqz v0, :cond_1b

    .line 1627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 1628
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1

    .line 1629
    :cond_f
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0

    .line 1632
    :cond_1b
    return-object p0
.end method

.method public blacklist connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    .registers 3
    .param p1, "dest"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lsun/net/ftp/impl/FtpClient;->connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;

    move-result-object v0

    return-object v0
.end method

.method public blacklist connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;
    .registers 6
    .param p1, "dest"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_3f

    .line 1024
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    .line 1025
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0, p2}, Lsun/net/ftp/impl/FtpClient;->tryConnect(Ljava/net/InetSocketAddress;I)V

    .line 1026
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1030
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1031
    return-object p0

    .line 1027
    :cond_20
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Welcome message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1028
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0

    .line 1022
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist deleteFile(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1430
    return-object p0
.end method

.method public blacklist enablePassiveMode(Z)Lsun/net/ftp/FtpClient;
    .registers 2
    .param p1, "passive"    # Z

    .line 847
    return-object p0
.end method

.method public blacklist endSecureSession()Lsun/net/ftp/FtpClient;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2110
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-nez v0, :cond_5

    .line 2111
    return-object p0

    .line 2114
    :cond_5
    const-string v0, "CCC"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2115
    const-string v0, "PROT C"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 2118
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 2119
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 2121
    :try_start_19
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v2, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_2e} :catch_3d

    .line 2125
    nop

    .line 2126
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 2128
    return-object p0

    .line 2123
    :catch_3d
    move-exception v0

    .line 2124
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "encoding not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getConnectTimeout()I
    .registers 2

    .line 879
    iget v0, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    return v0
.end method

.method public blacklist getFeatures()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1550
    .local v0, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "FEAT"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1551
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v1

    .line 1554
    .local v1, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_f
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2c

    .line 1555
    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1557
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1559
    .end local v2    # "i":I
    :cond_2c
    return-object v0
.end method

.method public blacklist getFile(Ljava/lang/String;Ljava/io/OutputStream;)Lsun/net/ftp/FtpClient;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1237
    const/16 v0, 0x5dc

    .line 1238
    .local v0, "mtu":I
    iget-wide v1, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const-string v5, "RETR "

    if-lez v1, :cond_61

    .line 1241
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REST "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_5d

    .line 1243
    .local v1, "s":Ljava/net/Socket;
    iput-wide v3, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1244
    nop

    .line 1245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1246
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1247
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 1248
    .local v3, "remote":Ljava/io/InputStream;
    mul-int/lit8 v4, v0, 0xa

    new-array v4, v4, [B

    .line 1250
    .local v4, "buf":[B
    :cond_4c
    :goto_4c
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "l":I
    if-ltz v5, :cond_59

    .line 1251
    if-lez v6, :cond_4c

    .line 1252
    invoke-virtual {p2, v4, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4c

    .line 1255
    :cond_59
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1256
    .end local v1    # "s":Ljava/net/Socket;
    .end local v3    # "remote":Ljava/io/InputStream;
    .end local v4    # "buf":[B
    .end local v6    # "l":I
    goto :goto_95

    .line 1243
    :catchall_5d
    move-exception v1

    iput-wide v3, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1244
    throw v1

    .line 1257
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    .line 1258
    .restart local v1    # "s":Ljava/net/Socket;
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1259
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 1260
    .restart local v3    # "remote":Ljava/io/InputStream;
    mul-int/lit8 v4, v0, 0xa

    new-array v4, v4, [B

    .line 1262
    .restart local v4    # "buf":[B
    :cond_85
    :goto_85
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .restart local v6    # "l":I
    if-ltz v5, :cond_92

    .line 1263
    if-lez v6, :cond_85

    .line 1264
    invoke-virtual {p2, v4, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_85

    .line 1267
    :cond_92
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1269
    .end local v1    # "s":Ljava/net/Socket;
    .end local v3    # "remote":Ljava/io/InputStream;
    .end local v4    # "buf":[B
    .end local v6    # "l":I
    :goto_95
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1285
    iget-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v4, "RETR "

    if-lez v0, :cond_4e

    .line 1287
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REST "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_4a

    .line 1289
    .local v0, "s":Ljava/net/Socket;
    iput-wide v2, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1290
    nop

    .line 1291
    if-nez v0, :cond_2a

    .line 1292
    return-object v1

    .line 1294
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1295
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1296
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1289
    .end local v0    # "s":Ljava/net/Socket;
    :catchall_4a
    move-exception v0

    iput-wide v2, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1290
    throw v0

    .line 1299
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1300
    .restart local v0    # "s":Ljava/net/Socket;
    if-nez v0, :cond_66

    .line 1301
    return-object v1

    .line 1303
    :cond_66
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1304
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getHelp(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HELP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2208
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v0

    .line 2209
    .local v0, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    .line 2211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2215
    :cond_2e
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2216
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_34
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_4c

    .line 2217
    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2216
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 2219
    .end local v3    # "i":I
    :cond_4c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getLastFileName()Ljava/lang/String;
    .registers 2

    .line 2045
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLastModified(Ljava/lang/String;)Ljava/util/Date;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDTM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1786
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    if-ne v0, v1, :cond_3b

    .line 1787
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1788
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1789
    .local v1, "d":Ljava/util/Date;
    sget-object v2, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v3, :cond_3b

    aget-object v5, v2, v4

    .line 1791
    .local v5, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_2e
    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_2e .. :try_end_32} :catch_34

    .line 1793
    .end local v1    # "d":Ljava/util/Date;
    .local v6, "d":Ljava/util/Date;
    move-object v1, v6

    goto :goto_35

    .line 1792
    .end local v6    # "d":Ljava/util/Date;
    .restart local v1    # "d":Ljava/util/Date;
    :catch_34
    move-exception v6

    .line 1794
    :goto_35
    if-eqz v1, :cond_38

    .line 1795
    return-object v1

    .line 1789
    .end local v5    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 1799
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "d":Ljava/util/Date;
    :cond_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLastReplyCode()Lsun/net/ftp/FtpReplyCode;
    .registers 2

    .line 2002
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method

.method public blacklist getLastResponseString()Ljava/lang/String;
    .registers 4

    .line 2012
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2013
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    if-eqz v1, :cond_21

    .line 2014
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2015
    .local v2, "l":Ljava/lang/String;
    if-eqz v2, :cond_20

    .line 2016
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2018
    .end local v2    # "l":Ljava/lang/String;
    :cond_20
    goto :goto_f

    .line 2020
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getLastTransferSize()J
    .registers 3

    .line 2032
    iget-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    return-wide v0
.end method

.method public blacklist getProxy()Ljava/net/Proxy;
    .registers 2

    .line 917
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public blacklist getReadTimeout()I
    .registers 2

    .line 901
    iget v0, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    return v0
.end method

.method public blacklist getServerAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 1007
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public blacklist getSize(Ljava/lang/String;)J
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1748
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIZE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1752
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    if-ne v0, v1, :cond_38

    .line 1753
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 1754
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1755
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 1757
    .end local v0    # "s":Ljava/lang/String;
    :cond_38
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1749
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1487
    if-nez p1, :cond_5

    const-string v0, "STAT"

    goto :goto_18

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STAT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1512
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v0

    .line 1513
    .local v0, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1514
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_25
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_39

    .line 1515
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1514
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1517
    .end local v2    # "i":I
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getSystem()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2169
    const-string v0, "SYST"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2173
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 2175
    .local v0, "resp":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getWelcomeMsg()Ljava/lang/String;
    .registers 2

    .line 1993
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getWorkingDirectory()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1190
    const-string v0, "PWD"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1196
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, "answ":Ljava/lang/String;
    const-string v1, "257"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1198
    const/4 v1, 0x0

    return-object v1

    .line 1200
    :cond_13
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist isConnected()Z
    .registers 2

    .line 1003
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isLoggedIn()Z
    .registers 2

    .line 1151
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    return v0
.end method

.method public blacklist isPassiveModeEnabled()Z
    .registers 2

    .line 856
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist list(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1703
    if-nez p1, :cond_5

    const-string v0, "LIST"

    goto :goto_18

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1704
    .local v0, "s":Ljava/net/Socket;
    if-eqz v0, :cond_27

    .line 1705
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1707
    :cond_27
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist listFiles(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
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

    .line 1895
    const/4 v0, 0x0

    .line 1896
    .local v0, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 1898
    .local v1, "sin":Ljava/io/BufferedReader;
    if-nez p1, :cond_7

    :try_start_4
    const-string v2, "MLSD"

    goto :goto_1a

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MLSD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1a
    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v2
    :try_end_1e
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_4 .. :try_end_1e} :catch_20

    move-object v0, v2

    .line 1902
    goto :goto_21

    .line 1899
    :catch_20
    move-exception v2

    .line 1904
    :goto_21
    if-eqz v0, :cond_39

    .line 1905
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1906
    .end local v1    # "sin":Ljava/io/BufferedReader;
    .local v2, "sin":Ljava/io/BufferedReader;
    new-instance v1, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->mlsxParser:Lsun/net/ftp/FtpDirParser;

    invoke-direct {v1, p0, v3, v2}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V

    return-object v1

    .line 1908
    .end local v2    # "sin":Ljava/io/BufferedReader;
    .restart local v1    # "sin":Ljava/io/BufferedReader;
    :cond_39
    if-nez p1, :cond_3e

    const-string v2, "LIST"

    goto :goto_51

    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIST "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_51
    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1909
    if-eqz v0, :cond_6d

    .line 1910
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1911
    .end local v1    # "sin":Ljava/io/BufferedReader;
    .restart local v2    # "sin":Ljava/io/BufferedReader;
    new-instance v1, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    invoke-direct {v1, p0, v3, v2}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V

    return-object v1

    .line 1914
    .end local v2    # "sin":Ljava/io/BufferedReader;
    .restart local v1    # "sin":Ljava/io/BufferedReader;
    :cond_6d
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    .registers 8
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1056
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1059
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4c

    .line 1062
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->tryLogin(Ljava/lang/String;[C)V

    .line 1067
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1068
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 1069
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1070
    .local v2, "l":Ljava/lang/String;
    if-eqz v2, :cond_3f

    .line 1071
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3c

    const-string v3, "230"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1073
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1075
    :cond_3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1068
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1078
    .end local v1    # "i":I
    .end local v2    # "l":Ljava/lang/String;
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1079
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1080
    return-object p0

    .line 1060
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User name can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_54
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    const-string v1, "Not connected yet"

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0
.end method

.method public blacklist login(Ljava/lang/String;[CLjava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 9
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1095
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1098
    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6b

    .line 1101
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->tryLogin(Ljava/lang/String;[C)V

    .line 1106
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    if-ne v0, v1, :cond_2d

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACCT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1112
    :cond_2d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1113
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    if-eqz v1, :cond_61

    .line 1114
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1115
    .local v2, "l":Ljava/lang/String;
    if-eqz v2, :cond_60

    .line 1116
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_5d

    const-string v3, "230"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1118
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1120
    :cond_5d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1122
    .end local v2    # "l":Ljava/lang/String;
    :cond_60
    goto :goto_3c

    .line 1124
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1126
    return-object p0

    .line 1099
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User name can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_73
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    const-string v1, "Not connected yet"

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0
.end method

.method public blacklist makeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MKD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1443
    return-object p0
.end method

.method public blacklist nameList(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1727
    if-nez p1, :cond_5

    const-string v0, "NLST"

    goto :goto_18

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NLST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1728
    .local v0, "s":Ljava/net/Socket;
    if-eqz v0, :cond_27

    .line 1729
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1731
    :cond_27
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist noop()Lsun/net/ftp/FtpClient;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1467
    const-string v0, "NOOP"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1468
    return-object p0
.end method

.method public blacklist putFile(Ljava/lang/String;Ljava/io/InputStream;Z)Lsun/net/ftp/FtpClient;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .param p3, "unique"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1363
    if-eqz p3, :cond_5

    const-string v0, "STOU "

    goto :goto_7

    :cond_5
    const-string v0, "STOR "

    .line 1364
    .local v0, "cmd":Ljava/lang/String;
    :goto_7
    const/16 v1, 0x5dc

    .line 1365
    .local v1, "mtu":I
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v3, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v2, v3, :cond_41

    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    .line 1367
    .local v2, "s":Ljava/net/Socket;
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    .line 1368
    .local v3, "remote":Ljava/io/OutputStream;
    mul-int/lit8 v4, v1, 0xa

    new-array v4, v4, [B

    .line 1370
    .local v4, "buf":[B
    :cond_30
    :goto_30
    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "l":I
    if-ltz v5, :cond_3e

    .line 1371
    if-lez v6, :cond_30

    .line 1372
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_30

    .line 1375
    :cond_3e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1377
    .end local v2    # "s":Ljava/net/Socket;
    .end local v3    # "remote":Ljava/io/OutputStream;
    .end local v4    # "buf":[B
    .end local v6    # "l":I
    :cond_41
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v2

    return-object v2
.end method

.method public blacklist putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unique"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1335
    if-eqz p2, :cond_5

    const-string v0, "STOU "

    goto :goto_7

    :cond_5
    const-string v0, "STOR "

    .line 1336
    .local v0, "cmd":Ljava/lang/String;
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    .line 1337
    .local v1, "s":Ljava/net/Socket;
    if-nez v1, :cond_20

    .line 1338
    const/4 v2, 0x0

    return-object v2

    .line 1340
    :cond_20
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v3, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v2, v3, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    .line 1341
    .local v2, "bm":Z
    :goto_29
    new-instance v3, Lsun/net/TelnetOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lsun/net/TelnetOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v3
.end method

.method public blacklist reInit()Lsun/net/ftp/FtpClient;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1641
    const-string v0, "REIN"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1643
    iget-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v1, :cond_64

    .line 1644
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    instance-of v1, v1, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_64

    .line 1645
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 1646
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 1648
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 1649
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 1651
    :try_start_24
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_39} :catch_48

    .line 1655
    nop

    .line 1656
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    goto :goto_64

    .line 1653
    :catch_48
    move-exception v0

    .line 1654
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "encoding not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1659
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_64
    :goto_64
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 1660
    return-object p0
.end method

.method public blacklist removeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RMD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1457
    return-object p0
.end method

.method public blacklist rename(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 5
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNFR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1417
    return-object p0
.end method

.method public blacklist setConnectTimeout(I)Lsun/net/ftp/FtpClient;
    .registers 2
    .param p1, "timeout"    # I

    .line 868
    iput p1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    .line 869
    return-object p0
.end method

.method public blacklist setDirParser(Lsun/net/ftp/FtpDirParser;)Lsun/net/ftp/FtpClient;
    .registers 2
    .param p1, "p"    # Lsun/net/ftp/FtpDirParser;

    .line 1813
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    .line 1814
    return-object p0
.end method

.method public blacklist setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;
    .registers 2
    .param p1, "p"    # Ljava/net/Proxy;

    .line 905
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    .line 906
    return-object p0
.end method

.method public blacklist setReadTimeout(I)Lsun/net/ftp/FtpClient;
    .registers 2
    .param p1, "timeout"    # I

    .line 890
    iput p1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    .line 891
    return-object p0
.end method

.method public blacklist setRestartOffset(J)Lsun/net/ftp/FtpClient;
    .registers 5
    .param p1, "offset"    # J

    .line 1215
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 1218
    iput-wide p1, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1219
    return-object p0

    .line 1216
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setType(Lsun/net/ftp/FtpClient$TransferType;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "type"    # Lsun/net/ftp/FtpClient$TransferType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1672
    const-string v0, "NOOP"

    .line 1674
    .local v0, "cmd":Ljava/lang/String;
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    .line 1675
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_a

    .line 1676
    const-string v0, "TYPE A"

    .line 1678
    :cond_a
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_10

    .line 1679
    const-string v0, "TYPE I"

    .line 1681
    :cond_10
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->EBCDIC:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_16

    .line 1682
    const-string v0, "TYPE E"

    .line 1684
    :cond_16
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1685
    return-object p0
.end method

.method public blacklist siteCmd(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SITE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2233
    return-object p0
.end method

.method public blacklist startSecureSession()Lsun/net/ftp/FtpClient;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2062
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 2065
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1e

    .line 2067
    :try_start_a
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    .line 2070
    goto :goto_1e

    .line 2068
    :catch_13
    move-exception v0

    .line 2069
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2072
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    const-string v0, "AUTH TLS"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2073
    const/4 v0, 0x0

    .line 2075
    .local v0, "s":Ljava/net/Socket;
    :try_start_24
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1
    :try_end_39
    .catch Ljavax/net/ssl/SSLException; {:try_start_24 .. :try_end_39} :catch_8b

    .line 2082
    .end local v0    # "s":Ljava/net/Socket;
    .local v1, "s":Ljava/net/Socket;
    nop

    .line 2084
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 2085
    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 2087
    :try_start_40
    new-instance v0, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-direct {v0, v2, v5, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_54
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_54} :catch_6f

    .line 2091
    nop

    .line 2092
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 2094
    const-string v0, "PBSZ 0"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2095
    const-string v0, "PROT P"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2096
    iput-boolean v5, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 2097
    return-object p0

    .line 2089
    :catch_6f
    move-exception v0

    .line 2090
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "encoding not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2076
    .end local v1    # "s":Ljava/net/Socket;
    .local v0, "s":Ljava/net/Socket;
    :catch_8b
    move-exception v1

    .line 2078
    .local v1, "ssle":Ljavax/net/ssl/SSLException;
    :try_start_8c
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_90

    .line 2080
    goto :goto_91

    .line 2079
    :catch_90
    move-exception v2

    .line 2081
    :goto_91
    throw v1

    .line 2063
    .end local v0    # "s":Ljava/net/Socket;
    .end local v1    # "ssle":Ljavax/net/ssl/SSLException;
    :cond_92
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    const-string v1, "Not connected yet"

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0
.end method

.method public blacklist structureMount(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "struct"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMNT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2156
    return-object p0
.end method

.method public blacklist useKerberos()Lsun/net/ftp/FtpClient;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1983
    return-object p0
.end method
