.class public final Lgov/nist/javax/sip/message/SIPRequest;
.super Lgov/nist/javax/sip/message/SIPMessage;
.source "SIPRequest.java"

# interfaces
.implements Ljavax/sip/message/Request;
.implements Lgov/nist/javax/sip/message/RequestExt;


# static fields
.field private static final greylist DEFAULT_TRANSPORT:Ljava/lang/String; = "udp"

.field private static final greylist DEFAULT_USER:Ljava/lang/String; = "ip"

.field private static final greylist nameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x2ea3ad0be6d281afL

.field private static final greylist targetRefreshMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient greylist inviteTransaction:Ljava/lang/Object;

.field private transient greylist messageChannel:Ljava/lang/Object;

.field private greylist requestLine:Lgov/nist/javax/sip/header/RequestLine;

.field private transient greylist transactionPointer:Ljava/lang/Object;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 6

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    .line 103
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    .line 110
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v1, "INVITE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v2, "UPDATE"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v3, "SUBSCRIBE"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v4, "NOTIFY"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v5, "REFER"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 117
    const-string v0, "BYE"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 118
    const-string v0, "CANCEL"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 119
    const-string v0, "ACK"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 120
    const-string v0, "PRACK"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 121
    const-string v1, "INFO"

    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 122
    const-string v1, "MESSAGE"

    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 123
    invoke-static {v4}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 124
    const-string v1, "OPTIONS"

    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 125
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 126
    const-string v0, "PUBLISH"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 127
    invoke-static {v5}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 128
    const-string v0, "REGISTER"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 129
    invoke-static {v3}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 130
    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Lgov/nist/javax/sip/message/SIPMessage;-><init>()V

    .line 188
    return-void
.end method

.method public static greylist getCannonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "method"    # Ljava/lang/String;

    .line 157
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 158
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 160
    :cond_11
    return-object p0
.end method

