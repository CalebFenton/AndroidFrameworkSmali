.class public abstract Lgov/nist/javax/sip/message/SIPMessage;
.super Lgov/nist/javax/sip/message/MessageObject;
.source "SIPMessage.java"

# interfaces
.implements Ljavax/sip/message/Message;
.implements Lgov/nist/javax/sip/message/MessageExt;


# static fields
.field private static final greylist AUTHORIZATION_LOWERCASE:Ljava/lang/String;

.field private static final greylist CONTACT_LOWERCASE:Ljava/lang/String;

.field private static final greylist CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

.field private static final greylist CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

.field private static final greylist CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

.field private static final greylist CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

.field private static final greylist ERROR_LOWERCASE:Ljava/lang/String;

.field private static final greylist EXPIRES_LOWERCASE:Ljava/lang/String;

.field private static final greylist RECORDROUTE_LOWERCASE:Ljava/lang/String;

.field private static final greylist ROUTE_LOWERCASE:Ljava/lang/String;

.field private static final greylist VIA_LOWERCASE:Ljava/lang/String;


# instance fields
.field protected greylist applicationData:Ljava/lang/Object;

.field protected greylist cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

.field protected greylist callIdHeader:Lgov/nist/javax/sip/header/CallID;

.field private greylist contentEncodingCharset:Ljava/lang/String;

.field protected greylist contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

.field protected greylist fromHeader:Lgov/nist/javax/sip/header/From;

.field protected greylist headers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

.field private greylist messageContent:Ljava/lang/String;

.field private greylist messageContentBytes:[B

.field private greylist messageContentObject:Ljava/lang/Object;

.field private greylist nameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist nullRequest:Z

.field protected greylist size:I

.field protected greylist toHeader:Lgov/nist/javax/sip/header/To;

.field protected greylist unrecognizedHeaders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 936
    nop

    .line 937
    const-string v0, "Content-Type"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    .line 966
    const-string v0, "Error-Info"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ERROR_LOWERCASE:Ljava/lang/String;

    .line 977
    nop

    .line 978
    const-string v0, "Contact"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTACT_LOWERCASE:Ljava/lang/String;

    .line 1003
    const-string v0, "Via"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->VIA_LOWERCASE:Ljava/lang/String;

    .line 1060
    nop

    .line 1061
    const-string v0, "Authorization"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->AUTHORIZATION_LOWERCASE:Ljava/lang/String;

    .line 1091
    nop

    .line 1092
    const-string v0, "Route"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ROUTE_LOWERCASE:Ljava/lang/String;

    .line 1133
    nop

    .line 1134
    const-string v0, "Record-Route"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->RECORDROUTE_LOWERCASE:Ljava/lang/String;

    .line 1631
    nop

    .line 1632
    const-string v0, "Content-Disposition"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

    .line 1643
    nop

    .line 1644
    const-string v0, "Content-Encoding"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

    .line 1655
    nop

    .line 1656
    const-string v0, "Content-Language"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

    .line 1667
    nop

    .line 1668
    const-string v0, "Expires"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->EXPIRES_LOWERCASE:Ljava/lang/String;

    .line 1667
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 542
    invoke-direct {p0}, Lgov/nist/javax/sip/message/MessageObject;-><init>()V

    .line 130
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultContentEncodingCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    .line 543
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    .line 544
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 545
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 547
    :try_start_1e
    new-instance v0, Lgov/nist/javax/sip/header/ContentLength;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/header/ContentLength;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_28

    .line 549
    goto :goto_29

    .line 548
    :catch_28
    move-exception v0

    .line 550
    :goto_29
    return-void
.end method

.method private greylist attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V
    .registers 4
    .param p1, "h"    # Lgov/nist/javax/sip/header/SIPHeader;

    .line 558
    if-eqz p1, :cond_17

    .line 561
    :try_start_2
    instance-of v0, p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v0, :cond_10

    .line 562
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 563
    .local v0, "hl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 564
    return-void

    .line 567
    .end local v0    # "hl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_14
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_2 .. :try_end_14} :catch_15

    .line 570
    goto :goto_16

    .line 568
    :catch_15
    move-exception v0

    .line 571
    :goto_16
    return-void

    .line 559
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null header!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist computeContentLength(Ljava/lang/Object;)V
    .registers 5
    .param p1, "content"    # Ljava/lang/Object;

    .line 1344
    const/4 v0, 0x0

    .line 1345
    .local v0, "length":I
    if-eqz p1, :cond_2b

    .line 1346
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 1348
    :try_start_7
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_13} :catch_15

    move v0, v1

    .line 1351
    :goto_14
    goto :goto_2b

    .line 1349
    :catch_15
    move-exception v1

    .line 1350
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    goto :goto_14

    .line 1352
    :cond_1a
    instance-of v1, p1, [B

    if-eqz v1, :cond_23

    .line 1353
    move-object v1, p1

    check-cast v1, [B

    array-length v0, v1

    goto :goto_2b

    .line 1355
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1360
    :cond_2b
    :goto_2b
    :try_start_2b
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_30
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2b .. :try_end_30} :catch_31

    .line 1363
    goto :goto_32

    .line 1361
    :catch_31
    move-exception v1

    .line 1364
    :goto_32
    return-void
.end method

.method private greylist getHeaderList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    .line 1429
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 1430
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1429
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1431
    .local v0, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v0, :cond_10

    .line 1432
    const/4 v1, 0x0

    return-object v1

    .line 1433
    :cond_10
    instance-of v1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v1, :cond_1c

    .line 1434
    move-object v1, v0

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->getHeaderList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1436
    :cond_1c
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1437
    .local v1, "ll":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1438
    return-object v1
.end method

.method private greylist getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;
    .registers 4
    .param p1, "lowerCaseHeaderName"    # Ljava/lang/String;

    .line 917
    if-eqz p1, :cond_17

    .line 919
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    .line 920
    .local v0, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v1, :cond_16

    .line 921
    move-object v1, v0

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    return-object v1

    .line 923
    :cond_16
    return-object v0

    .line 918
    .end local v0    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .param p1, "lowerCaseHeaderName"    # Ljava/lang/String;

    .line 1418
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public static greylist isRequestHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .registers 2
    .param p0, "sipHeader"    # Lgov/nist/javax/sip/header/SIPHeader;

    .line 187
    instance-of v0, p0, Lgov/nist/javax/sip/header/AlertInfo;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/InReplyTo;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/Authorization;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/MaxForwards;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/UserAgent;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/Priority;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyRequire;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyRequireList;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/Route;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/RouteList;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/Subject;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgov/nist/javax/sip/header/SIPIfMatch;

    if-eqz v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    :goto_38
    return v0
.end method

.method public static greylist isResponseHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .registers 2
    .param p0, "sipHeader"    # Lgov/nist/javax/sip/header/SIPHeader;

    .line 202
    instance-of v0, p0, Lgov/nist/javax/sip/header/ErrorInfo;

    if-nez v0, :cond_27

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    if-nez v0, :cond_27

    instance-of v0, p0, Lgov/nist/javax/sip/header/Server;

    if-nez v0, :cond_27

    instance-of v0, p0, Lgov/nist/javax/sip/header/Unsupported;

    if-nez v0, :cond_27

    instance-of v0, p0, Lgov/nist/javax/sip/header/RetryAfter;

    if-nez v0, :cond_27

    instance-of v0, p0, Lgov/nist/javax/sip/header/Warning;

    if-nez v0, :cond_27

    instance-of v0, p0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    if-nez v0, :cond_27

    instance-of v0, p0, Lgov/nist/javax/sip/header/SIPETag;

    if-nez v0, :cond_27

    instance-of v0, p0, Lgov/nist/javax/sip/header/RSeq;

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method


# virtual methods
.method public greylist addFirst(Ljavax/sip/header/Header;)V
    .registers 5
    .param p1, "header"    # Ljavax/sip/header/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1750
    if-eqz p1, :cond_15

    .line 1754
    :try_start_2
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_a
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_2 .. :try_end_a} :catch_c

    .line 1757
    nop

    .line 1759
    return-void

    .line 1755
    :catch_c
    move-exception v0

    .line 1756
    .local v0, "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot add header - header already exists"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1751
    .end local v0    # "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist addHeader(Ljava/lang/String;)V
    .registers 6
    .param p1, "sipHeader"    # Ljava/lang/String;

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, "hdrString":Ljava/lang/String;
    :try_start_17
    invoke-static {p1}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;

    move-result-object v1

    .line 1560
    .local v1, "parser":Lgov/nist/javax/sip/parser/HeaderParser;
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v2

    .line 1561
    .local v2, "sh":Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_23
    .catch Ljava/text/ParseException; {:try_start_17 .. :try_end_23} :catch_24

    .line 1564
    .end local v1    # "parser":Lgov/nist/javax/sip/parser/HeaderParser;
    .end local v2    # "sh":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_2a

    .line 1562
    :catch_24
    move-exception v1

    .line 1563
    .local v1, "ex":Ljava/text/ParseException;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1565
    .end local v1    # "ex":Ljava/text/ParseException;
    :goto_2a
    return-void
