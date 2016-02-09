.class public Lgov/nist/javax/sip/message/MessageFactoryImpl;
.super Ljava/lang/Object;
.source "MessageFactoryImpl.java"

# interfaces
.implements Ljavax/sip/message/MessageFactory;
.implements Lgov/nist/javax/sip/message/MessageFactoryExt;


# static fields
.field private static defaultContentEncodingCharset:Ljava/lang/String;

.field private static server:Ljavax/sip/header/ServerHeader;

.field private static userAgent:Ljavax/sip/header/UserAgentHeader;


# instance fields
.field private strict:Z

.field private testing:Z


# direct methods
.method static synthetic -get0(Lgov/nist/javax/sip/message/MessageFactoryImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "UTF-8"

    #@3
    sput-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    #@5
    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    #@6
    .line 57
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    #@9
    .line 89
    return-void
.end method

.method public static getDefaultContentEncodingCharset()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 827
    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static getDefaultServerHeader()Ljavax/sip/header/ServerHeader;
    .locals 1

    #@0
    .prologue
    .line 811
    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    #@2
    return-object v0
.end method

.method public static getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;
    .locals 1

    #@0
    .prologue
    .line 801
    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@2
    return-object v0
.end method


# virtual methods
.method public createMultipartMimeContent(Ljavax/sip/header/ContentTypeHeader;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lgov/nist/javax/sip/message/MultipartMimeContent;
    .locals 7
    .param p1, "multipartMimeCth"    # Ljavax/sip/header/ContentTypeHeader;
    .param p2, "contentType"    # [Ljava/lang/String;
    .param p3, "contentSubtype"    # [Ljava/lang/String;
    .param p4, "contentBody"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 835
    const-string/jumbo v5, "boundary"

    #@3
    invoke-interface {p1, v5}, Ljavax/sip/header/ContentTypeHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 836
    .local v0, "boundary":Ljava/lang/String;
    new-instance v4, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;

    #@9
    invoke-direct {v4, p1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;-><init>(Ljavax/sip/header/ContentTypeHeader;)V

    #@c
    .line 837
    .local v4, "retval":Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    array-length v5, p2

    #@e
    if-ge v3, v5, :cond_0

    #@10
    .line 838
    new-instance v2, Lgov/nist/javax/sip/header/ContentType;

    #@12
    aget-object v5, p2, v3

    #@14
    aget-object v6, p3, v3

    #@16
    invoke-direct {v2, v5, v6}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 839
    .local v2, "cth":Ljavax/sip/header/ContentTypeHeader;
    new-instance v1, Lgov/nist/javax/sip/message/ContentImpl;

    #@1b
    aget-object v5, p4, v3

    #@1d
    invoke-direct {v1, v5, v0}, Lgov/nist/javax/sip/message/ContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 840
    .local v1, "contentImpl":Lgov/nist/javax/sip/message/ContentImpl;
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/ContentImpl;->setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V

    #@23
    .line 841
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->add(Lgov/nist/javax/sip/message/Content;)Z

    #@26
    .line 837
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 843
    .end local v1    # "contentImpl":Lgov/nist/javax/sip/message/ContentImpl;
    .end local v2    # "cth":Ljavax/sip/header/ContentTypeHeader;
    :cond_0
    return-object v4
.end method

.method public createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 6
    .param p1, "requestString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 693
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v4, ""

    #@5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 694
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/message/SIPRequest;

    #@d
    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@10
    .line 695
    .local v1, "retval":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->setNullRequest()V

    #@13
    .line 696
    return-object v1

    #@14
    .line 699
    .end local v1    # "retval":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_1
    new-instance v3, Lgov/nist/javax/sip/parser/StringMsgParser;

    #@16
    invoke-direct {v3}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    #@19
    .line 700
    .local v3, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    iget-boolean v4, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    #@1b
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/StringMsgParser;->setStrict(Z)V

    #@1e
    .line 706
    new-instance v0, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;

    #@20
    invoke-direct {v0, p0}, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;-><init>(Lgov/nist/javax/sip/message/MessageFactoryImpl;)V

    #@23
    .line 732
    .local v0, "parseExceptionListener":Lgov/nist/javax/sip/parser/ParseExceptionListener;
    iget-boolean v4, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 733
    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/parser/StringMsgParser;->setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V

    #@2a
    .line 735
    :cond_2
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    #@2d
    move-result-object v2

    #@2e
    .line 737
    .local v2, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    instance-of v4, v2, Lgov/nist/javax/sip/message/SIPRequest;

    #@30
    if-nez v4, :cond_3

    #@32
    .line 738
    new-instance v4, Ljava/text/ParseException;

    #@34
    const/4 v5, 0x0

    #@35
    invoke-direct {v4, p1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@38
    throw v4

    #@39
    .line 740
    :cond_3
    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    #@3b
    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    return-object v2
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;
    .locals 4
    .param p1, "requestURI"    # Ljavax/sip/address/URI;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "callId"    # Ljavax/sip/header/CallIdHeader;
    .param p4, "cSeq"    # Ljavax/sip/header/CSeqHeader;
    .param p5, "from"    # Ljavax/sip/header/FromHeader;
    .param p6, "to"    # Ljavax/sip/header/ToHeader;
    .param p7, "via"    # Ljava/util/List;
    .param p8, "maxForwards"    # Ljavax/sip/header/MaxForwardsHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 237
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    #@6
    .line 238
    const-string/jumbo v2, "JAIN-SIP Exception, some parameters are missing, unable to create the request"

    #@9
    .line 239
    const/4 v3, 0x0

    #@a
    .line 237
    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@d
    throw v1

    #@e
    .line 234
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 235
    if-eqz p4, :cond_0

    #@12
    if-eqz p5, :cond_0

    #@14
    if-eqz p6, :cond_0

    #@16
    if-eqz p7, :cond_0

    #@18
    .line 236
    if-eqz p8, :cond_0

    #@1a
    .line 241
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@1c
    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@1f
    .line 242
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    #@22
    .line 243
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    #@25
    .line 244
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    #@28
    .line 245
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    #@2b
    .line 246
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    #@2e
    .line 247
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    #@31
    .line 248
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    #@34
    .line 249
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    #@37
    .line 250
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@39
    if-eqz v1, :cond_2

    #@3b
    .line 251
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@3d
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@40
    .line 254
    :cond_2
    return-object v0
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Request;
    .locals 3
    .param p1, "requestURI"    # Ljavax/sip/address/URI;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "callId"    # Ljavax/sip/header/CallIdHeader;
    .param p4, "cSeq"    # Ljavax/sip/header/CSeqHeader;
    .param p5, "from"    # Ljavax/sip/header/FromHeader;
    .param p6, "to"    # Ljavax/sip/header/ToHeader;
    .param p7, "via"    # Ljava/util/List;
    .param p8, "maxForwards"    # Ljavax/sip/header/MaxForwardsHeader;
    .param p9, "contentType"    # Ljavax/sip/header/ContentTypeHeader;
    .param p10, "content"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 130
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "Null parameters"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 126
    :cond_1
    if-eqz p3, :cond_0

    #@f
    .line 127
    if-eqz p4, :cond_0

    #@11
    if-eqz p5, :cond_0

    #@13
    if-eqz p6, :cond_0

    #@15
    if-eqz p7, :cond_0

    #@17
    .line 128
    if-eqz p8, :cond_0

    #@19
    if-eqz p10, :cond_0

    #@1b
    .line 129
    if-eqz p9, :cond_0

    #@1d
    .line 132
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@1f
    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@22
    .line 133
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    #@25
    .line 134
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    #@28
    .line 135
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    #@2b
    .line 136
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    #@2e
    .line 137
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    #@31
    .line 138
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    #@34
    .line 139
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    #@37
    .line 140
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    #@3a
    .line 141
    invoke-virtual {v0, p10, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    #@3d
    .line 142
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@3f
    if-eqz v1, :cond_2

    #@41
    .line 143
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@43
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@46
    .line 146
    :cond_2
    return-object v0
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Request;
    .locals 3
    .param p1, "requestURI"    # Ljavax/sip/address/URI;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "callId"    # Ljavax/sip/header/CallIdHeader;
    .param p4, "cSeq"    # Ljavax/sip/header/CSeqHeader;
    .param p5, "from"    # Ljavax/sip/header/FromHeader;
    .param p6, "to"    # Ljavax/sip/header/ToHeader;
    .param p7, "via"    # Ljava/util/List;
    .param p8, "maxForwards"    # Ljavax/sip/header/MaxForwardsHeader;
    .param p9, "contentType"    # Ljavax/sip/header/ContentTypeHeader;
    .param p10, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 549
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 553
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "missing parameters"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 549
    :cond_1
    if-eqz p3, :cond_0

    #@f
    .line 550
    if-eqz p4, :cond_0

    #@11
    if-eqz p5, :cond_0

    #@13
    if-eqz p6, :cond_0

    #@15
    if-eqz p7, :cond_0

    #@17
    .line 551
    if-eqz p8, :cond_0

    #@19
    if-eqz p10, :cond_0

    #@1b
    .line 552
    if-eqz p9, :cond_0

    #@1d
    .line 555
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@1f
    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@22
    .line 556
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    #@25
    .line 557
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    #@28
    .line 558
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    #@2b
    .line 559
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    #@2e
    .line 560
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    #@31
    .line 561
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    #@34
    .line 562
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    #@37
    .line 563
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    #@3a
    .line 564
    invoke-virtual {v0, p10, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    #@3d
    .line 565
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@3f
    if-eqz v1, :cond_2

    #@41
    .line 566
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@43
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@46
    .line 568
    :cond_2
    return-object v0
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;[BLjavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Request;
    .locals 4
    .param p1, "requestURI"    # Ljavax/sip/address/URI;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "callId"    # Ljavax/sip/header/CallIdHeader;
    .param p4, "cSeq"    # Ljavax/sip/header/CSeqHeader;
    .param p5, "from"    # Ljavax/sip/header/FromHeader;
    .param p6, "to"    # Ljavax/sip/header/ToHeader;
    .param p7, "via"    # Ljava/util/List;
    .param p8, "maxForwards"    # Ljavax/sip/header/MaxForwardsHeader;
    .param p9, "content"    # [B
    .param p10, "contentType"    # Ljavax/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 186
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    #@6
    .line 187
    const-string/jumbo v2, "JAIN-SIP Exception, some parameters are missing, unable to create the request"

    #@9
    .line 188
    const/4 v3, 0x0

    #@a
    .line 186
    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@d
    throw v1

    #@e
    .line 182
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 183
    if-eqz p4, :cond_0

    #@12
    if-eqz p5, :cond_0

    #@14
    if-eqz p6, :cond_0

    #@16
    if-eqz p7, :cond_0

    #@18
    .line 184
    if-eqz p8, :cond_0

    #@1a
    if-eqz p9, :cond_0

    #@1c
    .line 185
    if-eqz p10, :cond_0

    #@1e
    .line 190
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@20
    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@23
    .line 191
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    #@26
    .line 192
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    #@29
    .line 193
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    #@2c
    .line 194
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    #@2f
    .line 195
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    #@32
    .line 196
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    #@35
    .line 197
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    #@38
    .line 198
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    #@3b
    .line 199
    check-cast p10, Lgov/nist/javax/sip/header/ContentType;

    #@3d
    .end local p10    # "contentType":Ljavax/sip/header/ContentTypeHeader;
    invoke-virtual {v0, p10}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@40
    .line 200
    invoke-virtual {v0, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setMessageContent([B)V

    #@43
    .line 201
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@45
    if-eqz v1, :cond_2

    #@47
    .line 202
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@49
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@4c
    .line 204
    :cond_2
    return-object v0
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Response;
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "callId"    # Ljavax/sip/header/CallIdHeader;
    .param p3, "cSeq"    # Ljavax/sip/header/CSeqHeader;
    .param p4, "from"    # Ljavax/sip/header/FromHeader;
    .param p5, "to"    # Ljavax/sip/header/ToHeader;
    .param p6, "via"    # Ljava/util/List;
    .param p7, "maxForwards"    # Ljavax/sip/header/MaxForwardsHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 395
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    #@6
    .line 396
    const-string/jumbo v2, "JAIN-SIP Exception, some parameters are missing, unable to create the response"

    #@9
    .line 397
    const/4 v3, 0x0

    #@a
    .line 395
    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@d
    throw v1

    #@e
    .line 393
    :cond_1
    if-eqz p4, :cond_0

    #@10
    if-eqz p5, :cond_0

    #@12
    .line 394
    if-eqz p6, :cond_0

    #@14
    if-eqz p7, :cond_0

    #@16
    .line 399
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@18
    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    #@1b
    .line 400
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V

    #@1e
    .line 401
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    #@21
    .line 402
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    #@24
    .line 403
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    #@27
    .line 404
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    #@2a
    .line 405
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    #@2d
    .line 406
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    #@30
    .line 407
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@32
    if-eqz v1, :cond_2

    #@34
    .line 408
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@36
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@39
    .line 410
    :cond_2
    return-object v0
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Response;
    .locals 5
    .param p1, "statusCode"    # I
    .param p2, "callId"    # Ljavax/sip/header/CallIdHeader;
    .param p3, "cSeq"    # Ljavax/sip/header/CSeqHeader;
    .param p4, "from"    # Ljavax/sip/header/FromHeader;
    .param p5, "to"    # Ljavax/sip/header/ToHeader;
    .param p6, "via"    # Ljava/util/List;
    .param p7, "maxForwards"    # Ljavax/sip/header/MaxForwardsHeader;
    .param p8, "content"    # Ljava/lang/Object;
    .param p9, "contentType"    # Ljavax/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 293
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v4, " unable to create the response"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 290
    :cond_1
    if-eqz p4, :cond_0

    #@f
    if-eqz p5, :cond_0

    #@11
    .line 291
    if-eqz p6, :cond_0

    #@13
    if-eqz p7, :cond_0

    #@15
    if-eqz p8, :cond_0

    #@17
    .line 292
    if-eqz p9, :cond_0

    #@19
    .line 295
    new-instance v1, Lgov/nist/javax/sip/message/SIPResponse;

    #@1b
    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    #@1e
    .line 296
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v2, Lgov/nist/javax/sip/header/StatusLine;

    #@20
    invoke-direct {v2}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    #@23
    .line 297
    .local v2, "statusLine":Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    #@26
    .line 298
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 301
    .local v0, "reasonPhrase":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    #@2d
    .line 302
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    #@30
    .line 303
    invoke-virtual {v1, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    #@33
    .line 304
    invoke-virtual {v1, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    #@36
    .line 305
    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    #@39
    .line 306
    invoke-virtual {v1, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    #@3c
    .line 307
    invoke-virtual {v1, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    #@3f
    .line 308
    invoke-virtual {v1, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    #@42
    .line 309
    invoke-virtual {v1, p8, p9}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    #@45
    .line 310
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@47
    if-eqz v3, :cond_2

    #@49
    .line 311
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@4b
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@4e
    .line 313
    :cond_2
    return-object v1
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Response;
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "callId"    # Ljavax/sip/header/CallIdHeader;
    .param p3, "cSeq"    # Ljavax/sip/header/CSeqHeader;
    .param p4, "from"    # Ljavax/sip/header/FromHeader;
    .param p5, "to"    # Ljavax/sip/header/ToHeader;
    .param p6, "via"    # Ljava/util/List;
    .param p7, "maxForwards"    # Ljavax/sip/header/MaxForwardsHeader;
    .param p8, "contentType"    # Ljavax/sip/header/ContentTypeHeader;
    .param p9, "content"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 602
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 605
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v4, "missing parameters"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 602
    :cond_1
    if-eqz p4, :cond_0

    #@f
    if-eqz p5, :cond_0

    #@11
    .line 603
    if-eqz p6, :cond_0

    #@13
    if-eqz p7, :cond_0

    #@15
    if-eqz p9, :cond_0

    #@17
    .line 604
    if-eqz p8, :cond_0

    #@19
    .line 606
    new-instance v1, Lgov/nist/javax/sip/message/SIPResponse;

    #@1b
    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    #@1e
    .line 607
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v2, Lgov/nist/javax/sip/header/StatusLine;

    #@20
    invoke-direct {v2}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    #@23
    .line 608
    .local v2, "statusLine":Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    #@26
    .line 609
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 610
    .local v0, "reason":Ljava/lang/String;
    if-nez v0, :cond_2

    #@2c
    .line 611
    new-instance v3, Ljava/text/ParseException;

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, " Unknown"

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    const/4 v5, 0x0

    #@43
    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@46
    throw v3

    #@47
    .line 612
    :cond_2
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    #@4a
    .line 613
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    #@4d
    .line 614
    invoke-virtual {v1, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    #@50
    .line 615
    invoke-virtual {v1, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    #@53
    .line 616
    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    #@56
    .line 617
    invoke-virtual {v1, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    #@59
    .line 618
    invoke-virtual {v1, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    #@5c
    .line 619
    invoke-virtual {v1, p9, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    #@5f
    .line 620
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@61
    if-eqz v3, :cond_3

    #@63
    .line 621
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@65
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@68
    .line 623
    :cond_3
    return-object v1
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Response;
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "callId"    # Ljavax/sip/header/CallIdHeader;
    .param p3, "cSeq"    # Ljavax/sip/header/CSeqHeader;
    .param p4, "from"    # Ljavax/sip/header/FromHeader;
    .param p5, "to"    # Ljavax/sip/header/ToHeader;
    .param p6, "via"    # Ljava/util/List;
    .param p7, "maxForwards"    # Ljavax/sip/header/MaxForwardsHeader;
    .param p8, "contentType"    # Ljavax/sip/header/ContentTypeHeader;
    .param p9, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 658
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 661
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v4, "missing parameters"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 658
    :cond_1
    if-eqz p4, :cond_0

    #@f
    if-eqz p5, :cond_0

    #@11
    .line 659
    if-eqz p6, :cond_0

    #@13
    if-eqz p7, :cond_0

    #@15
    if-eqz p9, :cond_0

    #@17
    .line 660
    if-eqz p8, :cond_0

    #@19
    .line 662
    new-instance v1, Lgov/nist/javax/sip/message/SIPResponse;

    #@1b
    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    #@1e
    .line 663
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v2, Lgov/nist/javax/sip/header/StatusLine;

    #@20
    invoke-direct {v2}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    #@23
    .line 664
    .local v2, "statusLine":Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    #@26
    .line 665
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 666
    .local v0, "reason":Ljava/lang/String;
    if-nez v0, :cond_2

    #@2c
    .line 667
    new-instance v3, Ljava/text/ParseException;

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, " : Unknown"

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    const/4 v5, 0x0

    #@43
    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@46
    throw v3

    #@47
    .line 668
    :cond_2
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    #@4a
    .line 669
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    #@4d
    .line 670
    invoke-virtual {v1, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    #@50
    .line 671
    invoke-virtual {v1, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    #@53
    .line 672
    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    #@56
    .line 673
    invoke-virtual {v1, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    #@59
    .line 674
    invoke-virtual {v1, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    #@5c
    .line 675
    invoke-virtual {v1, p9, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    #@5f
    .line 676
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@61
    if-eqz v3, :cond_3

    #@63
    .line 677
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@65
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@68
    .line 679
    :cond_3
    return-object v1
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;[BLjavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Response;
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "callId"    # Ljavax/sip/header/CallIdHeader;
    .param p3, "cSeq"    # Ljavax/sip/header/CSeqHeader;
    .param p4, "from"    # Ljavax/sip/header/FromHeader;
    .param p5, "to"    # Ljavax/sip/header/ToHeader;
    .param p6, "via"    # Ljava/util/List;
    .param p7, "maxForwards"    # Ljavax/sip/header/MaxForwardsHeader;
    .param p8, "content"    # [B
    .param p9, "contentType"    # Ljavax/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 350
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "Null params "

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 347
    :cond_1
    if-eqz p4, :cond_0

    #@f
    if-eqz p5, :cond_0

    #@11
    .line 348
    if-eqz p6, :cond_0

    #@13
    if-eqz p7, :cond_0

    #@15
    if-eqz p8, :cond_0

    #@17
    .line 349
    if-eqz p9, :cond_0

    #@19
    .line 352
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@1b
    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    #@1e
    .line 353
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V

    #@21
    .line 354
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    #@24
    .line 355
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    #@27
    .line 356
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    #@2a
    .line 357
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    #@2d
    .line 358
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    #@30
    .line 359
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    #@33
    .line 360
    check-cast p9, Lgov/nist/javax/sip/header/ContentType;

    #@35
    .end local p9    # "contentType":Ljavax/sip/header/ContentTypeHeader;
    invoke-virtual {v0, p9}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@38
    .line 361
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setMessageContent([B)V

    #@3b
    .line 362
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@3d
    if-eqz v1, :cond_2

    #@3f
    .line 363
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@41
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@44
    .line 365
    :cond_2
    return-object v0
.end method

.method public createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    if-nez p2, :cond_0

    #@2
    .line 498
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "null parameters"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    :cond_0
    move-object v0, p2

    #@c
    .line 503
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@e
    .line 504
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@11
    move-result-object v1

    #@12
    .line 507
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->removeContent()V

    #@15
    .line 508
    const-string/jumbo v2, "Content-Type"

    #@18
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->removeHeader(Ljava/lang/String;)V

    #@1b
    .line 509
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 510
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    #@21
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@24
    .line 512
    :cond_1
    return-object v1
.end method

.method public createResponse(ILjavax/sip/message/Request;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Response;
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "request"    # Ljavax/sip/message/Request;
    .param p3, "contentType"    # Ljavax/sip/header/ContentTypeHeader;
    .param p4, "content"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 436
    if-eqz p2, :cond_0

    #@2
    if-nez p4, :cond_1

    #@4
    .line 437
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v3, "null parameters"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 436
    :cond_1
    if-eqz p3, :cond_0

    #@f
    move-object v0, p2

    #@10
    .line 439
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@12
    .line 440
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@15
    move-result-object v1

    #@16
    .line 441
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v1, p4, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    #@19
    .line 442
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 443
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    #@1f
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@22
    .line 445
    :cond_2
    return-object v1
.end method

.method public createResponse(ILjavax/sip/message/Request;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Response;
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "request"    # Ljavax/sip/message/Request;
    .param p3, "contentType"    # Ljavax/sip/header/ContentTypeHeader;
    .param p4, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 469
    if-eqz p2, :cond_0

    #@2
    if-nez p4, :cond_1

    #@4
    .line 470
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v3, "null Parameters"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 469
    :cond_1
    if-eqz p3, :cond_0

    #@f
    move-object v0, p2

    #@10
    .line 472
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@12
    .line 473
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@15
    move-result-object v1

    #@16
    .line 474
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    check-cast p3, Lgov/nist/javax/sip/header/ContentType;

    #@18
    .end local p3    # "contentType":Ljavax/sip/header/ContentTypeHeader;
    invoke-virtual {v1, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@1b
    .line 475
    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setMessageContent([B)V

    #@1e
    .line 476
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 477
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    #@24
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@27
    .line 479
    :cond_2
    return-object v1
.end method

.method public createResponse(Ljava/lang/String;)Ljavax/sip/message/Response;
    .locals 4
    .param p1, "responseString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 753
    if-nez p1, :cond_0

    #@2
    .line 754
    new-instance v2, Lgov/nist/javax/sip/message/SIPResponse;

    #@4
    invoke-direct {v2}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    #@7
    return-object v2

    #@8
    .line 756
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    #@a
    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    #@d
    .line 758
    .local v1, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    #@10
    move-result-object v0

    #@11
    .line 760
    .local v0, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    instance-of v2, v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@13
    if-nez v2, :cond_1

    #@15
    .line 761
    new-instance v2, Ljava/text/ParseException;

    #@17
    const/4 v3, 0x0

    #@18
    invoke-direct {v2, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1b
    throw v2

    #@1c
    .line 763
    :cond_1
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@1e
    .end local v0    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    return-object v0
.end method

.method public setDefaultContentEncodingCharset(Ljava/lang/String;)V
    .locals 2
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 821
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Null argument!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 822
    :cond_0
    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    #@d
    .line 820
    return-void
.end method

.method public setDefaultServerHeader(Ljavax/sip/header/ServerHeader;)V
    .locals 0
    .param p1, "server"    # Ljavax/sip/header/ServerHeader;

    #@0
    .prologue
    .line 791
    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    #@2
    .line 790
    return-void
.end method

.method public setDefaultUserAgentHeader(Ljavax/sip/header/UserAgentHeader;)V
    .locals 0
    .param p1, "userAgent"    # Ljavax/sip/header/UserAgentHeader;

    #@0
    .prologue
    .line 777
    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    #@2
    .line 776
    return-void
.end method

.method public setStrict(Z)V
    .locals 0
    .param p1, "strict"    # Z

    #@0
    .prologue
    .line 74
    iput-boolean p1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    #@2
    .line 73
    return-void
.end method

.method public setTest(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 83
    iput-boolean p1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    #@2
    .line 82
    return-void
.end method
