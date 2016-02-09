.class public abstract Lgov/nist/javax/sip/message/SIPMessage;
.super Lgov/nist/javax/sip/message/MessageObject;
.source "SIPMessage.java"

# interfaces
.implements Ljavax/sip/message/Message;
.implements Lgov/nist/javax/sip/message/MessageExt;


# static fields
.field private static final AUTHORIZATION_LOWERCASE:Ljava/lang/String;

.field private static final CONTACT_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

.field private static final ERROR_LOWERCASE:Ljava/lang/String;

.field private static final EXPIRES_LOWERCASE:Ljava/lang/String;

.field private static final RECORDROUTE_LOWERCASE:Ljava/lang/String;

.field private static final ROUTE_LOWERCASE:Ljava/lang/String;

.field private static final VIA_LOWERCASE:Ljava/lang/String;


# instance fields
.field protected applicationData:Ljava/lang/Object;

.field protected cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

.field protected callIdHeader:Lgov/nist/javax/sip/header/CallID;

.field private contentEncodingCharset:Ljava/lang/String;

.field protected contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

.field protected fromHeader:Lgov/nist/javax/sip/header/From;

.field protected headers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

.field private messageContent:Ljava/lang/String;

.field private messageContentBytes:[B

.field private messageContentObject:Ljava/lang/Object;

.field private nameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected nullRequest:Z

.field protected size:I

.field protected toHeader:Lgov/nist/javax/sip/header/To;

.field protected unrecognizedHeaders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 937
    const-string/jumbo v0, "Content-Type"

    #@3
    .line 936
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    #@9
    .line 966
    const-string/jumbo v0, "Error-Info"

    #@c
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ERROR_LOWERCASE:Ljava/lang/String;

    #@12
    .line 978
    const-string/jumbo v0, "Contact"

    #@15
    .line 977
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTACT_LOWERCASE:Ljava/lang/String;

    #@1b
    .line 1003
    const-string/jumbo v0, "Via"

    #@1e
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->VIA_LOWERCASE:Ljava/lang/String;

    #@24
    .line 1061
    const-string/jumbo v0, "Authorization"

    #@27
    .line 1060
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->AUTHORIZATION_LOWERCASE:Ljava/lang/String;

    #@2d
    .line 1092
    const-string/jumbo v0, "Route"

    #@30
    .line 1091
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ROUTE_LOWERCASE:Ljava/lang/String;

    #@36
    .line 1134
    const-string/jumbo v0, "Record-Route"

    #@39
    .line 1133
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->RECORDROUTE_LOWERCASE:Ljava/lang/String;

    #@3f
    .line 1632
    const-string/jumbo v0, "Content-Disposition"

    #@42
    .line 1631
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

    #@48
    .line 1644
    const-string/jumbo v0, "Content-Encoding"

    #@4b
    .line 1643
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

    #@51
    .line 1656
    const-string/jumbo v0, "Content-Language"

    #@54
    .line 1655
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

    #@5a
    .line 1668
    const-string/jumbo v0, "Expires"

    #@5d
    .line 1667
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->EXPIRES_LOWERCASE:Ljava/lang/String;

    #@63
    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 542
    invoke-direct {p0}, Lgov/nist/javax/sip/message/MessageObject;-><init>()V

    #@3
    .line 130
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultContentEncodingCharset()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    #@9
    .line 543
    new-instance v1, Ljava/util/LinkedList;

    #@b
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@e
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    #@10
    .line 544
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@12
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    #@15
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@17
    .line 545
    new-instance v1, Ljava/util/Hashtable;

    #@19
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    #@1c
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@1e
    .line 547
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/ContentLength;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-direct {v1, v2}, Lgov/nist/javax/sip/header/ContentLength;-><init>(I)V

    #@24
    const/4 v2, 0x0

    #@25
    invoke-virtual {p0, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 542
    :goto_0
    return-void

    #@29
    .line 548
    :catch_0
    move-exception v0

    #@2a
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V
    .locals 5
    .param p1, "h"    # Lgov/nist/javax/sip/header/SIPHeader;

    #@0
    .prologue
    .line 558
    if-nez p1, :cond_0

    #@2
    .line 559
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "null header!"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 561
    :cond_0
    :try_start_0
    instance-of v3, p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 562
    move-object v0, p1

    #@10
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@12
    move-object v2, v0

    #@13
    .line 563
    .local v2, "hl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 564
    return-void

    #@1a
    .line 567
    .end local v2    # "hl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    :cond_1
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-virtual {p0, p1, v3, v4}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 557
    :goto_0
    return-void

    #@20
    .line 568
    :catch_0
    move-exception v1

    #@21
    .local v1, "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    goto :goto_0
.end method

.method private computeContentLength(Ljava/lang/Object;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1344
    const/4 v2, 0x0

    #@1
    .line 1345
    .local v2, "length":I
    if-eqz p1, :cond_0

    #@3
    .line 1346
    instance-of v3, p1, Ljava/lang/String;

    #@5
    if-eqz v3, :cond_1

    #@7
    .line 1348
    :try_start_0
    check-cast p1, Ljava/lang/String;

    #@9
    .end local p1    # "content":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@10
    move-result-object v3

    #@11
    array-length v2, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 1360
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@14
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@17
    .line 1343
    :goto_1
    return-void

    #@18
    .line 1349
    :catch_0
    move-exception v1

    #@19
    .line 1350
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@1c
    goto :goto_0

    #@1d
    .line 1352
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "content":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, [B

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 1353
    check-cast p1, [B

    #@23
    .end local p1    # "content":Ljava/lang/Object;
    array-length v2, p1

    #@24
    goto :goto_0

    #@25
    .line 1355
    .restart local p1    # "content":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@2c
    move-result v2

    #@2d
    goto :goto_0

    #@2e
    .line 1361
    .end local p1    # "content":Ljava/lang/Object;
    :catch_1
    move-exception v0

    #@2f
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    goto :goto_1
.end method

.method private getHeaderList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1429
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@3
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    #@d
    .line 1431
    .local v1, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v1, :cond_0

    #@f
    .line 1432
    return-object v4

    #@10
    .line 1433
    :cond_0
    instance-of v2, v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 1434
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@16
    .end local v1    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->getHeaderList()Ljava/util/List;

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 1436
    .restart local v1    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    #@1d
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@20
    .line 1437
    .local v0, "ll":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@23
    .line 1438
    return-object v0
.end method

.method private getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 3
    .param p1, "lowerCaseHeaderName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 917
    if-nez p1, :cond_0

    #@2
    .line 918
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "bad name"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 919
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    #@13
    .line 920
    .local v0, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 921
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@19
    .end local v0    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 923
    .restart local v0    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1
    return-object v0
.end method

.method private getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;
    .locals 1
    .param p1, "lowerCaseHeaderName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1418
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    #@8
    return-object v0
.end method

.method public static isRequestHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .locals 1
    .param p0, "sipHeader"    # Lgov/nist/javax/sip/header/SIPHeader;

    #@0
    .prologue
    .line 187
    instance-of v0, p0, Lgov/nist/javax/sip/header/AlertInfo;

    #@2
    if-nez v0, :cond_0

    #@4
    instance-of v0, p0, Lgov/nist/javax/sip/header/InReplyTo;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 188
    instance-of v0, p0, Lgov/nist/javax/sip/header/Authorization;

    #@a
    .line 187
    if-nez v0, :cond_0

    #@c
    .line 188
    instance-of v0, p0, Lgov/nist/javax/sip/header/MaxForwards;

    #@e
    .line 187
    if-nez v0, :cond_0

    #@10
    .line 189
    instance-of v0, p0, Lgov/nist/javax/sip/header/UserAgent;

    #@12
    .line 187
    if-nez v0, :cond_0

    #@14
    .line 189
    instance-of v0, p0, Lgov/nist/javax/sip/header/Priority;

    #@16
    .line 187
    if-nez v0, :cond_0

    #@18
    .line 190
    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    #@1a
    .line 187
    if-nez v0, :cond_0

    #@1c
    .line 190
    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyRequire;

    #@1e
    .line 187
    if-nez v0, :cond_0

    #@20
    .line 191
    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyRequireList;

    #@22
    .line 187
    if-nez v0, :cond_0

    #@24
    .line 191
    instance-of v0, p0, Lgov/nist/javax/sip/header/Route;

    #@26
    .line 187
    if-nez v0, :cond_0

    #@28
    .line 192
    instance-of v0, p0, Lgov/nist/javax/sip/header/RouteList;

    #@2a
    .line 187
    if-nez v0, :cond_0

    #@2c
    .line 192
    instance-of v0, p0, Lgov/nist/javax/sip/header/Subject;

    #@2e
    .line 187
    if-nez v0, :cond_0

    #@30
    .line 193
    instance-of v0, p0, Lgov/nist/javax/sip/header/SIPIfMatch;

    #@32
    .line 187
    :goto_0
    return v0

    #@33
    :cond_0
    const/4 v0, 0x1

    #@34
    goto :goto_0
.end method

.method public static isResponseHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .locals 1
    .param p0, "sipHeader"    # Lgov/nist/javax/sip/header/SIPHeader;

    #@0
    .prologue
    .line 202
    instance-of v0, p0, Lgov/nist/javax/sip/header/ErrorInfo;

    #@2
    if-nez v0, :cond_0

    #@4
    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 203
    instance-of v0, p0, Lgov/nist/javax/sip/header/Server;

    #@a
    .line 202
    if-nez v0, :cond_0

    #@c
    .line 203
    instance-of v0, p0, Lgov/nist/javax/sip/header/Unsupported;

    #@e
    .line 202
    if-nez v0, :cond_0

    #@10
    .line 204
    instance-of v0, p0, Lgov/nist/javax/sip/header/RetryAfter;

    #@12
    .line 202
    if-nez v0, :cond_0

    #@14
    .line 204
    instance-of v0, p0, Lgov/nist/javax/sip/header/Warning;

    #@16
    .line 202
    if-nez v0, :cond_0

    #@18
    .line 205
    instance-of v0, p0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    #@1a
    .line 202
    if-nez v0, :cond_0

    #@1c
    .line 205
    instance-of v0, p0, Lgov/nist/javax/sip/header/SIPETag;

    #@1e
    .line 202
    if-nez v0, :cond_0

    #@20
    .line 206
    instance-of v0, p0, Lgov/nist/javax/sip/header/RSeq;

    #@22
    .line 202
    :goto_0
    return v0

    #@23
    :cond_0
    const/4 v0, 0x1

    #@24
    goto :goto_0
.end method


# virtual methods
.method public addFirst(Ljavax/sip/header/Header;)V
    .locals 3
    .param p1, "header"    # Ljavax/sip/header/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1750
    if-nez p1, :cond_0

    #@2
    .line 1751
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1754
    :cond_0
    :try_start_0
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    #@d
    .end local p1    # "header":Ljavax/sip/header/Header;
    const/4 v1, 0x0

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {p0, p1, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 1748
    return-void

    #@13
    .line 1755
    :catch_0
    move-exception v0

    #@14
    .line 1756
    .local v0, "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    new-instance v1, Ljavax/sip/SipException;

    #@16
    const-string/jumbo v2, "Cannot add header - header already exists"

    #@19
    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1
.end method

.method public addHeader(Ljava/lang/String;)V
    .locals 6
    .param p1, "sipHeader"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1557
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v4

    #@d
    const-string/jumbo v5, "\n"

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 1559
    .local v1, "hdrString":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;

    #@1b
    move-result-object v2

    #@1c
    .line 1560
    .local v2, "parser":Lgov/nist/javax/sip/parser/HeaderParser;
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    #@1f
    move-result-object v3

    #@20
    .line 1561
    .local v3, "sh":Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v4, 0x0

    #@21
    invoke-virtual {p0, v3, v4}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 1556
    .end local v2    # "parser":Lgov/nist/javax/sip/parser/HeaderParser;
    .end local v3    # "sh":Lgov/nist/javax/sip/header/SIPHeader;
    :goto_0
    return-void

    #@25
    .line 1562
    :catch_0
    move-exception v0

    #@26
    .line 1563
    .local v0, "ex":Ljava/text/ParseException;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    #@28
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0
.end method

.method public addHeader(Ljavax/sip/header/Header;)V
    .locals 7
    .param p1, "sipHeader"    # Ljavax/sip/header/Header;

    #@0
    .prologue
    move-object v4, p1

    #@1
    .line 1523
    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    #@3
    .line 1525
    .local v4, "sh":Lgov/nist/javax/sip/header/SIPHeader;
    :try_start_0
    instance-of v5, p1, Ljavax/sip/header/ViaHeader;

    #@5
    if-nez v5, :cond_0

    #@7
    instance-of v5, p1, Ljavax/sip/header/RecordRouteHeader;

    #@9
    if-eqz v5, :cond_2

    #@b
    .line 1526
    :cond_0
    const/4 v5, 0x0

    #@c
    const/4 v6, 0x1

    #@d
    invoke-virtual {p0, v4, v5, v6}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V

    #@10
    .line 1521
    :cond_1
    :goto_0
    return-void

    #@11
    .line 1528
    :cond_2
    const/4 v5, 0x0

    #@12
    const/4 v6, 0x0

    #@13
    invoke-virtual {p0, v4, v5, v6}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    goto :goto_0

    #@17
    .line 1530
    :catch_0
    move-exception v3

    #@18
    .line 1532
    .local v3, "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :try_start_1
    instance-of v5, p1, Lgov/nist/javax/sip/header/ContentLength;

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 1533
    move-object v0, p1

    #@1d
    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    #@1f
    move-object v1, v0

    #@20
    .line 1534
    .local v1, "cl":Lgov/nist/javax/sip/header/ContentLength;
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@22
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    #@25
    move-result v6

    #@26
    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@29
    goto :goto_0

    #@2a
    .line 1536
    .end local v1    # "cl":Lgov/nist/javax/sip/header/ContentLength;
    :catch_1
    move-exception v2

    #@2b
    .local v2, "e":Ljavax/sip/InvalidArgumentException;
    goto :goto_0
.end method

.method public addLast(Ljavax/sip/header/Header;)V
    .locals 3
    .param p1, "header"    # Ljavax/sip/header/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1732
    if-nez p1, :cond_0

    #@2
    .line 1733
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1736
    :cond_0
    :try_start_0
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    #@d
    .end local p1    # "header":Ljavax/sip/header/Header;
    const/4 v1, 0x0

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {p0, p1, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 1731
    return-void

    #@13
    .line 1737
    :catch_0
    move-exception v0

    #@14
    .line 1738
    .local v0, "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    new-instance v1, Ljavax/sip/SipException;

    #@16
    const-string/jumbo v2, "Cannot add header - header already exists"

    #@19
    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1
.end method

.method public addUnparsed(Ljava/lang/String;)V
    .locals 1
    .param p1, "unparsed"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1547
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@5
    .line 1546
    return-void
.end method

.method public attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    .locals 1
    .param p1, "h"    # Lgov/nist/javax/sip/header/SIPHeader;
    .param p2, "replaceflag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    #@0
    .prologue
    .line 623
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V

    #@4
    .line 622
    return-void
.end method

.method public attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    .locals 12
    .param p1, "header"    # Lgov/nist/javax/sip/header/SIPHeader;
    .param p2, "replaceFlag"    # Z
    .param p3, "top"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    #@0
    .prologue
    .line 641
    if-nez p1, :cond_0

    #@2
    .line 642
    new-instance v10, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v11, "null header"

    #@7
    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v10

    #@b
    .line 647
    :cond_0
    invoke-static {p1}, Lgov/nist/javax/sip/message/ListMap;->hasList(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@e
    move-result v10

    #@f
    if-eqz v10, :cond_1

    #@11
    const-class v10, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@13
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/SIPHeader;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v11

    #@17
    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1a
    move-result v10

    #@1b
    if-eqz v10, :cond_4

    #@1d
    .line 652
    :cond_1
    move-object v3, p1

    #@1e
    .line 655
    .local v3, "h":Lgov/nist/javax/sip/header/SIPHeader;
    :goto_0
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    #@21
    move-result-object v10

    #@22
    invoke-static {v10}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    .line 656
    .local v6, "headerNameLowerCase":Ljava/lang/String;
    if-eqz p2, :cond_5

    #@28
    .line 657
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@2a
    invoke-virtual {v10, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 670
    :cond_2
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    #@30
    move-result-object v10

    #@31
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@34
    move-result-object v9

    #@35
    check-cast v9, Lgov/nist/javax/sip/header/SIPHeader;

    #@37
    .line 673
    .local v9, "originalHeader":Lgov/nist/javax/sip/header/SIPHeader;
    if-eqz v9, :cond_7

    #@39
    .line 674
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@3b
    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v7

    #@3f
    .line 675
    .local v7, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v10

    #@43
    if-eqz v10, :cond_7

    #@45
    .line 676
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v8

    #@49
    check-cast v8, Lgov/nist/javax/sip/header/SIPHeader;

    #@4b
    .line 677
    .local v8, "next":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v10

    #@4f
    if-eqz v10, :cond_3

    #@51
    .line 678
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    #@54
    goto :goto_1

    #@55
    .line 648
    .end local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v6    # "headerNameLowerCase":Ljava/lang/String;
    .end local v7    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v8    # "next":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v9    # "originalHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_4
    invoke-static {p1}, Lgov/nist/javax/sip/message/ListMap;->getList(Lgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@58
    move-result-object v4

    #@59
    .line 649
    .local v4, "hdrList":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@5c
    .line 650
    move-object v3, v4

    #@5d
    .line 647
    .restart local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_0

    #@5e
    .line 658
    .end local v4    # "hdrList":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .restart local v6    # "headerNameLowerCase":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@60
    invoke-virtual {v10, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@63
    move-result v10

    #@64
    if-eqz v10, :cond_2

    #@66
    instance-of v10, v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@68
    if-nez v10, :cond_2

    #@6a
    .line 659
    instance-of v10, v3, Lgov/nist/javax/sip/header/ContentLength;

    #@6c
    if-eqz v10, :cond_6

    #@6e
    .line 661
    :try_start_0
    move-object v0, v3

    #@6f
    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    #@71
    move-object v1, v0

    #@72
    .line 662
    .local v1, "cl":Lgov/nist/javax/sip/header/ContentLength;
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@74
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    #@77
    move-result v11

    #@78
    invoke-virtual {v10, v11}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@7b
    .line 667
    .end local v1    # "cl":Lgov/nist/javax/sip/header/ContentLength;
    :cond_6
    :goto_2
    return-void

    #@7c
    .line 683
    .restart local v9    # "originalHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_7
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@7e
    invoke-virtual {v10, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@81
    move-result v10

    #@82
    if-nez v10, :cond_9

    #@84
    .line 684
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@86
    invoke-virtual {v10, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    .line 685
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@8b
    invoke-virtual {v10, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    #@8e
    .line 700
    :goto_3
    instance-of v10, v3, Lgov/nist/javax/sip/header/From;

    #@90
    if-eqz v10, :cond_c

    #@92
    .line 701
    check-cast v3, Lgov/nist/javax/sip/header/From;

    #@94
    .end local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@96
    .line 640
    :cond_8
    :goto_4
    return-void

    #@97
    .line 687
    .restart local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_9
    instance-of v10, v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@99
    if-eqz v10, :cond_b

    #@9b
    .line 688
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@9d
    invoke-virtual {v10, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a0
    move-result-object v5

    #@a1
    check-cast v5, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a3
    .line 690
    .local v5, "hdrlist":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    if-eqz v5, :cond_a

    #@a5
    move-object v10, v3

    #@a6
    .line 691
    check-cast v10, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a8
    invoke-virtual {v5, v10, p3}, Lgov/nist/javax/sip/header/SIPHeaderList;->concatenate(Lgov/nist/javax/sip/header/SIPHeaderList;Z)V

    #@ab
    goto :goto_3

    #@ac
    .line 693
    :cond_a
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@ae
    invoke-virtual {v10, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b1
    goto :goto_3

    #@b2
    .line 695
    .end local v5    # "hdrlist":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    :cond_b
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@b4
    invoke-virtual {v10, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    goto :goto_3

    #@b8
    .line 702
    :cond_c
    instance-of v10, v3, Lgov/nist/javax/sip/header/ContentLength;

    #@ba
    if-eqz v10, :cond_d

    #@bc
    .line 703
    check-cast v3, Lgov/nist/javax/sip/header/ContentLength;

    #@be
    .end local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@c0
    goto :goto_4

    #@c1
    .line 704
    .restart local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_d
    instance-of v10, v3, Lgov/nist/javax/sip/header/To;

    #@c3
    if-eqz v10, :cond_e

    #@c5
    .line 705
    check-cast v3, Lgov/nist/javax/sip/header/To;

    #@c7
    .end local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    #@c9
    goto :goto_4

    #@ca
    .line 706
    .restart local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_e
    instance-of v10, v3, Lgov/nist/javax/sip/header/CSeq;

    #@cc
    if-eqz v10, :cond_f

    #@ce
    .line 707
    check-cast v3, Lgov/nist/javax/sip/header/CSeq;

    #@d0
    .end local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@d2
    goto :goto_4

    #@d3
    .line 708
    .restart local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_f
    instance-of v10, v3, Lgov/nist/javax/sip/header/CallID;

    #@d5
    if-eqz v10, :cond_10

    #@d7
    .line 709
    check-cast v3, Lgov/nist/javax/sip/header/CallID;

    #@d9
    .end local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@db
    goto :goto_4

    #@dc
    .line 710
    .restart local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_10
    instance-of v10, v3, Lgov/nist/javax/sip/header/MaxForwards;

    #@de
    if-eqz v10, :cond_8

    #@e0
    .line 711
    check-cast v3, Lgov/nist/javax/sip/header/MaxForwards;

    #@e2
    .end local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    #@e4
    goto :goto_4

    #@e5
    .line 663
    .end local v9    # "originalHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .restart local v3    # "h":Lgov/nist/javax/sip/header/SIPHeader;
    :catch_0
    move-exception v2

    #@e6
    .local v2, "e":Ljavax/sip/InvalidArgumentException;
    goto :goto_2
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 473
    invoke-super {p0}, Lgov/nist/javax/sip/message/MessageObject;->clone()Ljava/lang/Object;

    #@4
    move-result-object v2

    #@5
    check-cast v2, Lgov/nist/javax/sip/message/SIPMessage;

    #@7
    .line 474
    .local v2, "retval":Lgov/nist/javax/sip/message/SIPMessage;
    new-instance v3, Ljava/util/Hashtable;

    #@9
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    #@c
    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@e
    .line 475
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@10
    .line 476
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    #@12
    .line 477
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@14
    .line 478
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@16
    .line 479
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@18
    .line 480
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    #@1a
    .line 481
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 482
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@20
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    #@23
    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@25
    .line 483
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@27
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v1

    #@2b
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_0

    #@31
    .line 484
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    #@37
    .line 485
    .local v0, "hdr":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    #@3d
    invoke-direct {v2, v3}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V

    #@40
    goto :goto_0

    #@41
    .line 489
    .end local v0    # "hdr":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@43
    if-eqz v3, :cond_1

    #@45
    .line 490
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@47
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4a
    move-result-object v3

    #@4b
    check-cast v3, [B

    #@4d
    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@4f
    .line 491
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@51
    if-eqz v3, :cond_2

    #@53
    .line 492
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@55
    invoke-static {v3}, Lgov/nist/javax/sip/message/SIPMessage;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v3

    #@59
    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@5b
    .line 493
    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    #@5d
    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    #@5f
    .line 494
    return-object v2
.end method

.method public debugDump()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 504
    const-string/jumbo v6, ""

    #@3
    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->stringRepresentation:Ljava/lang/String;

    #@5
    .line 505
    const-string/jumbo v6, "SIPMessage:"

    #@8
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    #@b
    .line 506
    const-string/jumbo v6, "{"

    #@e
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    #@11
    .line 509
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getClass()Ljava/lang/Class;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@18
    move-result-object v4

    #@19
    .line 510
    .local v4, "fields":[Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    #@1a
    .local v5, "i":I
    :goto_0
    array-length v6, v4

    #@1b
    if-ge v5, v6, :cond_1

    #@1d
    .line 511
    aget-object v1, v4, v5

    #@1f
    .line 512
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@22
    move-result-object v3

    #@23
    .line 513
    .local v3, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 514
    .local v2, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    if-eqz v6, :cond_0

    #@2d
    const-class v6, Lgov/nist/javax/sip/header/SIPHeader;

    #@2f
    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_0

    #@35
    .line 515
    const-string/jumbo v6, "headers"

    #@38
    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_0

    #@3e
    .line 516
    new-instance v6, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    const-string/jumbo v7, "="

    #@4a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    #@55
    .line 517
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v6

    #@59
    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    #@5b
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/SIPHeader;->debugDump()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    .line 510
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@64
    goto :goto_0

    #@65
    .line 520
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v3    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    :catch_0
    move-exception v0

    #@66
    .line 521
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@69
    .line 524
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v6, "List of headers : "

    #@6c
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    #@6f
    .line 525
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@71
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toString()Ljava/lang/String;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    #@78
    .line 526
    const-string/jumbo v6, "messageContent = "

    #@7b
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    #@7e
    .line 527
    const-string/jumbo v6, "{"

    #@81
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    #@84
    .line 528
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@86
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    #@89
    .line 529
    const-string/jumbo v6, "}"

    #@8c
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    #@8f
    .line 530
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    #@92
    move-result-object v6

    #@93
    if-eqz v6, :cond_2

    #@95
    .line 531
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    #@98
    move-result-object v6

    #@99
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    #@a0
    .line 533
    :cond_2
    const-string/jumbo v6, "}"

    #@a3
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    #@a6
    .line 534
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->stringRepresentation:Ljava/lang/String;

    #@a8
    return-object v6
.end method

.method public encode()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    .line 361
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 362
    .local v2, "encoding":Ljava/lang/StringBuffer;
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@7
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v4

    #@b
    .line 364
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v9

    #@f
    if-eqz v9, :cond_1

    #@11
    .line 365
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v6

    #@15
    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    #@17
    .line 366
    .local v6, "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v9, v6, Lgov/nist/javax/sip/header/ContentLength;

    #@19
    if-nez v9, :cond_0

    #@1b
    .line 367
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    goto :goto_0

    #@23
    .line 371
    .end local v6    # "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    #@25
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v8

    #@29
    .local v8, "unrecognized$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v9

    #@2d
    if-eqz v9, :cond_2

    #@2f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v7

    #@33
    check-cast v7, Ljava/lang/String;

    #@35
    .line 372
    .local v7, "unrecognized":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    move-result-object v9

    #@39
    const-string/jumbo v10, "\r\n"

    #@3c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3f
    goto :goto_1

    #@40
    .line 375
    .end local v7    # "unrecognized":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@42
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/ContentLength;->encode()Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    move-result-object v9

    #@4a
    const-string/jumbo v10, "\r\n"

    #@4d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 377
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@52
    if-eqz v9, :cond_4

    #@54
    .line 378
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 380
    .local v5, "mbody":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    .line 397
    .end local v5    # "mbody":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    return-object v9

    #@64
    .line 381
    :cond_4
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@66
    if-nez v9, :cond_5

    #@68
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@6a
    if-eqz v9, :cond_3

    #@6c
    .line 383
    :cond_5
    const/4 v0, 0x0

    #@6d
    .line 385
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@6f
    if-eqz v9, :cond_6

    #@71
    .line 386
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@73
    .line 395
    .end local v0    # "content":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@76
    goto :goto_2

    #@77
    .line 389
    .restart local v0    # "content":Ljava/lang/String;
    :cond_6
    :try_start_1
    new-instance v1, Ljava/lang/String;

    #@79
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@7b
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    #@7e
    move-result-object v10

    #@7f
    invoke-direct {v1, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    #@82
    .local v1, "content":Ljava/lang/String;
    move-object v0, v1

    #@83
    .end local v1    # "content":Ljava/lang/String;
    .local v0, "content":Ljava/lang/String;
    goto :goto_3

    #@84
    .line 391
    .local v0, "content":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@85
    .line 392
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@88
    goto :goto_3
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .locals 12
    .param p1, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 409
    instance-of v9, p0, Lgov/nist/javax/sip/message/SIPRequest;

    #@3
    if-eqz v9, :cond_0

    #@5
    move-object v9, p0

    #@6
    check-cast v9, Lgov/nist/javax/sip/message/SIPRequest;

    #@8
    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    #@b
    move-result v9

    #@c
    if-eqz v9, :cond_0

    #@e
    .line 410
    const-string/jumbo v9, "\r\n\r\n"

    #@11
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    #@14
    move-result-object v9

    #@15
    return-object v9

    #@16
    .line 414
    :cond_0
    const-string/jumbo v9, "Via"

    #@19
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@1c
    move-result-object v8

    #@1d
    check-cast v8, Ljavax/sip/header/ViaHeader;

    #@1f
    .line 416
    .local v8, "topVia":Ljavax/sip/header/ViaHeader;
    :try_start_0
    invoke-interface {v8, p1}, Ljavax/sip/header/ViaHeader;->setTransport(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 421
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@27
    .line 422
    .local v2, "encoding":Ljava/lang/StringBuffer;
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@29
    monitor-enter v10

    #@2a
    .line 423
    :try_start_1
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@2c
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v4

    #@30
    .line 425
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v9

    #@34
    if-eqz v9, :cond_2

    #@36
    .line 426
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v7

    #@3a
    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    #@3c
    .line 427
    .local v7, "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v9, v7, Lgov/nist/javax/sip/header/ContentLength;

    #@3e
    if-nez v9, :cond_1

    #@40
    .line 428
    invoke-virtual {v7, v2}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_1

    #@44
    .line 422
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v7    # "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    :catchall_0
    move-exception v9

    #@45
    monitor-exit v10

    #@46
    throw v9

    #@47
    .line 417
    .end local v2    # "encoding":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    #@48
    .line 418
    .local v1, "e":Ljava/text/ParseException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@4b
    goto :goto_0

    #@4c
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v2    # "encoding":Ljava/lang/StringBuffer;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_2
    monitor-exit v10

    #@4d
    .line 432
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@4f
    invoke-virtual {v9, v2}, Lgov/nist/javax/sip/header/ContentLength;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@52
    .line 433
    const-string/jumbo v9, "\r\n"

    #@55
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    .line 435
    const/4 v6, 0x0

    #@59
    .line 436
    .local v6, "retval":[B
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getRawContent()[B

    #@5c
    move-result-object v0

    #@5d
    .line 437
    .local v0, "content":[B
    if-eqz v0, :cond_3

    #@5f
    .line 440
    const/4 v5, 0x0

    #@60
    .line 442
    .local v5, "msgarray":[B
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@63
    move-result-object v9

    #@64
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    #@67
    move-result-object v10

    #@68
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    #@6b
    move-result-object v5

    #@6c
    .line 447
    .end local v5    # "msgarray":[B
    :goto_2
    array-length v9, v5

    #@6d
    array-length v10, v0

    #@6e
    add-int/2addr v9, v10

    #@6f
    new-array v6, v9, [B

    #@71
    .line 448
    .local v6, "retval":[B
    array-length v9, v5

    #@72
    invoke-static {v5, v11, v6, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@75
    .line 449
    array-length v9, v5

    #@76
    array-length v10, v0

    #@77
    invoke-static {v0, v11, v6, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@7a
    .line 459
    .end local v6    # "retval":[B
    :goto_3
    return-object v6

    #@7b
    .line 443
    .restart local v5    # "msgarray":[B
    .local v6, "retval":[B
    :catch_1
    move-exception v3

    #@7c
    .line 444
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@7f
    goto :goto_2

    #@80
    .line 454
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "msgarray":[B
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@83
    move-result-object v9

    #@84
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    #@87
    move-result-object v10

    #@88
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    #@8b
    move-result-object v6

    #@8c
    .local v6, "retval":[B
    goto :goto_3

    #@8d
    .line 455
    .local v6, "retval":[B
    :catch_2
    move-exception v3

    #@8e
    .line 456
    .restart local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@91
    goto :goto_3
.end method

.method public abstract encodeMessage()Ljava/lang/String;
.end method

.method protected encodeSIPHeaders()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 239
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@7
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 241
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    #@17
    .line 243
    .local v2, "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v3, v2, Lgov/nist/javax/sip/header/ContentLength;

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 244
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@1e
    goto :goto_0

    #@1f
    .line 247
    .end local v2    # "siphdr":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@21
    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/ContentLength;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, "\r\n"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v5

    #@5
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v6

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-nez v5, :cond_0

    #@f
    .line 1600
    return v7

    #@10
    :cond_0
    move-object v3, p1

    #@11
    .line 1602
    check-cast v3, Lgov/nist/javax/sip/message/SIPMessage;

    #@13
    .line 1603
    .local v3, "otherMessage":Lgov/nist/javax/sip/message/SIPMessage;
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@15
    invoke-virtual {v5}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@18
    move-result-object v4

    #@19
    .line 1604
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .line 1605
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@1f
    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    #@22
    move-result v5

    #@23
    iget-object v6, v3, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@25
    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    #@28
    move-result v6

    #@29
    if-eq v5, v6, :cond_1

    #@2b
    .line 1606
    return v7

    #@2c
    .line 1609
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_3

    #@32
    .line 1610
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    #@38
    .line 1611
    .local v2, "mine":Lgov/nist/javax/sip/header/SIPHeader;
    iget-object v5, v3, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@3a
    .line 1612
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    .line 1611
    invoke-static {v6}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    #@48
    .line 1613
    .local v0, "his":Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v0, :cond_2

    #@4a
    .line 1614
    return v7

    #@4b
    .line 1615
    :cond_2
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v5

    #@4f
    if-nez v5, :cond_1

    #@51
    .line 1616
    return v7

    #@52
    .line 1619
    .end local v0    # "his":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v2    # "mine":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_3
    const/4 v5, 0x1

    #@53
    return v5
.end method

.method public getApplicationData()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1813
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->applicationData:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getAuthorization()Lgov/nist/javax/sip/header/Authorization;
    .locals 1

    #@0
    .prologue
    .line 1057
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->AUTHORIZATION_LOWERCASE:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/Authorization;

    #@8
    return-object v0
.end method

.method public getCSeq()Ljavax/sip/header/CSeqHeader;
    .locals 1

    #@0
    .prologue
    .line 1048
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@2
    return-object v0
.end method

.method public getCSeqHeader()Ljavax/sip/header/CSeqHeader;
    .locals 1

    #@0
    .prologue
    .line 1857
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@2
    return-object v0
.end method

.method public getCallId()Ljavax/sip/header/CallIdHeader;
    .locals 1

    #@0
    .prologue
    .line 1100
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@2
    return-object v0
.end method

.method public getCallIdHeader()Ljavax/sip/header/CallIdHeader;
    .locals 1

    #@0
    .prologue
    .line 1838
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@2
    return-object v0
.end method

.method protected final getCharset()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1864
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    #@3
    move-result-object v1

    #@4
    .line 1865
    .local v1, "ct":Lgov/nist/javax/sip/header/ContentType;
    if-eqz v1, :cond_1

    #@6
    .line 1866
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContentType;->getCharset()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1867
    .local v0, "c":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    .end local v0    # "c":Ljava/lang/String;
    :goto_0
    return-object v0

    #@d
    .restart local v0    # "c":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    #@f
    goto :goto_0

    #@10
    .line 1868
    .end local v0    # "c":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    #@12
    return-object v2
.end method

.method public getContactHeader()Lgov/nist/javax/sip/header/Contact;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 985
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    #@4
    move-result-object v0

    #@5
    .line 986
    .local v0, "clist":Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_0

    #@7
    .line 987
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lgov/nist/javax/sip/header/Contact;

    #@d
    return-object v1

    #@e
    .line 990
    :cond_0
    return-object v1
.end method

.method public getContactHeaders()Lgov/nist/javax/sip/header/ContactList;
    .locals 1

    #@0
    .prologue
    .line 974
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTACT_LOWERCASE:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/ContactList;

    #@8
    return-object v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1258
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1259
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@7
    return-object v0

    #@8
    .line 1260
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1261
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@e
    return-object v0

    #@f
    .line 1262
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 1263
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@15
    return-object v0

    #@16
    .line 1265
    :cond_2
    return-object v1
.end method

.method public getContentDisposition()Ljavax/sip/header/ContentDispositionHeader;
    .locals 1

    #@0
    .prologue
    .line 1628
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/sip/header/ContentDispositionHeader;

    #@8
    return-object v0
.end method

.method public getContentEncoding()Ljavax/sip/header/ContentEncodingHeader;
    .locals 1

    #@0
    .prologue
    .line 1640
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/sip/header/ContentEncodingHeader;

    #@8
    return-object v0
.end method

.method public getContentLanguage()Ljavax/sip/header/ContentLanguageHeader;
    .locals 1

    #@0
    .prologue
    .line 1652
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/sip/header/ContentLanguageHeader;

    #@8
    return-object v0
.end method

.method public getContentLength()Ljavax/sip/header/ContentLengthHeader;
    .locals 1

    #@0
    .prologue
    .line 1160
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@2
    return-object v0
.end method

.method public getContentLengthHeader()Ljavax/sip/header/ContentLengthHeader;
    .locals 1

    #@0
    .prologue
    .line 944
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;
    .locals 1

    #@0
    .prologue
    .line 933
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/ContentType;

    #@8
    return-object v0
.end method

.method public bridge synthetic getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
    .locals 1

    #@0
    .prologue
    .line 932
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract getDialogId(Z)Ljava/lang/String;
.end method

.method public getErrorInfoHeaders()Lgov/nist/javax/sip/header/ErrorInfoList;
    .locals 1

    #@0
    .prologue
    .line 963
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ERROR_LOWERCASE:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/ErrorInfoList;

    #@8
    return-object v0
.end method

.method public getExpires()Ljavax/sip/header/ExpiresHeader;
    .locals 1

    #@0
    .prologue
    .line 1664
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->EXPIRES_LOWERCASE:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/sip/header/ExpiresHeader;

    #@8
    return-object v0
.end method

.method public abstract getFirstLine()Ljava/lang/String;
.end method

.method public getFrom()Ljavax/sip/header/FromHeader;
    .locals 1

    #@0
    .prologue
    .line 954
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@2
    return-object v0
.end method

.method public getFromHeader()Ljavax/sip/header/FromHeader;
    .locals 1

    #@0
    .prologue
    .line 1843
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@2
    return-object v0
.end method

.method public getFromTag()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1477
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 913
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getHeaderAsFormattedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1409
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1410
    .local v0, "lowerCaseName":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1411
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    #@14
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeader;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 1413
    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@1c
    move-result-object v1

    #@1d
    invoke-interface {v1}, Ljavax/sip/header/Header;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public getHeaderNames()Ljava/util/ListIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1583
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@2
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 1584
    .local v0, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    new-instance v2, Ljava/util/LinkedList;

    #@8
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@b
    .line 1585
    .local v2, "retval":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 1586
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    #@17
    .line 1587
    .local v3, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 1588
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 1590
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    #@22
    move-result-object v4

    #@23
    return-object v4
.end method

.method public getHeaders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;
    .locals 3
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ListIterator",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1387
    if-nez p1, :cond_0

    #@2
    .line 1388
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null headerName"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1389
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@d
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    #@17
    .line 1392
    .local v0, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v0, :cond_1

    #@19
    .line 1393
    new-instance v1, Ljava/util/LinkedList;

    #@1b
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@1e
    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 1394
    :cond_1
    instance-of v1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 1395
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@29
    .end local v0    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    #@2c
    move-result-object v1

    #@2d
    return-object v1

    #@2e
    .line 1397
    .restart local v0    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2
    new-instance v1, Lgov/nist/javax/sip/message/HeaderIterator;

    #@30
    invoke-direct {v1, p0, v0}, Lgov/nist/javax/sip/message/HeaderIterator;-><init>(Lgov/nist/javax/sip/message/SIPMessage;Lgov/nist/javax/sip/header/SIPHeader;)V

    #@33
    return-object v1
.end method

.method public getMaxForwards()Ljavax/sip/header/MaxForwardsHeader;
    .locals 1

    #@0
    .prologue
    .line 1070
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    #@2
    return-object v0
.end method

.method public getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 217
    new-instance v1, Ljava/util/LinkedList;

    #@2
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 218
    .local v1, "retval":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@7
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 219
    .local v0, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    #@17
    .line 221
    .local v3, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v4, v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@19
    if-eqz v4, :cond_0

    #@1b
    move-object v2, v3

    #@1c
    .line 222
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@1e
    .line 223
    .local v2, "shl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->getHeadersAsEncodedStrings()Ljava/util/List;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    #@25
    goto :goto_0

    #@26
    .line 225
    .end local v2    # "shl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    :cond_0
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 229
    .end local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1
    return-object v1
.end method

.method public getMessageContent()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1174
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1175
    return-object v1

    #@a
    .line 1176
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1177
    new-instance v0, Ljava/lang/String;

    #@10
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@12
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@19
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@1b
    .line 1179
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@1d
    return-object v0
.end method

.method public getMultipartMimeContent()Lgov/nist/javax/sip/message/MultipartMimeContent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1821
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@3
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    .line 1822
    return-object v5

    #@a
    .line 1824
    :cond_0
    new-instance v3, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;

    #@c
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    #@f
    move-result-object v4

    #@10
    invoke-direct {v3, v4}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;-><init>(Ljavax/sip/header/ContentTypeHeader;)V

    #@13
    .line 1826
    .local v3, "retval":Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getRawContent()[B

    #@16
    move-result-object v2

    #@17
    .line 1828
    .local v2, "rawContent":[B
    :try_start_0
    new-instance v0, Ljava/lang/String;

    #@19
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@20
    .line 1829
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->createContentList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 1830
    return-object v3

    #@24
    .line 1831
    .end local v0    # "body":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@25
    .line 1832
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@28
    .line 1833
    return-object v5
.end method

.method public getRawContent()[B
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1191
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 1199
    :cond_0
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@7
    return-object v2

    #@8
    .line 1193
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@a
    if-eqz v2, :cond_2

    #@c
    .line 1194
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 1195
    .local v1, "messageContent":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    goto :goto_0

    #@1d
    .line 1200
    .end local v1    # "messageContent":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1e
    .line 1201
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@21
    .line 1202
    return-object v4

    #@22
    .line 1196
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@24
    if-eqz v2, :cond_0

    #@26
    .line 1197
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@28
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@2f
    move-result-object v2

    #@30
    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    #@32
    goto :goto_0
.end method

.method public getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;
    .locals 1

    #@0
    .prologue
    .line 1130
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->RECORDROUTE_LOWERCASE:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/RecordRouteList;

    #@8
    return-object v0
.end method

.method public getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;
    .locals 1

    #@0
    .prologue
    .line 1088
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ROUTE_LOWERCASE:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/RouteList;

    #@8
    return-object v0
.end method

.method public abstract getSIPVersion()Ljava/lang/String;
.end method

.method public getSize()I
    .locals 1

    #@0
    .prologue
    .line 1723
    iget v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->size:I

    #@2
    return v0
.end method

.method public getTo()Ljavax/sip/header/ToHeader;
    .locals 1

    #@0
    .prologue
    .line 1142
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    #@2
    return-object v0
.end method

.method public getToHeader()Ljavax/sip/header/ToHeader;
    .locals 1

    #@0
    .prologue
    .line 1848
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    #@2
    return-object v0
.end method

.method public getToTag()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1508
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getTopmostVia()Lgov/nist/javax/sip/header/Via;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1036
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1037
    return-object v1

    #@8
    .line 1039
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lgov/nist/javax/sip/header/Via;

    #@12
    return-object v0
.end method

.method public getTopmostViaHeader()Ljavax/sip/header/ViaHeader;
    .locals 1

    #@0
    .prologue
    .line 1853
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 830
    const/4 v4, 0x0

    #@1
    .line 831
    .local v4, "topVia":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@4
    move-result-object v5

    #@5
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ViaList;->isEmpty()Z

    #@8
    move-result v5

    #@9
    if-nez v5, :cond_0

    #@b
    .line 832
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@12
    move-result-object v4

    #@13
    .end local v4    # "topVia":Lgov/nist/javax/sip/header/Via;
    check-cast v4, Lgov/nist/javax/sip/header/Via;

    #@15
    .line 837
    :cond_0
    if-eqz v4, :cond_2

    #@17
    .line 838
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    if-eqz v5, :cond_2

    #@1d
    .line 839
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 840
    const-string/jumbo v6, "Z9HG4BK"

    #@28
    .line 839
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v5

    #@2c
    .line 837
    if-eqz v5, :cond_2

    #@2e
    .line 844
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@31
    move-result-object v5

    #@32
    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    const-string/jumbo v6, "CANCEL"

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_1

    #@3f
    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    const-string/jumbo v6, ":"

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@56
    move-result-object v6

    #@57
    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    return-object v5

    #@68
    .line 847
    :cond_1
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    return-object v5

    #@71
    .line 851
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    #@73
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@76
    .line 852
    .local v2, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    #@79
    move-result-object v1

    #@7a
    check-cast v1, Lgov/nist/javax/sip/header/From;

    #@7c
    .line 853
    .local v1, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    #@7f
    move-result-object v3

    #@80
    check-cast v3, Lgov/nist/javax/sip/header/To;

    #@82
    .line 856
    .local v3, "to":Lgov/nist/javax/sip/header/To;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->hasTag()Z

    #@85
    move-result v5

    #@86
    if-eqz v5, :cond_3

    #@88
    .line 857
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8f
    move-result-object v5

    #@90
    const-string/jumbo v6, "-"

    #@93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@96
    .line 860
    :cond_3
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@98
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    .line 861
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9f
    move-result-object v5

    #@a0
    const-string/jumbo v6, "-"

    #@a3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a6
    .line 862
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@a8
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/CSeq;->getSequenceNumber()I

    #@ab
    move-result v5

    #@ac
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@af
    move-result-object v5

    #@b0
    const-string/jumbo v6, "-"

    #@b3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b6
    move-result-object v5

    #@b7
    .line 863
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@b9
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    #@bc
    move-result-object v6

    #@bd
    .line 862
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c0
    .line 864
    if-eqz v4, :cond_4

    #@c2
    .line 865
    const-string/jumbo v5, "-"

    #@c5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c8
    move-result-object v5

    #@c9
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    #@cc
    move-result-object v6

    #@cd
    invoke-virtual {v6}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    #@d0
    move-result-object v6

    #@d1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d4
    .line 866
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    #@d7
    move-result-object v5

    #@d8
    invoke-virtual {v5}, Lgov/nist/core/HostPort;->hasPort()Z

    #@db
    move-result v5

    #@dc
    if-nez v5, :cond_4

    #@de
    .line 867
    const-string/jumbo v5, "-"

    #@e1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e4
    move-result-object v5

    #@e5
    const/16 v6, 0x13c4

    #@e7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@ea
    .line 870
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@ed
    move-result-object v5

    #@ee
    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@f1
    move-result-object v5

    #@f2
    const-string/jumbo v6, "CANCEL"

    #@f5
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v5

    #@f9
    if-eqz v5, :cond_5

    #@fb
    .line 871
    const-string/jumbo v5, "CANCEL"

    #@fe
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@101
    .line 873
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@109
    move-result-object v6

    #@10a
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@10d
    move-result-object v6

    #@10e
    const-string/jumbo v7, ":"

    #@111
    const-string/jumbo v8, "-"

    #@114
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@117
    move-result-object v6

    #@118
    const-string/jumbo v7, "@"

    #@11b
    const-string/jumbo v8, "-"

    #@11e
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@121
    move-result-object v6

    #@122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v5

    #@126
    .line 874
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getSignature()Ljava/lang/String;

    #@129
    move-result-object v6

    #@12a
    .line 873
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v5

    #@12e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v5

    #@132
    return-object v5
.end method

.method public getUnrecognizedHeaders()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1573
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getViaHeaders()Lgov/nist/javax/sip/header/ViaList;
    .locals 1

    #@0
    .prologue
    .line 1000
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->VIA_LOWERCASE:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/ViaList;

    #@8
    return-object v0
.end method

.method public hasContent()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 895
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasFromTag()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1458
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@7
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public hasHeader(Ljava/lang/String;)Z
    .locals 2
    .param p1, "headerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1449
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@2
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public hasToTag()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1467
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    #@7
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 884
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 885
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    .line 886
    const-string/jumbo v1, "Invalid message! Cannot compute hashcode! call-id header is missing !"

    #@9
    .line 885
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 888
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@f
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public isNullRequest()Z
    .locals 1

    #@0
    .prologue
    .line 1877
    iget-boolean v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nullRequest:Z

    #@2
    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 14
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 272
    if-nez p1, :cond_0

    #@4
    .line 273
    return v13

    #@5
    .line 274
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v10

    #@9
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v11

    #@d
    invoke-virtual {v10, v11}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v10

    #@11
    if-nez v10, :cond_1

    #@13
    .line 275
    return v12

    #@14
    :cond_1
    move-object v6, p1

    #@15
    .line 276
    check-cast v6, Lgov/nist/javax/sip/message/SIPMessage;

    #@17
    .line 277
    .local v6, "matchObj":Lgov/nist/javax/sip/message/SIPMessage;
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaders()Ljava/util/Iterator;

    #@1a
    move-result-object v5

    #@1b
    .line 278
    .local v5, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v10

    #@1f
    if-eqz v10, :cond_b

    #@21
    .line 279
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    #@27
    .line 280
    .local v2, "hisHeaders":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    #@2a
    move-result-object v10

    #@2b
    invoke-direct {p0, v10}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderList(Ljava/lang/String;)Ljava/util/List;

    #@2e
    move-result-object v8

    #@2f
    .line 283
    .local v8, "myHeaders":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    if-eqz v8, :cond_3

    #@31
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@34
    move-result v10

    #@35
    if-nez v10, :cond_4

    #@37
    .line 284
    :cond_3
    return v12

    #@38
    .line 286
    :cond_4
    instance-of v10, v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@3a
    if-eqz v10, :cond_8

    #@3c
    .line 287
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@3e
    .end local v2    # "hisHeaders":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    #@41
    move-result-object v9

    #@42
    .line 289
    .local v9, "outerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_5
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    #@45
    move-result v10

    #@46
    if-eqz v10, :cond_2

    #@48
    .line 290
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    #@4e
    .line 291
    .local v1, "hisHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v10, v1, Lgov/nist/javax/sip/header/ContentLength;

    #@50
    if-nez v10, :cond_5

    #@52
    .line 293
    invoke-interface {v8}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@55
    move-result-object v3

    #@56
    .line 294
    .local v3, "innerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v0, 0x0

    #@57
    .line 295
    .local v0, "found":Z
    :cond_6
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    #@5a
    move-result v10

    #@5b
    if-eqz v10, :cond_7

    #@5d
    .line 296
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v7

    #@61
    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    #@63
    .line 297
    .local v7, "myHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v7, v1}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    #@66
    move-result v10

    #@67
    if-eqz v10, :cond_6

    #@69
    .line 298
    const/4 v0, 0x1

    #@6a
    .line 302
    .end local v7    # "myHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_7
    if-nez v0, :cond_5

    #@6c
    .line 303
    return v12

    #@6d
    .line 306
    .end local v0    # "found":Z
    .end local v1    # "hisHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v3    # "innerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v9    # "outerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .restart local v2    # "hisHeaders":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_8
    move-object v1, v2

    #@6e
    .line 307
    .restart local v1    # "hisHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-interface {v8}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@71
    move-result-object v4

    #@72
    .line 308
    .local v4, "innerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    const/4 v0, 0x0

    #@73
    .line 309
    .restart local v0    # "found":Z
    :cond_9
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    #@76
    move-result v10

    #@77
    if-eqz v10, :cond_a

    #@79
    .line 310
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v7

    #@7d
    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    #@7f
    .line 311
    .restart local v7    # "myHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v7, v1}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    #@82
    move-result v10

    #@83
    if-eqz v10, :cond_9

    #@85
    .line 312
    const/4 v0, 0x1

    #@86
    .line 316
    .end local v7    # "myHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_a
    if-nez v0, :cond_2

    #@88
    .line 317
    return v12

    #@89
    .line 320
    .end local v0    # "found":Z
    .end local v1    # "hisHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v2    # "hisHeaders":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v4    # "innerIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v8    # "myHeaders":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_b
    return v13
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 11
    .param p1, "template"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v8

    #@4
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v9

    #@8
    invoke-virtual {v8, v9}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v8

    #@c
    if-nez v8, :cond_0

    #@e
    .line 332
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v9, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v10, "Bad class "

    #@18
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1f
    move-result-object v10

    #@20
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v9

    #@24
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v9

    #@28
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v8

    #@2c
    :cond_0
    move-object v7, p1

    #@2d
    .line 333
    check-cast v7, Lgov/nist/javax/sip/message/SIPMessage;

    #@2f
    .line 334
    .local v7, "templateMessage":Lgov/nist/javax/sip/message/SIPMessage;
    iget-object v8, v7, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@31
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray()[Ljava/lang/Object;

    #@34
    move-result-object v6

    #@35
    .line 335
    .local v6, "templateHeaders":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@36
    .local v2, "i":I
    :goto_0
    array-length v8, v6

    #@37
    if-ge v2, v8, :cond_3

    #@39
    .line 336
    aget-object v0, v6, v2

    #@3b
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    #@3d
    .line 337
    .local v0, "hdr":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 338
    .local v1, "hdrName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderList(Ljava/lang/String;)Ljava/util/List;

    #@44
    move-result-object v4

    #@45
    .line 339
    .local v4, "myHdrs":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    if-nez v4, :cond_2

    #@47
    .line 340
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V

    #@4a
    .line 335
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 342
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@50
    move-result-object v3

    #@51
    .line 343
    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    #@54
    move-result v8

    #@55
    if-eqz v8, :cond_1

    #@57
    .line 344
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v5

    #@5b
    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    #@5d
    .line 345
    .local v5, "sipHdr":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/header/SIPHeader;->merge(Ljava/lang/Object;)V

    #@60
    goto :goto_1

    #@61
    .line 330
    .end local v0    # "hdr":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v1    # "hdrName":Ljava/lang/String;
    .end local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v4    # "myHdrs":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v5    # "sipHdr":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_3
    return-void
.end method

.method public removeContent()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1370
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@3
    .line 1371
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@5
    .line 1372
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@7
    .line 1374
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1369
    :goto_0
    return-void

    #@e
    .line 1375
    :catch_0
    move-exception v0

    #@f
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    goto :goto_0
.end method

.method public removeFirst(Ljava/lang/String;)V
    .locals 2
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1767
    if-nez p1, :cond_0

    #@2
    .line 1768
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Null argument Provided!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1769
    :cond_0
    const/4 v0, 0x1

    #@c
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;Z)V

    #@f
    .line 1766
    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 6
    .param p1, "headerName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 781
    if-nez p1, :cond_0

    #@3
    .line 782
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v5, "null arg"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 783
    :cond_0
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 784
    .local v0, "headerNameLowerCase":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    #@18
    .line 786
    .local v2, "removed":Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v2, :cond_1

    #@1a
    .line 787
    return-void

    #@1b
    .line 790
    :cond_1
    instance-of v4, v2, Lgov/nist/javax/sip/header/From;

    #@1d
    if-eqz v4, :cond_4

    #@1f
    .line 791
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@21
    .line 804
    :cond_2
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@23
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v1

    #@27
    .line 805
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_9

    #@2d
    .line 806
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    #@33
    .line 807
    .local v3, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_3

    #@3d
    .line 808
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@40
    goto :goto_1

    #@41
    .line 792
    .end local v1    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_4
    instance-of v4, v2, Lgov/nist/javax/sip/header/To;

    #@43
    if-eqz v4, :cond_5

    #@45
    .line 793
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    #@47
    goto :goto_0

    #@48
    .line 794
    :cond_5
    instance-of v4, v2, Lgov/nist/javax/sip/header/CSeq;

    #@4a
    if-eqz v4, :cond_6

    #@4c
    .line 795
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@4e
    goto :goto_0

    #@4f
    .line 796
    :cond_6
    instance-of v4, v2, Lgov/nist/javax/sip/header/CallID;

    #@51
    if-eqz v4, :cond_7

    #@53
    .line 797
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@55
    goto :goto_0

    #@56
    .line 798
    :cond_7
    instance-of v4, v2, Lgov/nist/javax/sip/header/MaxForwards;

    #@58
    if-eqz v4, :cond_8

    #@5a
    .line 799
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    #@5c
    goto :goto_0

    #@5d
    .line 800
    :cond_8
    instance-of v4, v2, Lgov/nist/javax/sip/header/ContentLength;

    #@5f
    if-eqz v4, :cond_2

    #@61
    .line 801
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@63
    goto :goto_0

    #@64
    .line 779
    .restart local v1    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_9
    return-void
.end method

.method public removeHeader(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "top"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 725
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 726
    .local v1, "headerNameLowerCase":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v4

    #@b
    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    #@d
    .line 728
    .local v4, "toRemove":Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v4, :cond_0

    #@f
    .line 729
    return-void

    #@10
    .line 730
    :cond_0
    instance-of v5, v4, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@12
    if-eqz v5, :cond_5

    #@14
    move-object v0, v4

    #@15
    .line 731
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@17
    .line 732
    .local v0, "hdrList":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    if-eqz p2, :cond_2

    #@19
    .line 733
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->removeFirst()V

    #@1c
    .line 737
    :goto_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_4

    #@22
    .line 738
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@24
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v2

    #@28
    .line 739
    .local v2, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_3

    #@2e
    .line 740
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    #@34
    .line 741
    .local v3, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_1

    #@3e
    .line 742
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@41
    goto :goto_1

    #@42
    .line 735
    .end local v2    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->removeLast()V

    #@45
    goto :goto_0

    #@46
    .line 747
    .restart local v2    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_3
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@48
    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 723
    .end local v0    # "hdrList":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    .end local v2    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_4
    return-void

    #@4c
    .line 750
    :cond_5
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    #@4e
    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 751
    instance-of v5, v4, Lgov/nist/javax/sip/header/From;

    #@53
    if-eqz v5, :cond_8

    #@55
    .line 752
    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@57
    .line 764
    :cond_6
    :goto_2
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@59
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    #@5c
    move-result-object v2

    #@5d
    .line 765
    .restart local v2    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@60
    move-result v5

    #@61
    if-eqz v5, :cond_4

    #@63
    .line 766
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@66
    move-result-object v3

    #@67
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    #@69
    .line 767
    .restart local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@70
    move-result v5

    #@71
    if-eqz v5, :cond_7

    #@73
    .line 768
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@76
    goto :goto_3

    #@77
    .line 753
    .end local v2    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_8
    instance-of v5, v4, Lgov/nist/javax/sip/header/To;

    #@79
    if-eqz v5, :cond_9

    #@7b
    .line 754
    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    #@7d
    goto :goto_2

    #@7e
    .line 755
    :cond_9
    instance-of v5, v4, Lgov/nist/javax/sip/header/CSeq;

    #@80
    if-eqz v5, :cond_a

    #@82
    .line 756
    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@84
    goto :goto_2

    #@85
    .line 757
    :cond_a
    instance-of v5, v4, Lgov/nist/javax/sip/header/CallID;

    #@87
    if-eqz v5, :cond_b

    #@89
    .line 758
    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@8b
    goto :goto_2

    #@8c
    .line 759
    :cond_b
    instance-of v5, v4, Lgov/nist/javax/sip/header/MaxForwards;

    #@8e
    if-eqz v5, :cond_c

    #@90
    .line 760
    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    #@92
    goto :goto_2

    #@93
    .line 761
    :cond_c
    instance-of v5, v4, Lgov/nist/javax/sip/header/ContentLength;

    #@95
    if-eqz v5, :cond_6

    #@97
    .line 762
    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@99
    goto :goto_2
.end method

.method public removeLast(Ljava/lang/String;)V
    .locals 2
    .param p1, "headerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1779
    if-nez p1, :cond_0

    #@2
    .line 1780
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Null argument Provided!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1781
    :cond_0
    const/4 v0, 0x0

    #@c
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;Z)V

    #@f
    .line 1778
    return-void
.end method

.method public setApplicationData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "applicationData"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1804
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->applicationData:Ljava/lang/Object;

    #@2
    .line 1803
    return-void
.end method

.method public setCSeq(Ljavax/sip/header/CSeqHeader;)V
    .locals 0
    .param p1, "cseqHeader"    # Ljavax/sip/header/CSeqHeader;

    #@0
    .prologue
    .line 1792
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@3
    .line 1791
    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1118
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1119
    new-instance v0, Lgov/nist/javax/sip/header/CallID;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    #@9
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@c
    .line 1121
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@e
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V

    #@11
    .line 1117
    return-void
.end method

.method public setCallId(Ljavax/sip/header/CallIdHeader;)V
    .locals 0
    .param p1, "callId"    # Ljavax/sip/header/CallIdHeader;

    #@0
    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@3
    .line 1108
    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "contentTypeHeader"    # Ljavax/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1234
    if-nez p1, :cond_0

    #@3
    .line 1235
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "null content"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1236
    :cond_0
    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@f
    .line 1238
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@11
    .line 1239
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@13
    .line 1240
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@15
    .line 1242
    instance-of v0, p1, Ljava/lang/String;

    #@17
    if-eqz v0, :cond_1

    #@19
    move-object v0, p1

    #@1a
    .line 1243
    check-cast v0, Ljava/lang/String;

    #@1c
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@1e
    .line 1249
    :goto_0
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    #@21
    .line 1233
    return-void

    #@22
    .line 1244
    :cond_1
    instance-of v0, p1, [B

    #@24
    if-eqz v0, :cond_2

    #@26
    move-object v0, p1

    #@27
    .line 1245
    check-cast v0, [B

    #@29
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@2b
    goto :goto_0

    #@2c
    .line 1247
    :cond_2
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@2e
    goto :goto_0
.end method

.method public setContentDisposition(Ljavax/sip/header/ContentDispositionHeader;)V
    .locals 0
    .param p1, "contentDispositionHeader"    # Ljavax/sip/header/ContentDispositionHeader;

    #@0
    .prologue
    .line 1687
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@3
    .line 1686
    return-void
.end method

.method public setContentEncoding(Ljavax/sip/header/ContentEncodingHeader;)V
    .locals 0
    .param p1, "contentEncodingHeader"    # Ljavax/sip/header/ContentEncodingHeader;

    #@0
    .prologue
    .line 1692
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@3
    .line 1691
    return-void
.end method

.method public setContentLanguage(Ljavax/sip/header/ContentLanguageHeader;)V
    .locals 0
    .param p1, "contentLanguageHeader"    # Ljavax/sip/header/ContentLanguageHeader;

    #@0
    .prologue
    .line 1697
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@3
    .line 1696
    return-void
.end method

.method public setContentLength(Ljavax/sip/header/ContentLengthHeader;)V
    .locals 3
    .param p1, "contentLength"    # Ljavax/sip/header/ContentLengthHeader;

    #@0
    .prologue
    .line 1707
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@2
    invoke-interface {p1}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    #@5
    move-result v2

    #@6
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1705
    :goto_0
    return-void

    #@a
    .line 1708
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    goto :goto_0
.end method

.method public setExpires(Ljavax/sip/header/ExpiresHeader;)V
    .locals 0
    .param p1, "expiresHeader"    # Ljavax/sip/header/ExpiresHeader;

    #@0
    .prologue
    .line 1677
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@3
    .line 1676
    return-void
.end method

.method public setFrom(Ljavax/sip/header/FromHeader;)V
    .locals 0
    .param p1, "from"    # Ljavax/sip/header/FromHeader;

    #@0
    .prologue
    .line 1150
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@3
    .line 1149
    return-void
.end method

.method public setFromTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1487
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@2
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1485
    :goto_0
    return-void

    #@6
    .line 1488
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList",
            "<",
            "Lgov/nist/javax/sip/header/Via;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1027
    .local p1, "sipHeaderList":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/Via;>;"
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@3
    .line 1026
    return-void
.end method

.method public setHeader(Ljavax/sip/header/Header;)V
    .locals 6
    .param p1, "sipHeader"    # Ljavax/sip/header/Header;

    #@0
    .prologue
    move-object v2, p1

    #@1
    .line 579
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    #@3
    .line 580
    .local v2, "header":Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v2, :cond_0

    #@5
    .line 581
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v5, "null header!"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 583
    :cond_0
    :try_start_0
    instance-of v4, v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 584
    move-object v0, v2

    #@13
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@15
    move-object v3, v0

    #@16
    .line 586
    .local v3, "hl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 587
    return-void

    #@1d
    .line 589
    .end local v3    # "hl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    :cond_1
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;)V

    #@24
    .line 590
    const/4 v4, 0x1

    #@25
    const/4 v5, 0x0

    #@26
    invoke-virtual {p0, v2, v4, v5}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 578
    :goto_0
    return-void

    #@2a
    .line 591
    :catch_0
    move-exception v1

    #@2b
    .line 592
    .local v1, "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@2e
    goto :goto_0
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 602
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@3
    move-result-object v1

    #@4
    .line 603
    .local v1, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 604
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    #@10
    .line 606
    .local v2, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v3, 0x0

    #@11
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    goto :goto_0

    #@15
    .line 607
    :catch_0
    move-exception v0

    #@16
    .local v0, "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    goto :goto_0

    #@17
    .line 601
    .end local v0    # "ex":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    .end local v2    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_0
    return-void
.end method

.method public setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V
    .locals 0
    .param p1, "maxForwards"    # Ljavax/sip/header/MaxForwardsHeader;

    #@0
    .prologue
    .line 1079
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@3
    .line 1078
    return-void
.end method

.method public setMessageContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "messageContent"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1214
    if-nez p3, :cond_0

    #@3
    .line 1215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "messgeContent is null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 1216
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    #@e
    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 1217
    .local v0, "ct":Lgov/nist/javax/sip/header/ContentType;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@14
    .line 1218
    iput-object p3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@16
    .line 1219
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@18
    .line 1220
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@1a
    .line 1223
    invoke-direct {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    #@1d
    .line 1213
    return-void
.end method

.method public setMessageContent(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "messageContent"    # [B

    #@0
    .prologue
    .line 1276
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    #@2
    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 1277
    .local v0, "ct":Lgov/nist/javax/sip/header/ContentType;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@8
    .line 1278
    invoke-virtual {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent([B)V

    #@b
    .line 1280
    invoke-direct {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    #@e
    .line 1275
    return-void
.end method

.method public setMessageContent(Ljava/lang/String;ZZI)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .param p3, "computeContentLength"    # Z
    .param p4, "givenLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1292
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    #@4
    .line 1293
    if-nez p3, :cond_2

    #@6
    .line 1294
    if-nez p2, :cond_1

    #@8
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    #@d
    move-result v0

    #@e
    if-eq v0, p4, :cond_1

    #@10
    .line 1296
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Invalid content length "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 1297
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@20
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    #@23
    move-result v2

    #@24
    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 1297
    const-string/jumbo v2, " / "

    #@2b
    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 1297
    const/4 v2, 0x0

    #@38
    .line 1296
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@3b
    throw v0

    #@3c
    .line 1295
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@3e
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    #@41
    move-result v0

    #@42
    if-lt v0, p4, :cond_0

    #@44
    .line 1301
    :cond_2
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@46
    .line 1302
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@48
    .line 1303
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@4a
    .line 1289
    return-void
.end method

.method public setMessageContent([B)V
    .locals 1
    .param p1, "content"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1312
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    #@4
    .line 1314
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@6
    .line 1315
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@8
    .line 1316
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@a
    .line 1311
    return-void
.end method

.method public setMessageContent([BZI)V
    .locals 3
    .param p1, "content"    # [B
    .param p2, "computeContentLength"    # Z
    .param p3, "givenLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1327
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    #@4
    .line 1328
    if-nez p2, :cond_0

    #@6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    #@b
    move-result v0

    #@c
    if-ge v0, p3, :cond_0

    #@e
    .line 1330
    new-instance v0, Ljava/text/ParseException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Invalid content length "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 1331
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    #@1e
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    #@21
    move-result v2

    #@22
    .line 1330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 1331
    const-string/jumbo v2, " / "

    #@29
    .line 1330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    .line 1331
    const/4 v2, 0x0

    #@36
    .line 1330
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@39
    throw v0

    #@3a
    .line 1333
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    #@3c
    .line 1334
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    #@3e
    .line 1335
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    #@40
    .line 1326
    return-void
.end method

.method public setNullRequest()V
    .locals 1

    #@0
    .prologue
    .line 1885
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nullRequest:Z

    #@3
    .line 1884
    return-void
.end method

.method public abstract setSIPVersion(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1719
    iput p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->size:I

    #@2
    .line 1718
    return-void
.end method

.method public setTo(Ljavax/sip/header/ToHeader;)V
    .locals 0
    .param p1, "to"    # Ljavax/sip/header/ToHeader;

    #@0
    .prologue
    .line 1146
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    #@3
    .line 1145
    return-void
.end method

.method public setToTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1499
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    #@2
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1497
    :goto_0
    return-void

    #@6
    .line 1500
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public setVia(Ljava/util/List;)V
    .locals 4
    .param p1, "viaList"    # Ljava/util/List;

    #@0
    .prologue
    .line 1011
    new-instance v1, Lgov/nist/javax/sip/header/ViaList;

    #@2
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ViaList;-><init>()V

    #@5
    .line 1012
    .local v1, "vList":Lgov/nist/javax/sip/header/ViaList;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@8
    move-result-object v0

    #@9
    .line 1013
    .local v0, "it":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 1014
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lgov/nist/javax/sip/header/Via;

    #@15
    .line 1015
    .local v2, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/ViaList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@18
    goto :goto_0

    #@19
    .line 1017
    .end local v2    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V

    #@1c
    .line 1010
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