.end method

.method public greylist addHeader(Ljavax/sip/header/Header;)V
    .registers 7
    .param p1, "sipHeader"    # Ljavax/sip/header/Header;

    .line 1523
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1525
    .local v0, "sh":Lgov/nist/javax/sip/header/SIPHeader;
    :try_start_3
    instance-of v1, p1, Ljavax/sip/header/ViaHeader;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    instance-of v1, p1, Ljavax/sip/header/RecordRouteHeader;

    if-eqz v1, :cond_d

    goto :goto_11

    .line 1528
    :cond_d
    invoke-virtual {p0, v0, v2, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V

    goto :goto_15

    .line 1526
    :cond_11
    :goto_11
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_15
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_3 .. :try_end_15} :catch_16

    .line 1538
    :goto_15
    goto :goto_29

    .line 1530
    :catch_16
    move-exception v1

    .line 1532
    .local v1, "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :try_start_17
    instance-of v2, p1, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v2, :cond_27

    .line 1533
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/header/ContentLength;

    .line 1534
    .local v2, "cl":Lgov/nist/javax/sip/header/ContentLength;
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v4

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_27
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_17 .. :try_end_27} :catch_28

    .line 1537
    .end local v2    # "cl":Lgov/nist/javax/sip/header/ContentLength;
    :cond_27
    goto :goto_29

    .line 1536
    :catch_28
    move-exception v2

    .line 1539
    .end local v1    # "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :goto_29
    return-void
.end method

.method public greylist addLast(Ljavax/sip/header/Header;)V
    .registers 5
    .param p1, "header"    # Ljavax/sip/header/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1732
    if-eqz p1, :cond_14

    .line 1736
    :try_start_2
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_9
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_2 .. :try_end_9} :catch_b

    .line 1739
    nop

    .line 1741
    return-void

    .line 1737
    :catch_b
    move-exception v0

    .line 1738
    .local v0, "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot add header - header already exists"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1733
    .end local v0    # "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist addUnparsed(Ljava/lang/String;)V
    .registers 3
    .param p1, "unparsed"    # Ljava/lang/String;

    .line 1547
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1548
    return-void
.end method

.method public greylist attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    .registers 4
    .param p1, "h"    # Lgov/nist/javax/sip/header/SIPHeader;
    .param p2, "replaceflag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    .line 623
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V

    .line 624
    return-void
.end method