.method public static greylist isDialogCreating(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ucaseMethod"    # Ljava/lang/String;

    .line 145
    invoke-static {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist isTargetRefresh(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ucaseMethod"    # Ljava/lang/String;

    .line 138
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final greylist mustCopyRR(I)Z
    .registers 4
    .param p1, "code"    # I

    .line 738
    const/16 v0, 0x64

    const/4 v1, 0x0

    if-le p1, v0, :cond_1b

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1b

    .line 739
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->isDialogCreating(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 740
    :cond_1b
    return v1
.end method

.method private static greylist putName(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method


# virtual methods
.method public greylist checkHeaders()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 216
    const-string v0, "Missing a required header : "

    .line 220
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21d

    .line 223
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v1

    if-eqz v1, :cond_204

    .line 227
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    if-eqz v1, :cond_1eb

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1eb

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    .line 228
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1eb

    .line 231
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    if-eqz v1, :cond_1d2

    .line 234
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    if-eqz v1, :cond_1b9

    .line 245
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    if-eqz v1, :cond_1b1

    .line 248
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NOTIFY"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Event"

    if-eqz v1, :cond_86

    .line 249
    const-string v1, "Subscription-State"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 252
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    if-eqz v1, :cond_58

    goto :goto_b0

    .line 253
    :cond_58
    new-instance v1, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 250
    :cond_6f
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 255
    :cond_86
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PUBLISH"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 261
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    if-eqz v1, :cond_99

    goto :goto_b0

    .line 262
    :cond_99
    new-instance v1, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 276
    :cond_b0
    :goto_b0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v3, "INVITE"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "REFER"

    const-string v5, "SUBSCRIBE"

    if-nez v1, :cond_da

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 277
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_da

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 278
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_150

    .line 279
    :cond_da
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v1

    if-nez v1, :cond_100

    .line 283
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e7

    goto :goto_100

    .line 284
    :cond_e7
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 287
    :cond_100
    :goto_100
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v1

    instance-of v1, v1, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v1, :cond_150

    .line 288
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "scheme":Ljava/lang/String;
    const-string v6, "sips"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_150

    .line 290
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/SipUri;

    .line 291
    .local v7, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v7}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_137

    goto :goto_150

    .line 292
    :cond_137
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheme for contact should be sips:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 301
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v7    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :cond_150
    :goto_150
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v1

    if-nez v1, :cond_17d

    .line 302
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    .line 303
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    goto :goto_17d

    .line 305
    :cond_175
    new-instance v1, Ljava/text/ParseException;

    const-string v3, "Contact Header is Mandatory for a SIP INVITE"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 308
    :cond_17d
    :goto_17d
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_1b0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b0

    .line 309
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b0

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 310
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a8

    goto :goto_1b0

    .line 311
    :cond_1a8
    new-instance v1, Ljava/text/ParseException;

    const-string v3, "CSEQ method mismatch with  Request-Line "

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 315
    :cond_1b0
    :goto_1b0
    return-void

    .line 246
    :cond_1b1
    new-instance v1, Ljava/text/ParseException;

    const-string v3, "No via header in request! "

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 235
    :cond_1b9
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Via"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 232
    :cond_1d2
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "From"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 229
    :cond_1eb
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Call-ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 224
    :cond_204
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "To"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 221
    :cond_21d
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CSeq"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 481
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 484
    .local v0, "retval":Lgov/nist/javax/sip/message/SIPRequest;
    const/4 v1, 0x0

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    .line 485
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_17

    .line 486
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/RequestLine;

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 488
    :cond_17
    return-object v0
.end method

.method public greylist createACKRequest()Lgov/nist/javax/sip/message/SIPRequest;
    .registers 3

    .line 1064
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    .line 1065
    .local v0, "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    const-string v1, "ACK"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    .line 1066
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    return-object v1
.end method

.method public greylist createAckRequest(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .registers 9
    .param p1, "responseToHeader"    # Lgov/nist/javax/sip/header/To;

    .line 819
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 820
    .local v0, "newRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    .line 821
    const-string v1, "ACK"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    move-result-object v2

    .line 823
    .local v2, "headerIterator":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 824
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 825
    .local v3, "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v4, v3, Lgov/nist/javax/sip/header/RouteList;

    if-eqz v4, :cond_2a

    .line 829
    goto :goto_19

    .line 830
    :cond_2a
    instance-of v4, v3, Lgov/nist/javax/sip/header/ProxyAuthorization;

    if-eqz v4, :cond_2f

    .line 833
    goto :goto_19

    .line 834
    :cond_2f
    instance-of v4, v3, Lgov/nist/javax/sip/header/ContentLength;

    const/4 v5, 0x0

    if-eqz v4, :cond_44

    .line 836
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 838
    :try_start_3b
    move-object v4, v3

    check-cast v4, Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_41
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_43

    .line 839
    :catch_42
    move-exception v4

    .line 840
    :goto_43
    goto :goto_8f

    .line 841
    :cond_44
    instance-of v4, v3, Lgov/nist/javax/sip/header/ContentType;

    if-eqz v4, :cond_49

    .line 844
    goto :goto_19

    .line 845
    :cond_49
    instance-of v4, v3, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v4, :cond_5a

    .line 851
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/CSeq;

    .line 853
    .local v4, "cseq":Lgov/nist/javax/sip/header/CSeq;
    :try_start_53
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/text/ParseException; {:try_start_53 .. :try_end_56} :catch_57

    .line 855
    goto :goto_58

    .line 854
    :catch_57
    move-exception v6

    .line 856
    :goto_58
    move-object v3, v4

    .line 857
    .end local v4    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    goto :goto_8f

    :cond_5a
    instance-of v4, v3, Lgov/nist/javax/sip/header/To;

    if-eqz v4, :cond_6a

    .line 858
    if-eqz p1, :cond_62

    .line 859
    move-object v3, p1

    goto :goto_8f

    .line 861
    :cond_62
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    goto :goto_8f

    .line 863
    :cond_6a
    instance-of v4, v3, Lgov/nist/javax/sip/header/ContactList;

    if-nez v4, :cond_19

    instance-of v4, v3, Lgov/nist/javax/sip/header/Expires;

    if-eqz v4, :cond_73

    .line 865
    goto :goto_19

    .line 866
    :cond_73
    instance-of v4, v3, Lgov/nist/javax/sip/header/ViaList;

    if-eqz v4, :cond_88

    .line 873
    move-object v4, v3

    check-cast v4, Lgov/nist/javax/sip/header/ViaList;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    goto :goto_8f

    .line 875
    :cond_88
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 879
    :goto_8f
    :try_start_8f
    invoke-virtual {v0, v3, v5}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_92
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_8f .. :try_end_92} :catch_93

    .line 882
    :goto_92
    goto :goto_19

    .line 880
    :catch_93
    move-exception v4

    .line 881
    .local v4, "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    .end local v4    # "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    goto :goto_92

    .line 884
    .end local v3    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_98
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 885
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 888
    :cond_a5
    return-object v0
.end method

.method public greylist createBYERequest(Z)Lgov/nist/javax/sip/message/SIPRequest;
    .registers 4
    .param p1, "switchHeaders"    # Z

    .line 1052
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    .line 1053
    .local v0, "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    const-string v1, "BYE"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    return-object v1
.end method

.method public greylist createCancelRequest()Lgov/nist/javax/sip/message/SIPRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 760
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 774
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 775
    .local v0, "cancel":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    .line 776
    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 777
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CallID;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 778
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 779
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CSeq;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 781
    :try_start_42
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2, v1}, Ljavax/sip/header/CSeqHeader;->setMethod(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/text/ParseException; {:try_start_42 .. :try_end_49} :catch_4a

    .line 784
    goto :goto_4e

    .line 782
    :catch_4a
    move-exception v1

    .line 783
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 785
    .end local v1    # "e":Ljava/text/ParseException;
    :goto_4e
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 787
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->addFirst(Ljavax/sip/header/Header;)V

    .line 788
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/MaxForwards;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 794
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 795
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RouteList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 797
    :cond_84
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 798
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 801
    :cond_91
    return-object v0

    .line 761
    .end local v0    # "cancel":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_92
    new-instance v0, Ljavax/sip/SipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to create CANCEL for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist createErrorAck(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .registers 5
    .param p1, "responseToHeader"    # Lgov/nist/javax/sip/header/To;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 916
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 917
    .local v0, "newRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    .line 918
    const-string v1, "ACK"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 919
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CallID;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 920
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/MaxForwards;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 923
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 924
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 925
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->addFirst(Ljavax/sip/header/Header;)V

    .line 926
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CSeq;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 927
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2, v1}, Ljavax/sip/header/CSeqHeader;->setMethod(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 935
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RouteList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V

    .line 937
    :cond_71
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 938
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 941
    :cond_7e
    return-object v0
.end method

.method public greylist createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;
    .registers 4
    .param p1, "statusCode"    # I

    .line 662
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "reasonPhrase":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    return-object v1
.end method

.method public greylist createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .line 689
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 691
    .local v0, "newResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_5
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_8} :catch_80

    .line 694
    nop

    .line 695
    if-eqz p2, :cond_f

    .line 696
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    goto :goto_16

    .line 698
    :cond_f
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 699
    :goto_16
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    move-result-object v1

    .line 700
    .local v1, "headerIterator":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 701
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 702
    .local v2, "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v3, v2, Lgov/nist/javax/sip/header/From;

    if-nez v3, :cond_48

    instance-of v3, v2, Lgov/nist/javax/sip/header/To;

    if-nez v3, :cond_48

    instance-of v3, v2, Lgov/nist/javax/sip/header/ViaList;

    if-nez v3, :cond_48

    instance-of v3, v2, Lgov/nist/javax/sip/header/CallID;

    if-nez v3, :cond_48

    instance-of v3, v2, Lgov/nist/javax/sip/header/RecordRouteList;

    if-eqz v3, :cond_40

    .line 706
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->mustCopyRR(I)Z

    move-result v3

    if-nez v3, :cond_48

    :cond_40
    instance-of v3, v2, Lgov/nist/javax/sip/header/CSeq;

    if-nez v3, :cond_48

    instance-of v3, v2, Lgov/nist/javax/sip/header/TimeStamp;

    if-eqz v3, :cond_1a

    .line 713
    :cond_48
    :try_start_48
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lgov/nist/javax/sip/message/SIPResponse;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_52
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_48 .. :try_end_52} :catch_53

    goto :goto_57

    .line 714
    :catch_53
    move-exception v3

    .line 715
    .local v3, "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    .line 716
    .end local v3    # "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :goto_57
    goto :goto_1a

    .line 719
    .end local v2    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_58
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 720
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 723
    :cond_65
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_76

    .line 725
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v2

    const-string v3, "tag"

    invoke-interface {v2, v3}, Ljavax/sip/header/ToHeader;->removeParameter(Ljava/lang/String;)V

    .line 728
    :cond_76
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v2

    .line 729
    .local v2, "server":Ljavax/sip/header/ServerHeader;
    if-eqz v2, :cond_7f

    .line 730
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 732
    :cond_7f
    return-object v0

    .line 692
    .end local v1    # "headerIterator":Ljava/util/Iterator;
    .end local v2    # "server":Ljavax/sip/header/ServerHeader;
    :catch_80
    move-exception v1

    .line 693
    .local v1, "ex":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;
    .registers 9
    .param p1, "requestLine"    # Lgov/nist/javax/sip/header/RequestLine;
    .param p2, "switchHeaders"    # Z

    .line 977
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 978
    .local v0, "newRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iput-object p1, v0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 979
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    move-result-object v1

    .line 980
    .local v1, "headerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 981
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 984
    .local v2, "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v3, v2, Lgov/nist/javax/sip/header/CSeq;

    const/4 v4, 0x0

    if-eqz v3, :cond_2e

    .line 985
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/CSeq;

    .line 986
    .local v3, "newCseq":Lgov/nist/javax/sip/header/CSeq;
    move-object v2, v3

    .line 988
    :try_start_23
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/text/ParseException; {:try_start_23 .. :try_end_2a} :catch_2b

    .line 990
    goto :goto_2c

    .line 989
    :catch_2b
    move-exception v5

    .line 991
    .end local v3    # "newCseq":Lgov/nist/javax/sip/header/CSeq;
    :goto_2c
    goto/16 :goto_ac

    :cond_2e
    instance-of v3, v2, Lgov/nist/javax/sip/header/ViaList;

    if-eqz v3, :cond_49

    .line 992
    move-object v3, v2

    check-cast v3, Lgov/nist/javax/sip/header/ViaList;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Via;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Via;

    .line 993
    .local v3, "via":Lgov/nist/javax/sip/header/Via;
    const-string v5, "branch"

    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/header/Via;->removeParameter(Ljava/lang/String;)V

    .line 994
    move-object v2, v3

    .line 996
    .end local v3    # "via":Lgov/nist/javax/sip/header/Via;
    goto/16 :goto_ac

    :cond_49
    instance-of v3, v2, Lgov/nist/javax/sip/header/To;

    if-eqz v3, :cond_6d

    .line 997
    move-object v3, v2

    check-cast v3, Lgov/nist/javax/sip/header/To;

    .line 998
    .local v3, "to":Lgov/nist/javax/sip/header/To;
    if-eqz p2, :cond_5f

    .line 999
    new-instance v5, Lgov/nist/javax/sip/header/From;

    invoke-direct {v5, v3}, Lgov/nist/javax/sip/header/From;-><init>(Lgov/nist/javax/sip/header/To;)V

    .line 1000
    .end local v2    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .local v5, "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    move-object v2, v5

    check-cast v2, Lgov/nist/javax/sip/header/From;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/From;->removeTag()V

    move-object v2, v5

    goto :goto_6c

    .line 1002
    .end local v5    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .restart local v2    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_5f
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1003
    move-object v5, v2

    check-cast v5, Lgov/nist/javax/sip/header/To;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/To;->removeTag()V

    .line 1005
    .end local v3    # "to":Lgov/nist/javax/sip/header/To;
    :goto_6c
    goto :goto_ac

    :cond_6d
    instance-of v3, v2, Lgov/nist/javax/sip/header/From;

    if-eqz v3, :cond_91

    .line 1006
    move-object v3, v2

    check-cast v3, Lgov/nist/javax/sip/header/From;

    .line 1007
    .local v3, "from":Lgov/nist/javax/sip/header/From;
    if-eqz p2, :cond_83

    .line 1008
    new-instance v5, Lgov/nist/javax/sip/header/To;

    invoke-direct {v5, v3}, Lgov/nist/javax/sip/header/To;-><init>(Lgov/nist/javax/sip/header/From;)V

    .line 1009
    .end local v2    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .restart local v5    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    move-object v2, v5

    check-cast v2, Lgov/nist/javax/sip/header/To;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/To;->removeTag()V

    move-object v2, v5

    goto :goto_90

    .line 1011
    .end local v5    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .restart local v2    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_83
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1012
    move-object v5, v2

    check-cast v5, Lgov/nist/javax/sip/header/From;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/From;->removeTag()V

    .line 1014
    .end local v3    # "from":Lgov/nist/javax/sip/header/From;
    :goto_90
    goto :goto_ac

    :cond_91
    instance-of v3, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v3, :cond_a2

    .line 1015
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/ContentLength;

    .line 1017
    .local v3, "cl":Lgov/nist/javax/sip/header/ContentLength;
    :try_start_9b
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_9e
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_9b .. :try_end_9e} :catch_9f

    .line 1019
    goto :goto_a0

    .line 1018
    :catch_9f
    move-exception v5

    .line 1020
    :goto_a0
    move-object v2, v3

    .line 1021
    .end local v3    # "cl":Lgov/nist/javax/sip/header/ContentLength;
    :cond_a1
    goto :goto_ac

    :cond_a2
    instance-of v3, v2, Lgov/nist/javax/sip/header/CallID;

    if-nez v3, :cond_a1

    instance-of v3, v2, Lgov/nist/javax/sip/header/MaxForwards;

    if-nez v3, :cond_a1

    .line 1027
    goto/16 :goto_b

    .line 1030
    :goto_ac
    :try_start_ac
    invoke-virtual {v0, v2, v4}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_af
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_ac .. :try_end_af} :catch_b0

    .line 1033
    goto :goto_b4

    .line 1031
    :catch_b0
    move-exception v3

    .line 1032
    .local v3, "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    .line 1034
    .end local v2    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v3    # "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :goto_b4
    goto/16 :goto_b

    .line 1035
    :cond_b6
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v2

    if-eqz v2, :cond_c3

    .line 1036
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 1039
    :cond_c3
    return-object v0
.end method

.method public greylist debugDump()Ljava/lang/String;
    .registers 3

    .line 199
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "superstring":Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->stringRepresentation:Ljava/lang/String;

    .line 201
    const-class v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    .line 202
    const-string v1, "{"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_23

    .line 204
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->debugDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    .line 205
    :cond_23
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    .line 206
    const-string v1, "}"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->stringRepresentation:Ljava/lang/String;

    return-object v1
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 3

    .line 439
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v0, :cond_23

    .line 440
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "retval":Ljava/lang/String;
    goto :goto_30

    .line 442
    .end local v0    # "retval":Ljava/lang/String;
    :cond_23
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 443
    const-string v0, "\r\n\r\n"

    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_30

    .line 445
    .end local v0    # "retval":Ljava/lang/String;
    :cond_2c
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v0

    .line 447
    .restart local v0    # "retval":Ljava/lang/String;
    :goto_30
    return-object v0
.end method

.method public greylist encodeAsBytes(Ljava/lang/String;)[B
    .registers 8
    .param p1, "transport"    # Ljava/lang/String;

    .line 623
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 625
    const-string v0, "\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 626
    :cond_d
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 627
    new-array v0, v1, [B

    return-object v0

    .line 630
    :cond_15
    const/4 v0, 0x0

    .line 631
    .local v0, "rlbytes":[B
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v2, :cond_2c

    .line 633
    :try_start_1a
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_26} :catch_28

    move-object v0, v2

    .line 636
    goto :goto_2c

    .line 634
    :catch_28
    move-exception v2

    .line 635
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 638
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_2c
    :goto_2c
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 639
    .local v2, "superbytes":[B
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 640
    .local v3, "retval":[B
    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    array-length v4, v0

    array-length v5, v2

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 642
    return-object v3
.end method

.method public greylist encodeMessage()Ljava/lang/String;
    .registers 3

    .line 455
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v0, :cond_23

    .line 456
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "retval":Ljava/lang/String;
    goto :goto_30

    .line 458
    .end local v0    # "retval":Ljava/lang/String;
    :cond_23
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 459
    const-string v0, "\r\n\r\n"

    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_30

    .line 461
    .end local v0    # "retval":Ljava/lang/String;
    :cond_2c
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v0

    .line 462
    .restart local v0    # "retval":Ljava/lang/String;
    :goto_30
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 497
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 498
    return v1

    .line 499
    :cond_10
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 501
    .local v0, "that":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    iget-object v3, v0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/RequestLine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public greylist getDialogId(Z)Ljava/lang/String;
    .registers 8
    .param p1, "isServer"    # Z

    .line 551
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 552
    .local v0, "cid":Lgov/nist/javax/sip/header/CallID;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 553
    .local v1, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/From;

    .line 554
    .local v2, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/To;

    .line 555
    .local v3, "to":Lgov/nist/javax/sip/header/To;
    const-string v4, ":"

    if-nez p1, :cond_40

    .line 557
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 558
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 562
    :cond_2f
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 563
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_60

    .line 568
    :cond_40
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 569
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    :cond_50
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 574
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    :cond_60
    :goto_60
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public greylist getDialogId(ZLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "isServer"    # Z
    .param p2, "toTag"    # Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/From;

    .line 587
    .local v0, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/CallID;

    .line 588
    .local v1, "cid":Lgov/nist/javax/sip/header/CallID;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 589
    .local v2, "retval":Ljava/lang/StringBuffer;
    const-string v3, ":"

    if-nez p1, :cond_32

    .line 591
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 592
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    :cond_29
    if-eqz p2, :cond_4a

    .line 597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 602
    :cond_32
    if-eqz p2, :cond_3a

    .line 603
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    :cond_3a
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 608
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :cond_4a
    :goto_4a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public greylist getFirstLine()Ljava/lang/String;
    .registers 2

    .line 1099
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_6

    .line 1100
    const/4 v0, 0x0

    return-object v0

    .line 1102
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getInviteTransaction()Ljava/lang/Object;
    .registers 2

    .line 1204
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->inviteTransaction:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist getMergeId()Ljava/lang/String;
    .registers 7

    .line 1177
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, "fromTag":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CSeq;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, "cseq":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 1183
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1185
    .local v3, "requestUri":Ljava/lang/String;
    if-eqz v0, :cond_42

    .line 1186
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1187
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1186
    return-object v4

    .line 1189
    :cond_42
    const/4 v4, 0x0

    return-object v4
.end method

.method public greylist getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .registers 3

    .line 511
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageAsEncodedStrings()Ljava/util/LinkedList;

    move-result-object v0

    .line 512
    .local v0, "retval":Ljava/util/LinkedList;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_14

    .line 513
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    .line 514
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 516
    :cond_14
    return-object v0
.end method

.method public greylist getMessageChannel()Ljava/lang/Object;
    .registers 2

    .line 1155
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->messageChannel:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist getMethod()Ljava/lang/String;
    .registers 2

    .line 425
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_6

    .line 426
    const/4 v0, 0x0

    return-object v0

    .line 428
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getRequestLine()Lgov/nist/javax/sip/header/RequestLine;
    .registers 2

    .line 170
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    return-object v0
.end method

.method public greylist getRequestURI()Ljavax/sip/address/URI;
    .registers 2

    .line 364
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_6

    .line 365
    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSIPVersion()Ljava/lang/String;
    .registers 2

    .line 1122
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getSipVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTransaction()Ljava/lang/Object;
    .registers 2

    .line 1133
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist getViaHost()Ljava/lang/String;
    .registers 3

    .line 1075
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    .line 1076
    .local v0, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getViaPort()I
    .registers 3

    .line 1086
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    .line 1087
    .local v0, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->hasPort()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1088
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v1

    return v1

    .line 1090
    :cond_15
    const/16 v1, 0x13c4

    return v1
.end method

.method public greylist match(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "matchObj"    # Ljava/lang/Object;

    .line 529
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 530
    return v0

    .line 531
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 532
    return v2

    .line 533
    :cond_14
    if-ne p1, p0, :cond_17

    .line 534
    return v0

    .line 535
    :cond_17
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    .line 536
    .local v1, "that":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v3, v1, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 537
    .local v3, "rline":Lgov/nist/javax/sip/header/RequestLine;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v4, :cond_23

    if-eqz v3, :cond_23

    .line 538
    return v2

    .line 539
    :cond_23
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-ne v4, v3, :cond_2c

    .line 540
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 541
    :cond_2c
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    iget-object v5, v1, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/RequestLine;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v2

    :goto_3e
    return v0
.end method

.method protected greylist setDefaults()V
    .registers 5

    .line 323
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_5

    .line 324
    return-void

    .line 325
    :cond_5
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "method":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 328
    return-void

    .line 329
    :cond_e
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v1

    .line 330
    .local v1, "u":Lgov/nist/javax/sip/address/GenericURI;
    if-nez v1, :cond_17

    .line 331
    return-void

    .line 332
    :cond_17
    const-string v2, "REGISTER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "INVITE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3a

    .line 333
    :cond_27
    instance-of v2, v1, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v2, :cond_3a

    .line 334
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    .line 335
    .local v2, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    const-string v3, "ip"

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/SipUri;->setUserParam(Ljava/lang/String;)V

    .line 337
    :try_start_33
    const-string v3, "udp"

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/SipUri;->setTransportParam(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/text/ParseException; {:try_start_33 .. :try_end_38} :catch_39

    .line 339
    goto :goto_3a

    .line 338
    :catch_39
    move-exception v3

    .line 342
    .end local v2    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :cond_3a
    :goto_3a
    return-void
.end method

.method public greylist setInviteTransaction(Ljava/lang/Object;)V
    .registers 2
    .param p1, "inviteTransaction"    # Ljava/lang/Object;

    .line 1197
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->inviteTransaction:Ljava/lang/Object;

    .line 1198
    return-void
.end method

.method public greylist setMessageChannel(Ljava/lang/Object;)V
    .registers 2
    .param p1, "messageChannel"    # Ljava/lang/Object;

    .line 1165
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->messageChannel:Ljava/lang/Object;

    .line 1166
    return-void
.end method

.method public greylist setMethod(Ljava/lang/String;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .line 397
    if-eqz p1, :cond_22

    .line 399
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_d

    .line 400
    new-instance v0, Lgov/nist/javax/sip/header/RequestLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RequestLine;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 407
    :cond_d
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "meth":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    if-eqz v1, :cond_21

    .line 412
    :try_start_1a
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/text/ParseException; {:try_start_1a .. :try_end_1f} :catch_20

    .line 414
    goto :goto_21

    .line 413
    :catch_20
    move-exception v1

    .line 416
    :cond_21
    :goto_21
    return-void

    .line 398
    .end local v0    # "meth":Ljava/lang/String;
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V
    .registers 2
    .param p1, "requestLine"    # Lgov/nist/javax/sip/header/RequestLine;

    .line 180
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 181
    return-void
.end method

.method protected greylist setRequestLineDefaults()V
    .registers 4

    .line 348
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "method":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 350
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/CSeq;

    .line 351
    .local v1, "cseq":Lgov/nist/javax/sip/header/CSeq;
    if-eqz v1, :cond_1d

    .line 352
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    .line 356
    .end local v1    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    :cond_1d
    return-void
.end method

.method public greylist setRequestURI(Ljavax/sip/address/URI;)V
    .registers 4
    .param p1, "uri"    # Ljavax/sip/address/URI;

    .line 380
    if-eqz p1, :cond_19

    .line 383
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_d

    .line 384
    new-instance v0, Lgov/nist/javax/sip/header/RequestLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RequestLine;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 386
    :cond_d
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequestLine;->setUri(Ljavax/sip/address/URI;)V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->nullRequest:Z

    .line 388
    return-void

    .line 381
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null request URI"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setSIPVersion(Ljava/lang/String;)V
    .registers 5
    .param p1, "sipVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1111
    if-eqz p1, :cond_10

    const-string v0, "SIP/2.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1113
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RequestLine;->setSipVersion(Ljava/lang/String;)V

    .line 1114
    return-void

    .line 1112
    :cond_10
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "sipVersion"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public greylist setTransaction(Ljava/lang/Object;)V
    .registers 2
    .param p1, "transaction"    # Ljava/lang/Object;

    .line 1142
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    .line 1143
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 470
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
