.class public Lgov/nist/javax/sip/message/MessageFactoryImpl;
.super Ljava/lang/Object;
.source "MessageFactoryImpl.java"

# interfaces
.implements Ljavax/sip/message/MessageFactory;
.implements Lgov/nist/javax/sip/message/MessageFactoryExt;


# static fields
.field private static greylist defaultContentEncodingCharset:Ljava/lang/String;

.field private static greylist server:Ljavax/sip/header/ServerHeader;

.field private static greylist userAgent:Ljavax/sip/header/UserAgentHeader;


# instance fields
.field private greylist strict:Z

.field private greylist testing:Z


# direct methods
.method static bridge synthetic greylist -$$Nest$fgettesting(Lgov/nist/javax/sip/message/MessageFactoryImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    return p0
.end method

.method static constructor greylist <clinit>()V
    .registers 1

    .line 59
    const-string v0, "UTF-8"

    sput-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    .line 90
    return-void
.end method

.method public static greylist getDefaultContentEncodingCharset()Ljava/lang/String;
    .registers 1

    .line 827
    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    return-object v0
.end method

.method public static greylist getDefaultServerHeader()Ljavax/sip/header/ServerHeader;
    .registers 1

    .line 811
    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    return-object v0
.end method

.method public static greylist getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;
    .registers 1

    .line 801
    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    return-object v0
.end method


# virtual methods
.method public greylist createMultipartMimeContent(Ljavax/sip/header/ContentTypeHeader;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lgov/nist/javax/sip/message/MultipartMimeContent;
    .registers 11
    .param p1, "multipartMimeCth"    # Ljavax/sip/header/ContentTypeHeader;
    .param p2, "contentType"    # [Ljava/lang/String;
    .param p3, "contentSubtype"    # [Ljava/lang/String;
    .param p4, "contentBody"    # [Ljava/lang/String;

    .line 835
    const-string v0, "boundary"

    invoke-interface {p1, v0}, Ljavax/sip/header/ContentTypeHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;

    invoke-direct {v1, p1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;-><init>(Ljavax/sip/header/ContentTypeHeader;)V

    .line 837
    .local v1, "retval":Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, p2

    if-ge v2, v3, :cond_28

    .line 838
    new-instance v3, Lgov/nist/javax/sip/header/ContentType;

    aget-object v4, p2, v2

    aget-object v5, p3, v2

    invoke-direct {v3, v4, v5}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .local v3, "cth":Ljavax/sip/header/ContentTypeHeader;
    new-instance v4, Lgov/nist/javax/sip/message/ContentImpl;

    aget-object v5, p4, v2

    invoke-direct {v4, v5, v0}, Lgov/nist/javax/sip/message/ContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .local v4, "contentImpl":Lgov/nist/javax/sip/message/ContentImpl;
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/message/ContentImpl;->setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V

    .line 841
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->add(Lgov/nist/javax/sip/message/Content;)Z

    .line 837
    .end local v3    # "cth":Ljavax/sip/header/ContentTypeHeader;
    .end local v4    # "contentImpl":Lgov/nist/javax/sip/message/ContentImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 843
    .end local v2    # "i":I
    :cond_28
    return-object v1
.end method

.method public greylist createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
    .registers 7
    .param p1, "requestString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 693
    if-eqz p1, :cond_34

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_34

    .line 699
    :cond_b
    new-instance v0, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 700
    .local v0, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    iget-boolean v1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/StringMsgParser;->setStrict(Z)V

    .line 706
    new-instance v1, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;-><init>(Lgov/nist/javax/sip/message/MessageFactoryImpl;)V

    .line 732
    .local v1, "parseExceptionListener":Lgov/nist/javax/sip/parser/ParseExceptionListener;
    iget-boolean v2, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    if-eqz v2, :cond_21

    .line 733
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/StringMsgParser;->setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V

    .line 735
    :cond_21
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v2

    .line 737
    .local v2, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    instance-of v3, v2, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v3, :cond_2d

    .line 740
    move-object v3, v2

    check-cast v3, Lgov/nist/javax/sip/message/SIPRequest;

    return-object v3

    .line 738
    :cond_2d
    new-instance v3, Ljava/text/ParseException;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 694
    .end local v0    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    .end local v1    # "parseExceptionListener":Lgov/nist/javax/sip/parser/ParseExceptionListener;
    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_34
    :goto_34
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 695
    .local v0, "retval":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->setNullRequest()V

    .line 696
    return-object v0
.end method

.method public greylist createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;
    .registers 12
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

    .line 234
    if-eqz p1, :cond_37

    if-eqz p2, :cond_37

    if-eqz p3, :cond_37

    if-eqz p4, :cond_37

    if-eqz p5, :cond_37

    if-eqz p6, :cond_37

    if-eqz p7, :cond_37

    if-eqz p8, :cond_37

    .line 241
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 242
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 243
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 245
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 246
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 247
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 248
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 249
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 250
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_36

    .line 251
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 254
    :cond_36
    return-object v0

    .line 237
    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_37
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "JAIN-SIP Exception, some parameters are missing, unable to create the request"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public greylist createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Request;
    .registers 13
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

    .line 126
    if-eqz p1, :cond_3e

    if-eqz p2, :cond_3e

    if-eqz p3, :cond_3e

    if-eqz p4, :cond_3e

    if-eqz p5, :cond_3e

    if-eqz p6, :cond_3e

    if-eqz p7, :cond_3e

    if-eqz p8, :cond_3e

    if-eqz p10, :cond_3e

    if-eqz p9, :cond_3e

    .line 132
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 133
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 134
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 136
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 137
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 138
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 139
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 140
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 141
    invoke-virtual {v0, p10, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 142
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_3d

    .line 143
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 146
    :cond_3d
    return-object v0

    .line 130
    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null parameters"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Request;
    .registers 13
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

    .line 549
    if-eqz p1, :cond_3e

    if-eqz p2, :cond_3e

    if-eqz p3, :cond_3e

    if-eqz p4, :cond_3e

    if-eqz p5, :cond_3e

    if-eqz p6, :cond_3e

    if-eqz p7, :cond_3e

    if-eqz p8, :cond_3e

    if-eqz p10, :cond_3e

    if-eqz p9, :cond_3e

    .line 555
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 556
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 557
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 559
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 560
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 561
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 562
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 563
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 564
    invoke-virtual {v0, p10, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 565
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_3d

    .line 566
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 568
    :cond_3d
    return-object v0

    .line 553
    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "missing parameters"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;[BLjavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Request;
    .registers 14
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

    .line 182
    if-eqz p1, :cond_44

    if-eqz p2, :cond_44

    if-eqz p3, :cond_44

    if-eqz p4, :cond_44

    if-eqz p5, :cond_44

    if-eqz p6, :cond_44

    if-eqz p7, :cond_44

    if-eqz p8, :cond_44

    if-eqz p9, :cond_44

    if-eqz p10, :cond_44

    .line 190
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 191
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 192
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 194
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 195
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 196
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 197
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 198
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 199
    move-object v1, p10

    check-cast v1, Lgov/nist/javax/sip/header/ContentType;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 200
    invoke-virtual {v0, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setMessageContent([B)V

    .line 201
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_43

    .line 202
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 204
    :cond_43
    return-object v0

    .line 186
    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_44
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "JAIN-SIP Exception, some parameters are missing, unable to create the request"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public greylist createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Response;
    .registers 11
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

    .line 393
    if-eqz p2, :cond_30

    if-eqz p3, :cond_30

    if-eqz p4, :cond_30

    if-eqz p5, :cond_30

    if-eqz p6, :cond_30

    if-eqz p7, :cond_30

    .line 399
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 400
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V

    .line 401
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 402
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 403
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 404
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 405
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    .line 406
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 407
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_2f

    .line 408
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 410
    :cond_2f
    return-object v0

    .line 395
    .end local v0    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_30
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "JAIN-SIP Exception, some parameters are missing, unable to create the response"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public greylist createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Response;
    .registers 14
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

    .line 290
    if-eqz p2, :cond_46

    if-eqz p3, :cond_46

    if-eqz p4, :cond_46

    if-eqz p5, :cond_46

    if-eqz p6, :cond_46

    if-eqz p7, :cond_46

    if-eqz p8, :cond_46

    if-eqz p9, :cond_46

    .line 295
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 296
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v1, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    .line 297
    .local v1, "statusLine":Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 298
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "reasonPhrase":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    .line 303
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 304
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 305
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 306
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 307
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    .line 308
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 309
    invoke-virtual {v0, p8, p9}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 310
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v3, :cond_45

    .line 311
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 313
    :cond_45
    return-object v0

    .line 293
    .end local v0    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v1    # "statusLine":Lgov/nist/javax/sip/header/StatusLine;
    .end local v2    # "reasonPhrase":Ljava/lang/String;
    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " unable to create the response"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Response;
    .registers 16
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

    .line 602
    if-eqz p2, :cond_5f

    if-eqz p3, :cond_5f

    if-eqz p4, :cond_5f

    if-eqz p5, :cond_5f

    if-eqz p6, :cond_5f

    if-eqz p7, :cond_5f

    if-eqz p9, :cond_5f

    if-eqz p8, :cond_5f

    .line 606
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 607
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v1, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    .line 608
    .local v1, "statusLine":Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 609
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_45

    .line 612
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    .line 614
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 615
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 616
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 617
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 618
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    .line 619
    invoke-virtual {v0, p9, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 620
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v3, :cond_44

    .line 621
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 623
    :cond_44
    return-object v0

    .line 611
    :cond_45
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 605
    .end local v0    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v1    # "statusLine":Lgov/nist/javax/sip/header/StatusLine;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_5f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "missing parameters"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Response;
    .registers 16
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

    .line 658
    if-eqz p2, :cond_5f

    if-eqz p3, :cond_5f

    if-eqz p4, :cond_5f

    if-eqz p5, :cond_5f

    if-eqz p6, :cond_5f

    if-eqz p7, :cond_5f

    if-eqz p9, :cond_5f

    if-eqz p8, :cond_5f

    .line 662
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 663
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v1, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    .line 664
    .local v1, "statusLine":Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 665
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_45

    .line 668
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    .line 670
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 671
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 672
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 673
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 674
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    .line 675
    invoke-virtual {v0, p9, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 676
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v3, :cond_44

    .line 677
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 679
    :cond_44
    return-object v0

    .line 667
    :cond_45
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 661
    .end local v0    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v1    # "statusLine":Lgov/nist/javax/sip/header/StatusLine;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_5f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "missing parameters"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;[BLjavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Response;
    .registers 12
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

    .line 347
    if-eqz p2, :cond_3d

    if-eqz p3, :cond_3d

    if-eqz p4, :cond_3d

    if-eqz p5, :cond_3d

    if-eqz p6, :cond_3d

    if-eqz p7, :cond_3d

    if-eqz p8, :cond_3d

    if-eqz p9, :cond_3d

    .line 352
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 353
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V

    .line 354
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 355
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 356
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 357
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 358
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    .line 359
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 360
    move-object v1, p9

    check-cast v1, Lgov/nist/javax/sip/header/ContentType;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 361
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setMessageContent([B)V

    .line 362
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_3c

    .line 363
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 365
    :cond_3c
    return-object v0

    .line 350
    .end local v0    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null params "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 497
    if-eqz p2, :cond_1b

    .line 503
    move-object v0, p2

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 504
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    .line 507
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->removeContent()V

    .line 508
    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->removeHeader(Ljava/lang/String;)V

    .line 509
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    if-eqz v2, :cond_1a

    .line 510
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 512
    :cond_1a
    return-object v1

    .line 498
    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null parameters"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createResponse(ILjavax/sip/message/Request;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Response;
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "request"    # Ljavax/sip/message/Request;
    .param p3, "contentType"    # Ljavax/sip/header/ContentTypeHeader;
    .param p4, "content"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 436
    if-eqz p2, :cond_1a

    if-eqz p4, :cond_1a

    if-eqz p3, :cond_1a

    .line 439
    move-object v0, p2

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 440
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    .line 441
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v1, p4, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 442
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    if-eqz v2, :cond_19

    .line 443
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 445
    :cond_19
    return-object v1

    .line 437
    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null parameters"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createResponse(ILjavax/sip/message/Request;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Response;
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "request"    # Ljavax/sip/message/Request;
    .param p3, "contentType"    # Ljavax/sip/header/ContentTypeHeader;
    .param p4, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 469
    if-eqz p2, :cond_20

    if-eqz p4, :cond_20

    if-eqz p3, :cond_20

    .line 472
    move-object v0, p2

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 473
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    .line 474
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    move-object v2, p3

    check-cast v2, Lgov/nist/javax/sip/header/ContentType;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 475
    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setMessageContent([B)V

    .line 476
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    if-eqz v2, :cond_1f

    .line 477
    sget-object v2, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 479
    :cond_1f
    return-object v1

    .line 470
    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null Parameters"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createResponse(Ljava/lang/String;)Ljavax/sip/message/Response;
    .registers 6
    .param p1, "responseString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 753
    if-nez p1, :cond_8

    .line 754
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    return-object v0

    .line 756
    :cond_8
    new-instance v0, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 758
    .local v0, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v1

    .line 760
    .local v1, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    instance-of v2, v1, Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v2, :cond_19

    .line 763
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/message/SIPResponse;

    return-object v2

    .line 761
    :cond_19
    new-instance v2, Ljava/text/ParseException;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public greylist setDefaultContentEncodingCharset(Ljava/lang/String;)V
    .registers 4
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 821
    if-eqz p1, :cond_5

    .line 822
    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    .line 824
    return-void

    .line 821
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null argument!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setDefaultServerHeader(Ljavax/sip/header/ServerHeader;)V
    .registers 2
    .param p1, "server"    # Ljavax/sip/header/ServerHeader;

    .line 791
    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    .line 792
    return-void
.end method

.method public greylist setDefaultUserAgentHeader(Ljavax/sip/header/UserAgentHeader;)V
    .registers 2
    .param p1, "userAgent"    # Ljavax/sip/header/UserAgentHeader;

    .line 777
    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    .line 778
    return-void
.end method

.method public greylist setStrict(Z)V
    .registers 2
    .param p1, "strict"    # Z

    .line 74
    iput-boolean p1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    .line 75
    return-void
.end method

.method public greylist setTest(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 83
    iput-boolean p1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    .line 84
    return-void
.end method