.method public greylist attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    .registers 10
    .param p1, "header"    # Lgov/nist/javax/sip/header/SIPHeader;
    .param p2, "replaceFlag"    # Z
    .param p3, "top"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    .line 641
    if-eqz p1, :cond_e4

    .line 647
    invoke-static {p1}, Lgov/nist/javax/sip/message/ListMap;->hasList(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-class v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 648
    invoke-static {p1}, Lgov/nist/javax/sip/message/ListMap;->getList(Lgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v0

    .line 649
    .local v0, "hdrList":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 650
    nop

    .line 651
    .local v0, "h":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_1e

    .line 652
    .end local v0    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1d
    move-object v0, p1

    .line 655
    .restart local v0    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    :goto_1e
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "headerNameLowerCase":Ljava/lang/String;
    if-eqz p2, :cond_2e

    .line 657
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 658
    :cond_2e
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    instance-of v2, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-nez v2, :cond_4d

    .line 659
    instance-of v2, v0, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v2, :cond_4c

    .line 661
    :try_start_3e
    move-object v2, v0

    check-cast v2, Lgov/nist/javax/sip/header/ContentLength;

    .line 662
    .local v2, "cl":Lgov/nist/javax/sip/header/ContentLength;
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v4

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_4a
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3e .. :try_end_4a} :catch_4b

    .line 664
    .end local v2    # "cl":Lgov/nist/javax/sip/header/ContentLength;
    goto :goto_4c

    .line 663
    :catch_4b
    move-exception v2

    .line 667
    :cond_4c
    :goto_4c
    return-void

    .line 670
    :cond_4d
    :goto_4d
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 673
    .local v2, "originalHeader":Lgov/nist/javax/sip/header/SIPHeader;
    if-eqz v2, :cond_75

    .line 674
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 675
    .local v3, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 676
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 677
    .local v4, "next":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 678
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 680
    .end local v4    # "next":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_74
    goto :goto_5f

    .line 683
    .end local v3    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_75
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 684
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 687
    :cond_88
    instance-of v3, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v3, :cond_a3

    .line 688
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 689
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 690
    .local v3, "hdrlist":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    if-eqz v3, :cond_9d

    .line 691
    move-object v4, v0

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v3, v4, p3}, Lgov/nist/javax/sip/header/SIPHeaderList;->concatenate(Lgov/nist/javax/sip/header/SIPHeaderList;Z)V

    goto :goto_a2

    .line 693
    :cond_9d
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .end local v3    # "hdrlist":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    :goto_a2
    goto :goto_a8

    .line 695
    :cond_a3
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :goto_a8
    instance-of v3, v0, Lgov/nist/javax/sip/header/From;

    if-eqz v3, :cond_b2

    .line 701
    move-object v3, v0

    check-cast v3, Lgov/nist/javax/sip/header/From;

    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    goto :goto_e3

    .line 702
    :cond_b2
    instance-of v3, v0, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v3, :cond_bc

    .line 703
    move-object v3, v0

    check-cast v3, Lgov/nist/javax/sip/header/ContentLength;

    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    goto :goto_e3

    .line 704
    :cond_bc
    instance-of v3, v0, Lgov/nist/javax/sip/header/To;

    if-eqz v3, :cond_c6

    .line 705
    move-object v3, v0

    check-cast v3, Lgov/nist/javax/sip/header/To;

    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    goto :goto_e3

    .line 706
    :cond_c6
    instance-of v3, v0, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v3, :cond_d0

    .line 707
    move-object v3, v0

    check-cast v3, Lgov/nist/javax/sip/header/CSeq;

    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    goto :goto_e3

    .line 708
    :cond_d0
    instance-of v3, v0, Lgov/nist/javax/sip/header/CallID;

    if-eqz v3, :cond_da

    .line 709
    move-object v3, v0

    check-cast v3, Lgov/nist/javax/sip/header/CallID;

    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    goto :goto_e3

    .line 710
    :cond_da
    instance-of v3, v0, Lgov/nist/javax/sip/header/MaxForwards;

    if-eqz v3, :cond_e3

    .line 711
    move-object v3, v0

    check-cast v3, Lgov/nist/javax/sip/header/MaxForwards;

    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    .line 714
    :cond_e3
    :goto_e3
    return-void

    .line 642
    .end local v0    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v1    # "headerNameLowerCase":Ljava/lang/String;
    .end local v2    # "originalHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_e4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null header"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 473
    invoke-super {p0}, Lgov/nist/javax/sip/message/MessageObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPMessage;

    .line 474
    .local v0, "retval":Lgov/nist/javax/sip/message/SIPMessage;
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 475
    const/4 v1, 0x0

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    .line 476
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    .line 477
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    .line 478
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    .line 479
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    .line 480
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    .line 481
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_41

    .line 482
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 483
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 484
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 485
    .local v2, "hdr":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-direct {v0, v3}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 486
    .end local v2    # "hdr":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_2b

    .line 489
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_41
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v1, :cond_4f

    .line 490
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 491
    :cond_4f
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v1, :cond_5b

    .line 492
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPMessage;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 493
    :cond_5b
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    .line 494
    return-object v0
.end method

.method public greylist debugDump()Ljava/lang/String;
    .registers 9

    .line 504
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->stringRepresentation:Ljava/lang/String;

    .line 505
    const-string v0, "SIPMessage:"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 506
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 509
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 510
    .local v1, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, v1

    if-ge v2, v3, :cond_60

    .line 511
    aget-object v3, v1, v2

    .line 512
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 513
    .local v4, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 514
    .local v5, "fieldName":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5d

    const-class v6, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5d

    const-string v6, "headers"

    .line 515
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5d

    .line 516
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/SIPHeader;->debugDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5d} :catch_61

    .line 510
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldName":Ljava/lang/String;
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 522
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "i":I
    :cond_60
    goto :goto_65

    .line 520
    :catch_61
    move-exception v1

    .line 521
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 524
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_65
    const-string v1, "List of headers : "

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 526
    const-string v1, "messageContent = "

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 529
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 531
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 533
    :cond_96
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 7

    .line 361
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 362
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 364
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 365
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 366
    .local v2, "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v3, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v3, :cond_22

    .line 367
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    .end local v2    # "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_22
    goto :goto_b

    .line 371
    :cond_23
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\r\n"

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 372
    .local v3, "unrecognized":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    .end local v3    # "unrecognized":Ljava/lang/String;
    goto :goto_29

    .line 375
    :cond_3f
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v2, :cond_5c

    .line 378
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "mbody":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    .end local v2    # "mbody":Ljava/lang/String;
    :cond_5b
    goto :goto_81

    :cond_5c
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v2, :cond_64

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v2, :cond_5b

    .line 383
    :cond_64
    const/4 v2, 0x0

    .line 385
    .local v2, "content":Ljava/lang/String;
    :try_start_65
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-eqz v3, :cond_6d

    .line 386
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    move-object v2, v3

    .end local v2    # "content":Ljava/lang/String;
    .local v3, "content":Ljava/lang/String;
    goto :goto_79

    .line 389
    .end local v3    # "content":Ljava/lang/String;
    .restart local v2    # "content":Ljava/lang/String;
    :cond_6d
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_65 .. :try_end_78} :catch_7a

    move-object v2, v3

    .line 393
    :goto_79
    goto :goto_7e

    .line 391
    :catch_7a
    move-exception v3

    .line 392
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 395
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_7e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    .end local v2    # "content":Ljava/lang/String;
    :goto_81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist encodeAsBytes(Ljava/lang/String;)[B
    .registers 10
    .param p1, "transport"    # Ljava/lang/String;

    .line 409
    instance-of v0, p0, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v0, :cond_14

    move-object v0, p0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 410
    const-string v0, "\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 414
    :cond_14
    const-string v0, "Via"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ViaHeader;

    .line 416
    .local v0, "topVia":Ljavax/sip/header/ViaHeader;
    :try_start_1c
    invoke-interface {v0, p1}, Ljavax/sip/header/ViaHeader;->setTransport(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/text/ParseException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 419
    goto :goto_24

    .line 417
    :catch_20
    move-exception v1

    .line 418
    .local v1, "e":Ljava/text/ParseException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 421
    .end local v1    # "e":Ljava/text/ParseException;
    :goto_24
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 422
    .local v1, "encoding":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2

    .line 423
    :try_start_2c
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 425
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 426
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 427
    .local v4, "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v5, v4, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v5, :cond_45

    .line 428
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 430
    .end local v4    # "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_45
    goto :goto_32

    .line 431
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_8e

    .line 432
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ContentLength;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 433
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    const/4 v2, 0x0

    .line 436
    .local v2, "retval":[B
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getRawContent()[B

    move-result-object v3

    .line 437
    .local v3, "content":[B
    if-eqz v3, :cond_7b

    .line 440
    const/4 v4, 0x0

    .line 442
    .local v4, "msgarray":[B
    :try_start_59
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_65
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_59 .. :try_end_65} :catch_67

    move-object v4, v5

    .line 445
    goto :goto_6b

    .line 443
    :catch_67
    move-exception v5

    .line 444
    .local v5, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v5}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 447
    .end local v5    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_6b
    array-length v5, v4

    array-length v6, v3

    add-int/2addr v5, v6

    new-array v2, v5, [B

    .line 448
    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    array-length v5, v4

    array-length v7, v3

    invoke-static {v3, v6, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    .end local v4    # "msgarray":[B
    goto :goto_8d

    .line 454
    :cond_7b
    :try_start_7b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_87
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7b .. :try_end_87} :catch_89

    move-object v2, v4

    .line 457
    goto :goto_8d

    .line 455
    :catch_89
    move-exception v4

    .line 456
    .local v4, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 459
    .end local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_8d
    return-object v2

    .line 431
    .end local v2    # "retval":[B
    .end local v3    # "content":[B
    :catchall_8e
    move-exception v3

    :try_start_8f
    monitor-exit v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v3
.end method

.method public abstract greylist encodeMessage()Ljava/lang/String;
.end method

.method protected greylist encodeSIPHeaders()Ljava/lang/String;
    .registers 5

    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 239
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 243
    .local v2, "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v3, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v3, :cond_1e

    .line 244
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 245
    .end local v2    # "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1e
    goto :goto_b

    .line 247
    :cond_1f
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ContentLength;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 1599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1600
    return v1

    .line 1602
    :cond_10
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPMessage;

    .line 1603
    .local v0, "otherMessage":Lgov/nist/javax/sip/message/SIPMessage;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1604
    .local v2, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1605
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    iget-object v5, v0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    if-eq v4, v5, :cond_2c

    .line 1606
    return v1

    .line 1609
    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1610
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1611
    .local v4, "mine":Lgov/nist/javax/sip/header/SIPHeader;
    iget-object v5, v0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 1612
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1611
    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1613
    .local v5, "his":Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v5, :cond_4b

    .line 1614
    return v1

    .line 1615
    :cond_4b
    invoke-virtual {v5, v4}, Lgov/nist/javax/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 1616
    return v1

    .line 1618
    .end local v4    # "mine":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v5    # "his":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_52
    goto :goto_2c

    .line 1619
    :cond_53
    const/4 v1, 0x1

    return v1
.end method

.method public greylist getApplicationData()Ljava/lang/Object;
    .registers 2

    .line 1813
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->applicationData:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist getAuthorization()Lgov/nist/javax/sip/header/Authorization;
    .registers 2

    .line 1057
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->AUTHORIZATION_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Authorization;

    return-object v0
.end method

.method public greylist getCSeq()Ljavax/sip/header/CSeqHeader;
    .registers 2

    .line 1048
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    return-object v0
.end method

.method public greylist getCSeqHeader()Ljavax/sip/header/CSeqHeader;
    .registers 2

    .line 1857
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    return-object v0
.end method

.method public greylist getCallId()Ljavax/sip/header/CallIdHeader;
    .registers 2

    .line 1100
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    return-object v0
.end method

.method public greylist getCallIdHeader()Ljavax/sip/header/CallIdHeader;
    .registers 2

    .line 1838
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    return-object v0
.end method

.method protected final greylist getCharset()Ljava/lang/String;
    .registers 4

    .line 1864
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v0

    .line 1865
    .local v0, "ct":Lgov/nist/javax/sip/header/ContentType;
    if-eqz v0, :cond_11

    .line 1866
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v1

    .line 1867
    .local v1, "c":Ljava/lang/String;
    if-eqz v1, :cond_e

    move-object v2, v1

    goto :goto_10

    :cond_e
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    :goto_10
    return-object v2

    .line 1868
    .end local v1    # "c":Ljava/lang/String;
    :cond_11
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    return-object v1
.end method

.method public greylist getContactHeader()Lgov/nist/javax/sip/header/Contact;
    .registers 3

    .line 985
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    .line 986
    .local v0, "clist":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_d

    .line 987
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Contact;

    return-object v1

    .line 990
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist getContactHeaders()Lgov/nist/javax/sip/header/ContactList;
    .registers 2

    .line 974
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTACT_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContactList;

    return-object v0
.end method

.method public greylist getContent()Ljava/lang/Object;
    .registers 2

    .line 1258
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 1259
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    return-object v0

    .line 1260
    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1261
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    return-object v0

    .line 1262
    :cond_e
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v0, :cond_15

    .line 1263
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    return-object v0

    .line 1265
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getContentDisposition()Ljavax/sip/header/ContentDispositionHeader;
    .registers 2

    .line 1628
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ContentDispositionHeader;

    return-object v0
.end method

.method public greylist getContentEncoding()Ljavax/sip/header/ContentEncodingHeader;
    .registers 2

    .line 1640
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ContentEncodingHeader;

    return-object v0
.end method

.method public greylist getContentLanguage()Ljavax/sip/header/ContentLanguageHeader;
    .registers 2

    .line 1652
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ContentLanguageHeader;

    return-object v0
.end method

.method public greylist getContentLength()Ljavax/sip/header/ContentLengthHeader;
    .registers 2

    .line 1160
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    return-object v0
.end method

.method public greylist getContentLengthHeader()Ljavax/sip/header/ContentLengthHeader;
    .registers 2

    .line 944
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v0

    return-object v0
.end method

.method public greylist getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;
    .registers 2

    .line 933
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContentType;

    return-object v0
.end method

.method public bridge synthetic greylist getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
    .registers 2

    .line 126
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public abstract greylist getDialogId(Z)Ljava/lang/String;
.end method

.method public greylist getErrorInfoHeaders()Lgov/nist/javax/sip/header/ErrorInfoList;
    .registers 2

    .line 963
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ERROR_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ErrorInfoList;

    return-object v0
.end method

.method public greylist getExpires()Ljavax/sip/header/ExpiresHeader;
    .registers 2

    .line 1664
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->EXPIRES_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ExpiresHeader;

    return-object v0
.end method

.method public abstract greylist getFirstLine()Ljava/lang/String;
.end method

.method public greylist getFrom()Ljavax/sip/header/FromHeader;
    .registers 2

    .line 954
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    return-object v0
.end method

.method public greylist getFromHeader()Ljavax/sip/header/FromHeader;
    .registers 2

    .line 1843
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    return-object v0
.end method

.method public greylist getFromTag()Ljava/lang/String;
    .registers 2

    .line 1477
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public greylist getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .registers 3
    .param p1, "headerName"    # Ljava/lang/String;

    .line 913
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    return-object v0
.end method

.method public greylist getHeaderAsFormattedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1409
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1410
    .local v0, "lowerCaseName":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1411
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeader;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1413
    :cond_19
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/Header;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getHeaderNames()Ljava/util/ListIterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1583
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1584
    .local v0, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1585
    .local v1, "retval":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1586
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1587
    .local v2, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1588
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1589
    .end local v2    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_b

    .line 1590
    :cond_1f
    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    return-object v2
.end method

.method public greylist getHeaders()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;
    .registers 4
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ListIterator<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    .line 1387
    if-eqz p1, :cond_2c

    .line 1389
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 1390
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1392
    .local v0, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v0, :cond_1a

    .line 1393
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    return-object v1

    .line 1394
    :cond_1a
    instance-of v1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v1, :cond_26

    .line 1395
    move-object v1, v0

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    return-object v1

    .line 1397
    :cond_26
    new-instance v1, Lgov/nist/javax/sip/message/HeaderIterator;

    invoke-direct {v1, p0, v0}, Lgov/nist/javax/sip/message/HeaderIterator;-><init>(Lgov/nist/javax/sip/message/SIPMessage;Lgov/nist/javax/sip/header/SIPHeader;)V

    return-object v1

    .line 1388
    .end local v0    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null headerName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getMaxForwards()Ljavax/sip/header/MaxForwardsHeader;
    .registers 2

    .line 1070
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    return-object v0
.end method

.method public greylist getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 218
    .local v0, "retval":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 219
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 221
    .local v2, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v3, v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v3, :cond_26

    .line 222
    move-object v3, v2

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 223
    .local v3, "shl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->getHeadersAsEncodedStrings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 224
    .end local v3    # "shl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    goto :goto_2d

    .line 225
    :cond_26
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v2    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :goto_2d
    goto :goto_b

    .line 229
    :cond_2e
    return-object v0
.end method

.method public greylist getMessageContent()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1174
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-nez v0, :cond_a

    .line 1175
    const/4 v0, 0x0

    return-object v0

    .line 1176
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 1177
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1179
    :cond_1b
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getMultipartMimeContent()Lgov/nist/javax/sip/message/MultipartMimeContent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1821
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1822
    return-object v1

    .line 1824
    :cond_a
    new-instance v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;

    .line 1825
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v2

    invoke-direct {v0, v2}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;-><init>(Ljavax/sip/header/ContentTypeHeader;)V

    .line 1826
    .local v0, "retval":Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getRawContent()[B

    move-result-object v2

    .line 1828
    .local v2, "rawContent":[B
    :try_start_17
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1829
    .local v3, "body":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->createContentList(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_23} :catch_24

    .line 1830
    return-object v0

    .line 1831
    .end local v3    # "body":Ljava/lang/String;
    :catch_24
    move-exception v3

    .line 1832
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 1833
    return-object v1
.end method

.method public greylist getRawContent()[B
    .registers 3

    .line 1191
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v0, :cond_5

    goto :goto_2c

    .line 1193
    :cond_5
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 1194
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, "messageContent":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .end local v0    # "messageContent":Ljava/lang/String;
    goto :goto_2b

    .line 1196
    :cond_1a
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 1197
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    goto :goto_2c

    .line 1196
    :cond_2b
    :goto_2b
    nop

    .line 1199
    :goto_2c
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object v0

    .line 1200
    :catch_2f
    move-exception v0

    .line 1201
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 1202
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;
    .registers 2

    .line 1130
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->RECORDROUTE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RecordRouteList;

    return-object v0
.end method

.method public greylist getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;
    .registers 2

    .line 1088
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ROUTE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RouteList;

    return-object v0
.end method

.method public abstract greylist getSIPVersion()Ljava/lang/String;
.end method

.method public greylist getSize()I
    .registers 2

    .line 1723
    iget v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->size:I

    return v0
.end method

.method public greylist getTo()Ljavax/sip/header/ToHeader;
    .registers 2

    .line 1142
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    return-object v0
.end method

.method public greylist getToHeader()Ljavax/sip/header/ToHeader;
    .registers 2

    .line 1848
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    return-object v0
.end method

.method public greylist getToTag()Ljava/lang/String;
    .registers 2

    .line 1508
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public greylist getTopmostVia()Lgov/nist/javax/sip/header/Via;
    .registers 2

    .line 1036
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1037
    const/4 v0, 0x0

    return-object v0

    .line 1039
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    return-object v0
.end method

.method public greylist getTopmostViaHeader()Ljavax/sip/header/ViaHeader;
    .registers 2

    .line 1853
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTransactionId()Ljava/lang/String;
    .registers 11

    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "topVia":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 832
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    .line 837
    :cond_16
    const-string v1, ":"

    const-string v2, "CANCEL"

    if-eqz v0, :cond_6f

    .line 838
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 839
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Z9HG4BK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 844
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 847
    :cond_66
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 851
    :cond_6f
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 852
    .local v3, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/From;

    .line 853
    .local v4, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/To;

    .line 856
    .local v5, "to":Lgov/nist/javax/sip/header/To;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/From;->hasTag()Z

    move-result v6

    const-string v7, "-"

    if-eqz v6, :cond_93

    .line 857
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 860
    :cond_93
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v6

    .line 861
    .local v6, "cid":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    iget-object v8, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v8}, Lgov/nist/javax/sip/header/CSeq;->getSequenceNumber()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    .line 863
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v9

    .line 862
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    if-eqz v0, :cond_db

    .line 865
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v9

    invoke-virtual {v9}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/core/HostPort;->hasPort()Z

    move-result v8

    if-nez v8, :cond_db

    .line 867
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x13c4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 870
    :cond_db
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ec

    .line 871
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 873
    :cond_ec
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "@"

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 874
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 873
    return-object v1
.end method

.method public greylist getUnrecognizedHeaders()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1573
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getViaHeaders()Lgov/nist/javax/sip/header/ViaList;
    .registers 2

    .line 1000
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->VIA_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ViaList;

    return-object v0
.end method

.method public greylist hasContent()Z
    .registers 2

    .line 895
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public greylist hasFromTag()Z
    .registers 2

    .line 1458
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist hasHeader(Ljava/lang/String;)Z
    .registers 4
    .param p1, "headerName"    # Ljava/lang/String;

    .line 1449
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist hasToTag()Z
    .registers 2

    .line 1467
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 884
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    if-eqz v0, :cond_f

    .line 888
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 885
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid message! Cannot compute hashcode! call-id header is missing !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist isNullRequest()Z
    .registers 2

    .line 1877
    iget-boolean v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nullRequest:Z

    return v0
.end method

.method public greylist match(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "other"    # Ljava/lang/Object;

    .line 272
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 273
    return v0

    .line 274
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 275
    return v2

    .line 276
    :cond_14
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPMessage;

    .line 277
    .local v1, "matchObj":Lgov/nist/javax/sip/message/SIPMessage;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaders()Ljava/util/Iterator;

    move-result-object v3

    .line 278
    .local v3, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 279
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 280
    .local v4, "hisHeaders":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 283
    .local v5, "myHeaders":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    if-eqz v5, :cond_92

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_38

    goto :goto_92

    .line 286
    :cond_38
    instance-of v6, v4, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v6, :cond_73

    .line 287
    move-object v6, v4

    check-cast v6, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 288
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 289
    .local v6, "outerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :goto_43
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_72

    .line 290
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    .line 291
    .local v7, "hisHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v8, v7, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v8, :cond_54

    .line 292
    goto :goto_43

    .line 293
    :cond_54
    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v8

    .line 294
    .local v8, "innerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v9, 0x0

    .line 295
    .local v9, "found":Z
    :goto_59
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 296
    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/header/SIPHeader;

    .line 297
    .local v10, "myHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v10, v7}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6d

    .line 298
    const/4 v9, 0x1

    .line 299
    goto :goto_6e

    .line 301
    .end local v10    # "myHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_6d
    goto :goto_59

    .line 302
    :cond_6e
    :goto_6e
    if-nez v9, :cond_71

    .line 303
    return v2

    .line 304
    .end local v7    # "hisHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v8    # "innerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v9    # "found":Z
    :cond_71
    goto :goto_43

    .line 305
    .end local v6    # "outerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_72
    goto :goto_91

    .line 306
    :cond_73
    move-object v6, v4

    .line 307
    .local v6, "hisHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 308
    .local v7, "innerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    const/4 v8, 0x0

    .line 309
    .local v8, "found":Z
    :goto_79
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 310
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/header/SIPHeader;

    .line 311
    .local v9, "myHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v9, v6}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 312
    const/4 v8, 0x1

    .line 313
    goto :goto_8e

    .line 315
    .end local v9    # "myHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_8d
    goto :goto_79

    .line 316
    :cond_8e
    :goto_8e
    if-nez v8, :cond_91

    .line 317
    return v2

    .line 319
    .end local v4    # "hisHeaders":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v5    # "myHeaders":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v6    # "hisHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v7    # "innerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v8    # "found":Z
    :cond_91
    :goto_91
    goto :goto_1b

    .line 284
    .restart local v4    # "hisHeaders":Lgov/nist/javax/sip/header/SIPHeader;
    .restart local v5    # "myHeaders":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_92
    :goto_92
    return v2

    .line 320
    .end local v4    # "hisHeaders":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v5    # "myHeaders":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_93
    return v0
.end method

.method public greylist merge(Ljava/lang/Object;)V
    .registers 10
    .param p1, "template"    # Ljava/lang/Object;

    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 333
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPMessage;

    .line 334
    .local v0, "templateMessage":Lgov/nist/javax/sip/message/SIPMessage;
    iget-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 335
    .local v1, "templateHeaders":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    array-length v3, v1

    if-ge v2, v3, :cond_44

    .line 336
    aget-object v3, v1, v2

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 337
    .local v3, "hdr":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "hdrName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 339
    .local v5, "myHdrs":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    if-nez v5, :cond_2d

    .line 340
    invoke-direct {p0, v3}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V

    goto :goto_41

    .line 342
    :cond_2d
    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 343
    .local v6, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_31
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 344
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    .line 345
    .local v7, "sipHdr":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v7, v3}, Lgov/nist/javax/sip/header/SIPHeader;->merge(Ljava/lang/Object;)V

    .line 346
    .end local v7    # "sipHdr":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_31

    .line 335
    .end local v3    # "hdr":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v4    # "hdrName":Ljava/lang/String;
    .end local v5    # "myHdrs":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v6    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 350
    .end local v2    # "i":I
    :cond_44
    return-void

    .line 332
    .end local v0    # "templateMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local v1    # "templateHeaders":[Ljava/lang/Object;
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeContent()V
    .registers 3

    .line 1370
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1371
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1372
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1374
    :try_start_7
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_d
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_7 .. :try_end_d} :catch_e

    .line 1376
    goto :goto_f

    .line 1375
    :catch_e
    move-exception v0

    .line 1377
    :goto_f
    return-void
.end method

.method public greylist removeFirst(Ljava/lang/String;)V
    .registers 4
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1767
    if-eqz p1, :cond_7

    .line 1769
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;Z)V

    .line 1771
    return-void

    .line 1768
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null argument Provided!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeHeader(Ljava/lang/String;)V
    .registers 7
    .param p1, "headerName"    # Ljava/lang/String;

    .line 781
    if-eqz p1, :cond_5c

    .line 783
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "headerNameLowerCase":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 786
    .local v1, "removed":Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v1, :cond_11

    .line 787
    return-void

    .line 790
    :cond_11
    instance-of v2, v1, Lgov/nist/javax/sip/header/From;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    .line 791
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    goto :goto_3b

    .line 792
    :cond_19
    instance-of v2, v1, Lgov/nist/javax/sip/header/To;

    if-eqz v2, :cond_20

    .line 793
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    goto :goto_3b

    .line 794
    :cond_20
    instance-of v2, v1, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v2, :cond_27

    .line 795
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    goto :goto_3b

    .line 796
    :cond_27
    instance-of v2, v1, Lgov/nist/javax/sip/header/CallID;

    if-eqz v2, :cond_2e

    .line 797
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    goto :goto_3b

    .line 798
    :cond_2e
    instance-of v2, v1, Lgov/nist/javax/sip/header/MaxForwards;

    if-eqz v2, :cond_35

    .line 799
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    goto :goto_3b

    .line 800
    :cond_35
    instance-of v2, v1, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v2, :cond_3b

    .line 801
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    .line 804
    :cond_3b
    :goto_3b
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 805
    .local v2, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 806
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 807
    .local v3, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 808
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 810
    .end local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_5a
    goto :goto_41

    .line 811
    :cond_5b
    return-void

    .line 782
    .end local v0    # "headerNameLowerCase":Ljava/lang/String;
    .end local v1    # "removed":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v2    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_5c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeHeader(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "top"    # Z

    .line 725
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "headerNameLowerCase":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 728
    .local v1, "toRemove":Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v1, :cond_f

    .line 729
    return-void

    .line 730
    :cond_f
    instance-of v2, v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v2, :cond_4b

    .line 731
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 732
    .local v2, "hdrList":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    if-eqz p2, :cond_1c

    .line 733
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->removeFirst()Lgov/nist/javax/sip/header/SIPHeader;

    goto :goto_1f

    .line 735
    :cond_1c
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->removeLast()Lgov/nist/javax/sip/header/SIPHeader;

    .line 737
    :goto_1f
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 738
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 739
    .local v3, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 740
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 741
    .local v4, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 742
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 743
    .end local v4    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_44
    goto :goto_2b

    .line 747
    :cond_45
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    .end local v2    # "hdrList":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    .end local v3    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_4a
    goto :goto_9a

    .line 750
    :cond_4b
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    instance-of v2, v1, Lgov/nist/javax/sip/header/From;

    const/4 v3, 0x0

    if-eqz v2, :cond_58

    .line 752
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    goto :goto_7a

    .line 753
    :cond_58
    instance-of v2, v1, Lgov/nist/javax/sip/header/To;

    if-eqz v2, :cond_5f

    .line 754
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    goto :goto_7a

    .line 755
    :cond_5f
    instance-of v2, v1, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v2, :cond_66

    .line 756
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    goto :goto_7a

    .line 757
    :cond_66
    instance-of v2, v1, Lgov/nist/javax/sip/header/CallID;

    if-eqz v2, :cond_6d

    .line 758
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    goto :goto_7a

    .line 759
    :cond_6d
    instance-of v2, v1, Lgov/nist/javax/sip/header/MaxForwards;

    if-eqz v2, :cond_74

    .line 760
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    goto :goto_7a

    .line 761
    :cond_74
    instance-of v2, v1, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v2, :cond_7a

    .line 762
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    .line 764
    :cond_7a
    :goto_7a
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 765
    .local v2, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 766
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 767
    .local v3, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 768
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 769
    .end local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_99
    goto :goto_80

    .line 772
    .end local v2    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_9a
    :goto_9a
    return-void
.end method

.method public greylist removeLast(Ljava/lang/String;)V
    .registers 4
    .param p1, "headerName"    # Ljava/lang/String;

    .line 1779
    if-eqz p1, :cond_7

    .line 1781
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;Z)V

    .line 1783
    return-void

    .line 1780
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null argument Provided!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setApplicationData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "applicationData"    # Ljava/lang/Object;

    .line 1804
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->applicationData:Ljava/lang/Object;

    .line 1805
    return-void
.end method

.method public greylist setCSeq(Ljavax/sip/header/CSeqHeader;)V
    .registers 2
    .param p1, "cseqHeader"    # Ljavax/sip/header/CSeqHeader;

    .line 1792
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1793
    return-void
.end method

.method public greylist setCallId(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1118
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    if-nez v0, :cond_c

    .line 1119
    new-instance v0, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1121
    :cond_c
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V

    .line 1122
    return-void
.end method

.method public greylist setCallId(Ljavax/sip/header/CallIdHeader;)V
    .registers 2
    .param p1, "callId"    # Ljavax/sip/header/CallIdHeader;

    .line 1109
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1110
    return-void
.end method

.method public greylist setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V
    .registers 5
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "contentTypeHeader"    # Ljavax/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1234
    if-eqz p1, :cond_26

    .line 1236
    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1238
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1239
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1240
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1242
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 1243
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    goto :goto_22

    .line 1244
    :cond_16
    instance-of v0, p1, [B

    if-eqz v0, :cond_20

    .line 1245
    move-object v0, p1

    check-cast v0, [B

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    goto :goto_22

    .line 1247
    :cond_20
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1249
    :goto_22
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1250
    return-void

    .line 1235
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setContentDisposition(Ljavax/sip/header/ContentDispositionHeader;)V
    .registers 2
    .param p1, "contentDispositionHeader"    # Ljavax/sip/header/ContentDispositionHeader;

    .line 1687
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1689
    return-void
.end method

.method public greylist setContentEncoding(Ljavax/sip/header/ContentEncodingHeader;)V
    .registers 2
    .param p1, "contentEncodingHeader"    # Ljavax/sip/header/ContentEncodingHeader;

    .line 1692
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1694
    return-void
.end method

.method public greylist setContentLanguage(Ljavax/sip/header/ContentLanguageHeader;)V
    .registers 2
    .param p1, "contentLanguageHeader"    # Ljavax/sip/header/ContentLanguageHeader;

    .line 1697
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1698
    return-void
.end method

.method public greylist setContentLength(Ljavax/sip/header/ContentLengthHeader;)V
    .registers 4
    .param p1, "contentLength"    # Ljavax/sip/header/ContentLengthHeader;

    .line 1707
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-interface {p1}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_9
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1709
    goto :goto_b

    .line 1708
    :catch_a
    move-exception v0

    .line 1711
    :goto_b
    return-void
.end method

.method public greylist setExpires(Ljavax/sip/header/ExpiresHeader;)V
    .registers 2
    .param p1, "expiresHeader"    # Ljavax/sip/header/ExpiresHeader;

    .line 1677
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1678
    return-void
.end method

.method public greylist setFrom(Ljavax/sip/header/FromHeader;)V
    .registers 2
    .param p1, "from"    # Ljavax/sip/header/FromHeader;

    .line 1150
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1152
    return-void
.end method

.method public greylist setFromTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 1487
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1489
    goto :goto_7

    .line 1488
    :catch_6
    move-exception v0

    .line 1490
    :goto_7
    return-void
.end method

.method public greylist setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList<",
            "Lgov/nist/javax/sip/header/Via;",
            ">;)V"
        }
    .end annotation

    .line 1027
    .local p1, "sipHeaderList":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/Via;>;"
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1028
    return-void
.end method

.method public greylist setHeader(Ljavax/sip/header/Header;)V
    .registers 5
    .param p1, "sipHeader"    # Ljavax/sip/header/Header;

    .line 579
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    .line 580
    .local v0, "header":Lgov/nist/javax/sip/header/SIPHeader;
    if-eqz v0, :cond_25

    .line 583
    :try_start_5
    instance-of v1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v1, :cond_13

    .line 584
    move-object v1, v0

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 586
    .local v1, "hl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 587
    return-void

    .line 589
    .end local v1    # "hl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    :cond_13
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;)V

    .line 590
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_1f
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_5 .. :try_end_1f} :catch_20

    .line 593
    goto :goto_24

    .line 591
    :catch_20
    move-exception v1

    .line 592
    .local v1, "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 594
    .end local v1    # "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :goto_24
    return-void

    .line 581
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null header!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist setHeaders(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;)V"
        }
    .end annotation

    .line 602
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 603
    .local v0, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 604
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 606
    .local v1, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {p0, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_14
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_11 .. :try_end_14} :catch_15

    .line 608
    goto :goto_16

    .line 607
    :catch_15
    move-exception v2

    .line 609
    .end local v1    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :goto_16
    goto :goto_4

    .line 610
    :cond_17
    return-void
.end method

.method public greylist setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V
    .registers 2
    .param p1, "maxForwards"    # Ljavax/sip/header/MaxForwardsHeader;

    .line 1079
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1080
    return-void
.end method

.method public greylist setMessageContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "messageContent"    # Ljava/lang/String;

    .line 1214
    if-eqz p3, :cond_15

    .line 1216
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    .local v0, "ct":Lgov/nist/javax/sip/header/ContentType;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1218
    iput-object p3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1219
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1220
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1223
    invoke-direct {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1224
    return-void

    .line 1215
    .end local v0    # "ct":Lgov/nist/javax/sip/header/ContentType;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messgeContent is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setMessageContent(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "messageContent"    # [B

    .line 1276
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    .local v0, "ct":Lgov/nist/javax/sip/header/ContentType;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1278
    invoke-virtual {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent([B)V

    .line 1280
    invoke-direct {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1281
    return-void
.end method

.method public greylist setMessageContent(Ljava/lang/String;ZZI)V
    .registers 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .param p3, "computeContentLength"    # Z
    .param p4, "givenLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1292
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1293
    if-nez p3, :cond_42

    .line 1294
    if-nez p2, :cond_f

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-ne v0, p4, :cond_18

    :cond_f
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    .line 1295
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-lt v0, p4, :cond_18

    goto :goto_42

    .line 1296
    :cond_18
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    .line 1297
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1301
    :cond_42
    :goto_42
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1302
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1303
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1304
    return-void
.end method

.method public greylist setMessageContent([B)V
    .registers 3
    .param p1, "content"    # [B

    .line 1312
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1314
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1315
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1316
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1317
    return-void
.end method

.method public greylist setMessageContent([BZI)V
    .registers 7
    .param p1, "content"    # [B
    .param p2, "computeContentLength"    # Z
    .param p3, "givenLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1327
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1328
    if-nez p2, :cond_38

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-lt v0, p3, :cond_e

    goto :goto_38

    .line 1330
    :cond_e
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    .line 1331
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1333
    :cond_38
    :goto_38
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1334
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1335
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1336
    return-void
.end method

.method public greylist setNullRequest()V
    .registers 2

    .line 1885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nullRequest:Z

    .line 1886
    return-void
.end method

.method public abstract greylist setSIPVersion(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public greylist setSize(I)V
    .registers 2
    .param p1, "size"    # I

    .line 1719
    iput p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->size:I

    .line 1720
    return-void
.end method

.method public greylist setTo(Ljavax/sip/header/ToHeader;)V
    .registers 2
    .param p1, "to"    # Ljavax/sip/header/ToHeader;

    .line 1146
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1147
    return-void
.end method

.method public greylist setToTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 1499
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1501
    goto :goto_7

    .line 1500
    :catch_6
    move-exception v0

    .line 1502
    :goto_7
    return-void
.end method

.method public greylist setVia(Ljava/util/List;)V
    .registers 5
    .param p1, "viaList"    # Ljava/util/List;

    .line 1011
    new-instance v0, Lgov/nist/javax/sip/header/ViaList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ViaList;-><init>()V

    .line 1012
    .local v0, "vList":Lgov/nist/javax/sip/header/ViaList;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1013
    .local v1, "it":Ljava/util/ListIterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1014
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Via;

    .line 1015
    .local v2, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ViaList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 1016
    .end local v2    # "via":Lgov/nist/javax/sip/header/Via;
    goto :goto_9

    .line 1017
    :cond_19
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V

    .line 1018
    return-void
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
