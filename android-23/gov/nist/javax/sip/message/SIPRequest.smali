.class public final Lgov/nist/javax/sip/message/SIPRequest;
.super Lgov/nist/javax/sip/message/SIPMessage;
.source "SIPRequest.java"

# interfaces
.implements Ljavax/sip/message/Request;
.implements Lgov/nist/javax/sip/message/RequestExt;


# static fields
.field private static final DEFAULT_TRANSPORT:Ljava/lang/String; = "udp"

.field private static final DEFAULT_USER:Ljava/lang/String; = "ip"

.field private static final nameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2ea3ad0be6d281afL

.field private static final targetRefreshMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient inviteTransaction:Ljava/lang/Object;

.field private transient messageChannel:Ljava/lang/Object;

.field private requestLine:Lgov/nist/javax/sip/header/RequestLine;

.field private transient transactionPointer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    sput-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    #@7
    .line 103
    new-instance v0, Ljava/util/Hashtable;

    #@9
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@c
    sput-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    #@e
    .line 110
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    #@10
    const-string/jumbo v1, "INVITE"

    #@13
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@16
    .line 111
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    #@18
    const-string/jumbo v1, "UPDATE"

    #@1b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1e
    .line 112
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    #@20
    const-string/jumbo v1, "SUBSCRIBE"

    #@23
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@26
    .line 113
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    #@28
    const-string/jumbo v1, "NOTIFY"

    #@2b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2e
    .line 114
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    #@30
    const-string/jumbo v1, "REFER"

    #@33
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@36
    .line 116
    const-string/jumbo v0, "INVITE"

    #@39
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@3c
    .line 117
    const-string/jumbo v0, "BYE"

    #@3f
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@42
    .line 118
    const-string/jumbo v0, "CANCEL"

    #@45
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@48
    .line 119
    const-string/jumbo v0, "ACK"

    #@4b
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@4e
    .line 120
    const-string/jumbo v0, "PRACK"

    #@51
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@54
    .line 121
    const-string/jumbo v0, "INFO"

    #@57
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@5a
    .line 122
    const-string/jumbo v0, "MESSAGE"

    #@5d
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@60
    .line 123
    const-string/jumbo v0, "NOTIFY"

    #@63
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@66
    .line 124
    const-string/jumbo v0, "OPTIONS"

    #@69
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@6c
    .line 125
    const-string/jumbo v0, "PRACK"

    #@6f
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@72
    .line 126
    const-string/jumbo v0, "PUBLISH"

    #@75
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@78
    .line 127
    const-string/jumbo v0, "REFER"

    #@7b
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@7e
    .line 128
    const-string/jumbo v0, "REGISTER"

    #@81
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@84
    .line 129
    const-string/jumbo v0, "SUBSCRIBE"

    #@87
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@8a
    .line 130
    const-string/jumbo v0, "UPDATE"

    #@8d
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    #@90
    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Lgov/nist/javax/sip/message/SIPMessage;-><init>()V

    #@3
    .line 186
    return-void
.end method

.method public static getCannonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 158
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    return-object v0

    #@11
    .line 160
    :cond_0
    return-object p0
.end method

.method public static isDialogCreating(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ucaseMethod"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
    invoke-static {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isTargetRefresh(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ucaseMethod"    # Ljava/lang/String;

    #@0
    .prologue
    .line 138
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private final mustCopyRR(I)Z
    .locals 2
    .param p1, "code"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 738
    const/16 v1, 0x64

    #@3
    if-le p1, v1, :cond_1

    #@5
    const/16 v1, 0x12c

    #@7
    if-ge p1, v1, :cond_1

    #@9
    .line 739
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPRequest;->isDialogCreating(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    if-nez v1, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_0
    return v0

    #@1b
    .line 740
    :cond_1
    return v0
.end method

.method private static putName(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 105
    return-void
.end method


# virtual methods
.method public checkHeaders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 216
    const-string/jumbo v0, "Missing a required header : "

    #@4
    .line 220
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@7
    move-result-object v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 221
    new-instance v3, Ljava/text/ParseException;

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    const-string/jumbo v5, "CSeq"

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@23
    throw v3

    #@24
    .line 223
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    #@27
    move-result-object v3

    #@28
    if-nez v3, :cond_1

    #@2a
    .line 224
    new-instance v3, Ljava/text/ParseException;

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    const-string/jumbo v5, "To"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@43
    throw v3

    #@44
    .line 227
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@46
    if-eqz v3, :cond_2

    #@48
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@4a
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    if-nez v3, :cond_3

    #@50
    .line 229
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    #@52
    new-instance v4, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    const-string/jumbo v5, "Call-ID"

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@69
    throw v3

    #@6a
    .line 228
    :cond_3
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@6c
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    const-string/jumbo v4, ""

    #@73
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v3

    #@77
    .line 227
    if-nez v3, :cond_2

    #@79
    .line 231
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@7c
    move-result-object v3

    #@7d
    if-nez v3, :cond_4

    #@7f
    .line 232
    new-instance v3, Ljava/text/ParseException;

    #@81
    new-instance v4, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    const-string/jumbo v5, "From"

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@98
    throw v3

    #@99
    .line 234
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@9c
    move-result-object v3

    #@9d
    if-nez v3, :cond_5

    #@9f
    .line 235
    new-instance v3, Ljava/text/ParseException;

    #@a1
    new-instance v4, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    const-string/jumbo v5, "Via"

    #@ad
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@b8
    throw v3

    #@b9
    .line 245
    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@bc
    move-result-object v3

    #@bd
    if-nez v3, :cond_6

    #@bf
    .line 246
    new-instance v3, Ljava/text/ParseException;

    #@c1
    const-string/jumbo v4, "No via header in request! "

    #@c4
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@c7
    throw v3

    #@c8
    .line 248
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@cb
    move-result-object v3

    #@cc
    const-string/jumbo v4, "NOTIFY"

    #@cf
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d2
    move-result v3

    #@d3
    if-eqz v3, :cond_8

    #@d5
    .line 249
    const-string/jumbo v3, "Subscription-State"

    #@d8
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@db
    move-result-object v3

    #@dc
    if-nez v3, :cond_7

    #@de
    .line 250
    new-instance v3, Ljava/text/ParseException;

    #@e0
    new-instance v4, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v4

    #@e9
    const-string/jumbo v5, "Subscription-State"

    #@ec
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v4

    #@f0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v4

    #@f4
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@f7
    throw v3

    #@f8
    .line 252
    :cond_7
    const-string/jumbo v3, "Event"

    #@fb
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@fe
    move-result-object v3

    #@ff
    if-nez v3, :cond_9

    #@101
    .line 253
    new-instance v3, Ljava/text/ParseException;

    #@103
    new-instance v4, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v4

    #@10c
    const-string/jumbo v5, "Event"

    #@10f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v4

    #@113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v4

    #@117
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@11a
    throw v3

    #@11b
    .line 255
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@11e
    move-result-object v3

    #@11f
    const-string/jumbo v4, "PUBLISH"

    #@122
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@125
    move-result v3

    #@126
    if-eqz v3, :cond_9

    #@128
    .line 261
    const-string/jumbo v3, "Event"

    #@12b
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@12e
    move-result-object v3

    #@12f
    if-nez v3, :cond_9

    #@131
    .line 262
    new-instance v3, Ljava/text/ParseException;

    #@133
    new-instance v4, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v4

    #@13c
    const-string/jumbo v5, "Event"

    #@13f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v4

    #@143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v4

    #@147
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@14a
    throw v3

    #@14b
    .line 276
    :cond_9
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@14d
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    #@150
    move-result-object v3

    #@151
    const-string/jumbo v4, "INVITE"

    #@154
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@157
    move-result v3

    #@158
    if-nez v3, :cond_a

    #@15a
    .line 277
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@15c
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    #@15f
    move-result-object v3

    #@160
    const-string/jumbo v4, "SUBSCRIBE"

    #@163
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@166
    move-result v3

    #@167
    .line 276
    if-nez v3, :cond_a

    #@169
    .line 278
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@16b
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    #@16e
    move-result-object v3

    #@16f
    const-string/jumbo v4, "REFER"

    #@172
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@175
    move-result v3

    #@176
    .line 276
    if-eqz v3, :cond_c

    #@178
    .line 279
    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    #@17b
    move-result-object v3

    #@17c
    if-nez v3, :cond_b

    #@17e
    .line 283
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    #@181
    move-result-object v3

    #@182
    if-nez v3, :cond_b

    #@184
    .line 284
    new-instance v3, Ljava/text/ParseException;

    #@186
    new-instance v4, Ljava/lang/StringBuilder;

    #@188
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v4

    #@18f
    const-string/jumbo v5, "Contact"

    #@192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v4

    #@196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v4

    #@19a
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@19d
    throw v3

    #@19e
    .line 287
    :cond_b
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@1a0
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    #@1a3
    move-result-object v3

    #@1a4
    instance-of v3, v3, Lgov/nist/javax/sip/address/SipUri;

    #@1a6
    if-eqz v3, :cond_c

    #@1a8
    .line 288
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@1aa
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    #@1ad
    move-result-object v3

    #@1ae
    check-cast v3, Lgov/nist/javax/sip/address/SipUri;

    #@1b0
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    #@1b3
    move-result-object v1

    #@1b4
    .line 289
    .local v1, "scheme":Ljava/lang/String;
    const-string/jumbo v3, "sips"

    #@1b7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1ba
    move-result v3

    #@1bb
    if-eqz v3, :cond_c

    #@1bd
    .line 290
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    #@1c0
    move-result-object v3

    #@1c1
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    #@1c4
    move-result-object v3

    #@1c5
    invoke-interface {v3}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@1c8
    move-result-object v2

    #@1c9
    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    #@1cb
    .line 291
    .local v2, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v2}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    #@1ce
    move-result-object v3

    #@1cf
    const-string/jumbo v4, "sips"

    #@1d2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d5
    move-result v3

    #@1d6
    if-nez v3, :cond_c

    #@1d8
    .line 292
    new-instance v3, Ljava/text/ParseException;

    #@1da
    new-instance v4, Ljava/lang/StringBuilder;

    #@1dc
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1df
    const-string/jumbo v5, "Scheme for contact should be sips:"

    #@1e2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v4

    #@1e6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v4

    #@1ea
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ed
    move-result-object v4

    #@1ee
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1f1
    throw v3

    #@1f2
    .line 301
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    #@1f5
    move-result-object v3

    #@1f6
    if-nez v3, :cond_e

    #@1f8
    .line 302
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@1fb
    move-result-object v3

    #@1fc
    const-string/jumbo v4, "INVITE"

    #@1ff
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@202
    move-result v3

    #@203
    if-nez v3, :cond_d

    #@205
    .line 303
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@208
    move-result-object v3

    #@209
    const-string/jumbo v4, "REFER"

    #@20c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20f
    move-result v3

    #@210
    .line 302
    if-nez v3, :cond_d

    #@212
    .line 303
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@215
    move-result-object v3

    #@216
    .line 304
    const-string/jumbo v4, "SUBSCRIBE"

    #@219
    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21c
    move-result v3

    #@21d
    .line 301
    if-eqz v3, :cond_e

    #@21f
    .line 305
    :cond_d
    new-instance v3, Ljava/text/ParseException;

    #@221
    const-string/jumbo v4, "Contact Header is Mandatory for a SIP INVITE"

    #@224
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@227
    throw v3

    #@228
    .line 308
    :cond_e
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@22a
    if-eqz v3, :cond_f

    #@22c
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@22e
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    #@231
    move-result-object v3

    #@232
    if-eqz v3, :cond_f

    #@234
    .line 309
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@237
    move-result-object v3

    #@238
    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@23b
    move-result-object v3

    #@23c
    if-eqz v3, :cond_f

    #@23e
    .line 310
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@240
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    #@243
    move-result-object v3

    #@244
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@247
    move-result-object v4

    #@248
    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@24b
    move-result-object v4

    #@24c
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@24f
    move-result v3

    #@250
    if-eqz v3, :cond_f

    #@252
    .line 311
    new-instance v3, Ljava/text/ParseException;

    #@254
    const-string/jumbo v4, "CSEQ method mismatch with  Request-Line "

    #@257
    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@25a
    throw v3

    #@25b
    .line 215
    :cond_f
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 481
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@7
    .line 484
    .local v0, "retval":Lgov/nist/javax/sip/message/SIPRequest;
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    #@9
    .line 485
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 486
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@f
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lgov/nist/javax/sip/header/RequestLine;

    #@15
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@17
    .line 488
    :cond_0
    return-object v0
.end method

.method public createACKRequest()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 2

    #@0
    .prologue
    .line 1064
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@2
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    #@8
    .line 1065
    .local v0, "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    const-string/jumbo v1, "ACK"

    #@b
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    #@e
    .line 1066
    const/4 v1, 0x0

    #@f
    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public createAckRequest(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .locals 10
    .param p1, "responseToHeader"    # Lgov/nist/javax/sip/header/To;

    #@0
    .prologue
    .line 819
    new-instance v6, Lgov/nist/javax/sip/message/SIPRequest;

    #@2
    invoke-direct {v6}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@5
    .line 820
    .local v6, "newRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v8, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@7
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    #@a
    move-result-object v8

    #@b
    check-cast v8, Lgov/nist/javax/sip/header/RequestLine;

    #@d
    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    #@10
    .line 821
    const-string/jumbo v8, "ACK"

    #@13
    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    #@16
    .line 822
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    #@19
    move-result-object v5

    #@1a
    .line 823
    .local v5, "headerIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v8

    #@1e
    if-eqz v8, :cond_6

    #@20
    .line 824
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v7

    #@24
    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    #@26
    .line 825
    .local v7, "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v8, v7, Lgov/nist/javax/sip/header/RouteList;

    #@28
    if-nez v8, :cond_0

    #@2a
    .line 830
    instance-of v8, v7, Lgov/nist/javax/sip/header/ProxyAuthorization;

    #@2c
    if-nez v8, :cond_0

    #@2e
    .line 834
    instance-of v8, v7, Lgov/nist/javax/sip/header/ContentLength;

    #@30
    if-eqz v8, :cond_1

    #@32
    .line 836
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@35
    move-result-object v7

    #@36
    .end local v7    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    #@38
    .line 838
    .restart local v7    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :try_start_0
    move-object v0, v7

    #@39
    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    #@3b
    move-object v8, v0

    #@3c
    const/4 v9, 0x0

    #@3d
    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    #@40
    .line 879
    :goto_1
    const/4 v8, 0x0

    #@41
    :try_start_1
    invoke-virtual {v6, v7, v8}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_1 .. :try_end_1} :catch_0

    #@44
    goto :goto_0

    #@45
    .line 880
    :catch_0
    move-exception v2

    #@46
    .line 881
    .local v2, "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    #@49
    goto :goto_0

    #@4a
    .line 841
    .end local v2    # "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :cond_1
    instance-of v8, v7, Lgov/nist/javax/sip/header/ContentType;

    #@4c
    if-nez v8, :cond_0

    #@4e
    .line 845
    instance-of v8, v7, Lgov/nist/javax/sip/header/CSeq;

    #@50
    if-eqz v8, :cond_2

    #@52
    .line 851
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@55
    move-result-object v1

    #@56
    check-cast v1, Lgov/nist/javax/sip/header/CSeq;

    #@58
    .line 853
    .local v1, "cseq":Lgov/nist/javax/sip/header/CSeq;
    :try_start_2
    const-string/jumbo v8, "ACK"

    #@5b
    invoke-virtual {v1, v8}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    #@5e
    .line 856
    :goto_2
    move-object v7, v1

    #@5f
    goto :goto_1

    #@60
    .line 857
    .end local v1    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    :cond_2
    instance-of v8, v7, Lgov/nist/javax/sip/header/To;

    #@62
    if-eqz v8, :cond_4

    #@64
    .line 858
    if-eqz p1, :cond_3

    #@66
    .line 859
    move-object v7, p1

    #@67
    goto :goto_1

    #@68
    .line 861
    :cond_3
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@6b
    move-result-object v7

    #@6c
    .end local v7    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    #@6e
    .restart local v7    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_1

    #@6f
    .line 863
    :cond_4
    instance-of v8, v7, Lgov/nist/javax/sip/header/ContactList;

    #@71
    if-nez v8, :cond_0

    #@73
    instance-of v8, v7, Lgov/nist/javax/sip/header/Expires;

    #@75
    if-nez v8, :cond_0

    #@77
    .line 866
    instance-of v8, v7, Lgov/nist/javax/sip/header/ViaList;

    #@79
    if-eqz v8, :cond_5

    #@7b
    .line 873
    check-cast v7, Lgov/nist/javax/sip/header/ViaList;

    #@7d
    .end local v7    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@80
    move-result-object v8

    #@81
    invoke-interface {v8}, Ljavax/sip/header/Header;->clone()Ljava/lang/Object;

    #@84
    move-result-object v7

    #@85
    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    #@87
    .restart local v7    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_1

    #@88
    .line 875
    :cond_5
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@8b
    move-result-object v7

    #@8c
    .end local v7    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    #@8e
    .restart local v7    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_1

    #@8f
    .line 884
    .end local v7    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_6
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@92
    move-result-object v8

    #@93
    if-eqz v8, :cond_7

    #@95
    .line 885
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@98
    move-result-object v8

    #@99
    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@9c
    .line 888
    :cond_7
    return-object v6

    #@9d
    .line 854
    .restart local v1    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    .restart local v7    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :catch_1
    move-exception v3

    #@9e
    .local v3, "e":Ljava/text/ParseException;
    goto :goto_2

    #@9f
    .line 839
    .end local v1    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    .end local v3    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v4

    #@a0
    .local v4, "e":Ljavax/sip/InvalidArgumentException;
    goto :goto_1
.end method

.method public createBYERequest(Z)Lgov/nist/javax/sip/message/SIPRequest;
    .locals 2
    .param p1, "switchHeaders"    # Z

    #@0
    .prologue
    .line 1052
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@2
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    #@8
    .line 1053
    .local v0, "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    const-string/jumbo v1, "BYE"

    #@b
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    #@e
    .line 1054
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public createCancelRequest()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 760
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, "INVITE"

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 761
    new-instance v2, Ljavax/sip/SipException;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Attempt to create CANCEL for "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 774
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@2d
    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@30
    .line 775
    .local v0, "cancel":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@32
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Lgov/nist/javax/sip/header/RequestLine;

    #@38
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    #@3b
    .line 776
    const-string/jumbo v2, "CANCEL"

    #@3e
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    #@41
    .line 777
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@43
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CallID;->clone()Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Ljavax/sip/header/Header;

    #@49
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@4c
    .line 778
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->toHeader:Lgov/nist/javax/sip/header/To;

    #@4e
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    #@51
    move-result-object v2

    #@52
    check-cast v2, Ljavax/sip/header/Header;

    #@54
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@57
    .line 779
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@59
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CSeq;->clone()Ljava/lang/Object;

    #@5c
    move-result-object v2

    #@5d
    check-cast v2, Ljavax/sip/header/Header;

    #@5f
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@62
    .line 781
    :try_start_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@65
    move-result-object v2

    #@66
    const-string/jumbo v3, "CANCEL"

    #@69
    invoke-interface {v2, v3}, Ljavax/sip/header/CSeqHeader;->setMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    .line 785
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@6e
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    #@71
    move-result-object v2

    #@72
    check-cast v2, Ljavax/sip/header/Header;

    #@74
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@77
    .line 787
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->clone()Ljava/lang/Object;

    #@7e
    move-result-object v2

    #@7f
    check-cast v2, Ljavax/sip/header/Header;

    #@81
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->addFirst(Ljavax/sip/header/Header;)V

    #@84
    .line 788
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    #@86
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/MaxForwards;->clone()Ljava/lang/Object;

    #@89
    move-result-object v2

    #@8a
    check-cast v2, Ljavax/sip/header/Header;

    #@8c
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@8f
    .line 794
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    #@92
    move-result-object v2

    #@93
    if-eqz v2, :cond_1

    #@95
    .line 795
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RouteList;->clone()Ljava/lang/Object;

    #@9c
    move-result-object v2

    #@9d
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@9f
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@a2
    .line 797
    :cond_1
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@a5
    move-result-object v2

    #@a6
    if-eqz v2, :cond_2

    #@a8
    .line 798
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@af
    .line 801
    :cond_2
    return-object v0

    #@b0
    .line 782
    :catch_0
    move-exception v1

    #@b1
    .line 783
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    #@b4
    goto :goto_0
.end method

.method public final createErrorAck(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .locals 3
    .param p1, "responseToHeader"    # Lgov/nist/javax/sip/header/To;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 916
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@5
    .line 917
    .local v0, "newRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@7
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lgov/nist/javax/sip/header/RequestLine;

    #@d
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    #@10
    .line 918
    const-string/jumbo v1, "ACK"

    #@13
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    #@16
    .line 919
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@18
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CallID;->clone()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljavax/sip/header/Header;

    #@1e
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@21
    .line 920
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    #@23
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/MaxForwards;->clone()Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Ljavax/sip/header/Header;

    #@29
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@2c
    .line 923
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->fromHeader:Lgov/nist/javax/sip/header/From;

    #@2e
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Ljavax/sip/header/Header;

    #@34
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@37
    .line 924
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Ljavax/sip/header/Header;

    #@3d
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@40
    .line 925
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->clone()Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Ljavax/sip/header/Header;

    #@4a
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->addFirst(Ljavax/sip/header/Header;)V

    #@4d
    .line 926
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@4f
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CSeq;->clone()Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    check-cast v1, Ljavax/sip/header/Header;

    #@55
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@58
    .line 927
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@5b
    move-result-object v1

    #@5c
    const-string/jumbo v2, "ACK"

    #@5f
    invoke-interface {v1, v2}, Ljavax/sip/header/CSeqHeader;->setMethod(Ljava/lang/String;)V

    #@62
    .line 934
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    #@65
    move-result-object v1

    #@66
    if-eqz v1, :cond_0

    #@68
    .line 935
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RouteList;->clone()Ljava/lang/Object;

    #@6f
    move-result-object v1

    #@70
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@72
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V

    #@75
    .line 937
    :cond_0
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@78
    move-result-object v1

    #@79
    if-eqz v1, :cond_1

    #@7b
    .line 938
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@82
    .line 941
    :cond_1
    return-object v0
.end method

.method public createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;
    .locals 2
    .param p1, "statusCode"    # I

    #@0
    .prologue
    .line 662
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 663
    .local v0, "reasonPhrase":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;
    .locals 9
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    #@0
    .prologue
    .line 689
    new-instance v3, Lgov/nist/javax/sip/message/SIPResponse;

    #@2
    invoke-direct {v3}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    #@5
    .line 691
    .local v3, "newResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_0
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    #@8
    .line 695
    if-eqz p2, :cond_3

    #@a
    .line 696
    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    #@d
    .line 699
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .line 700
    .local v2, "headerIterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_4

    #@17
    .line 701
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    #@1d
    .line 702
    .local v4, "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v6, v4, Lgov/nist/javax/sip/header/From;

    #@1f
    if-nez v6, :cond_2

    #@21
    .line 703
    instance-of v6, v4, Lgov/nist/javax/sip/header/To;

    #@23
    .line 702
    if-nez v6, :cond_2

    #@25
    .line 704
    instance-of v6, v4, Lgov/nist/javax/sip/header/ViaList;

    #@27
    .line 702
    if-nez v6, :cond_2

    #@29
    .line 705
    instance-of v6, v4, Lgov/nist/javax/sip/header/CallID;

    #@2b
    .line 702
    if-nez v6, :cond_2

    #@2d
    .line 706
    instance-of v6, v4, Lgov/nist/javax/sip/header/RecordRouteList;

    #@2f
    if-eqz v6, :cond_1

    #@31
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->mustCopyRR(I)Z

    #@34
    move-result v6

    #@35
    .line 702
    if-nez v6, :cond_2

    #@37
    .line 707
    :cond_1
    instance-of v6, v4, Lgov/nist/javax/sip/header/CSeq;

    #@39
    .line 702
    if-nez v6, :cond_2

    #@3b
    .line 709
    instance-of v6, v4, Lgov/nist/javax/sip/header/TimeStamp;

    #@3d
    .line 702
    if-eqz v6, :cond_0

    #@3f
    .line 713
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    #@45
    const/4 v7, 0x0

    #@46
    invoke-virtual {v3, v6, v7}, Lgov/nist/javax/sip/message/SIPResponse;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_1 .. :try_end_1} :catch_0

    #@49
    goto :goto_1

    #@4a
    .line 714
    :catch_0
    move-exception v0

    #@4b
    .line 715
    .local v0, "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    #@4e
    goto :goto_1

    #@4f
    .line 692
    .end local v0    # "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    .end local v2    # "headerIterator":Ljava/util/Iterator;
    .end local v4    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :catch_1
    move-exception v1

    #@50
    .line 693
    .local v1, "ex":Ljava/text/ParseException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@52
    new-instance v7, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v8, "Bad code "

    #@5a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@69
    throw v6

    #@6a
    .line 698
    .end local v1    # "ex":Ljava/text/ParseException;
    :cond_3
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    #@71
    goto :goto_0

    #@72
    .line 719
    .restart local v2    # "headerIterator":Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    #@75
    move-result-object v6

    #@76
    if-eqz v6, :cond_5

    #@78
    .line 720
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@7f
    .line 723
    :cond_5
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@82
    move-result v6

    #@83
    const/16 v7, 0x64

    #@85
    if-ne v6, v7, :cond_6

    #@87
    .line 725
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@8a
    move-result-object v6

    #@8b
    const-string/jumbo v7, "tag"

    #@8e
    invoke-interface {v6, v7}, Ljavax/sip/header/ToHeader;->removeParameter(Ljava/lang/String;)V

    #@91
    .line 728
    :cond_6
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    #@94
    move-result-object v5

    #@95
    .line 729
    .local v5, "server":Ljavax/sip/header/ServerHeader;
    if-eqz v5, :cond_7

    #@97
    .line 730
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@9a
    .line 732
    :cond_7
    return-object v3
.end method

.method public createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;
    .locals 12
    .param p1, "requestLine"    # Lgov/nist/javax/sip/header/RequestLine;
    .param p2, "switchHeaders"    # Z

    #@0
    .prologue
    .line 977
    new-instance v7, Lgov/nist/javax/sip/message/SIPRequest;

    #@2
    invoke-direct {v7}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@5
    .line 978
    .local v7, "newRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iput-object p1, v7, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@7
    .line 979
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    #@a
    move-result-object v5

    #@b
    .line 980
    .local v5, "headerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v11

    #@f
    if-eqz v11, :cond_9

    #@11
    .line 981
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v8

    #@15
    check-cast v8, Lgov/nist/javax/sip/header/SIPHeader;

    #@17
    .line 984
    .local v8, "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v11, v8, Lgov/nist/javax/sip/header/CSeq;

    #@19
    if-eqz v11, :cond_2

    #@1b
    .line 985
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Lgov/nist/javax/sip/header/CSeq;

    #@21
    .line 986
    .local v6, "newCseq":Lgov/nist/javax/sip/header/CSeq;
    move-object v8, v6

    #@22
    .line 988
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    #@25
    move-result-object v11

    #@26
    invoke-virtual {v6, v11}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    #@29
    .line 1030
    .end local v6    # "newCseq":Lgov/nist/javax/sip/header/CSeq;
    :cond_1
    :goto_1
    const/4 v11, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v7, v8, v11}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_1 .. :try_end_1} :catch_0

    #@2d
    goto :goto_0

    #@2e
    .line 1031
    :catch_0
    move-exception v1

    #@2f
    .line 1032
    .local v1, "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    #@32
    goto :goto_0

    #@33
    .line 991
    .end local v1    # "e":Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :cond_2
    instance-of v11, v8, Lgov/nist/javax/sip/header/ViaList;

    #@35
    if-eqz v11, :cond_3

    #@37
    .line 992
    check-cast v8, Lgov/nist/javax/sip/header/ViaList;

    #@39
    .end local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@3c
    move-result-object v11

    #@3d
    invoke-interface {v11}, Ljavax/sip/header/Header;->clone()Ljava/lang/Object;

    #@40
    move-result-object v10

    #@41
    check-cast v10, Lgov/nist/javax/sip/header/Via;

    #@43
    .line 993
    .local v10, "via":Lgov/nist/javax/sip/header/Via;
    const-string/jumbo v11, "branch"

    #@46
    invoke-virtual {v10, v11}, Lgov/nist/javax/sip/header/Via;->removeParameter(Ljava/lang/String;)V

    #@49
    .line 994
    move-object v8, v10

    #@4a
    .restart local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_1

    #@4b
    .line 996
    .end local v10    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_3
    instance-of v11, v8, Lgov/nist/javax/sip/header/To;

    #@4d
    if-eqz v11, :cond_5

    #@4f
    move-object v9, v8

    #@50
    .line 997
    check-cast v9, Lgov/nist/javax/sip/header/To;

    #@52
    .line 998
    .local v9, "to":Lgov/nist/javax/sip/header/To;
    if-eqz p2, :cond_4

    #@54
    .line 999
    new-instance v8, Lgov/nist/javax/sip/header/From;

    #@56
    .end local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-direct {v8, v9}, Lgov/nist/javax/sip/header/From;-><init>(Lgov/nist/javax/sip/header/To;)V

    #@59
    .restart local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    move-object v11, v8

    #@5a
    .line 1000
    check-cast v11, Lgov/nist/javax/sip/header/From;

    #@5c
    invoke-virtual {v11}, Lgov/nist/javax/sip/header/From;->removeTag()V

    #@5f
    goto :goto_1

    #@60
    .line 1002
    :cond_4
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    #@63
    move-result-object v8

    #@64
    .end local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    check-cast v8, Lgov/nist/javax/sip/header/SIPHeader;

    #@66
    .restart local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    move-object v11, v8

    #@67
    .line 1003
    check-cast v11, Lgov/nist/javax/sip/header/To;

    #@69
    invoke-virtual {v11}, Lgov/nist/javax/sip/header/To;->removeTag()V

    #@6c
    goto :goto_1

    #@6d
    .line 1005
    .end local v9    # "to":Lgov/nist/javax/sip/header/To;
    :cond_5
    instance-of v11, v8, Lgov/nist/javax/sip/header/From;

    #@6f
    if-eqz v11, :cond_7

    #@71
    move-object v4, v8

    #@72
    .line 1006
    check-cast v4, Lgov/nist/javax/sip/header/From;

    #@74
    .line 1007
    .local v4, "from":Lgov/nist/javax/sip/header/From;
    if-eqz p2, :cond_6

    #@76
    .line 1008
    new-instance v8, Lgov/nist/javax/sip/header/To;

    #@78
    .end local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-direct {v8, v4}, Lgov/nist/javax/sip/header/To;-><init>(Lgov/nist/javax/sip/header/From;)V

    #@7b
    .restart local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    move-object v11, v8

    #@7c
    .line 1009
    check-cast v11, Lgov/nist/javax/sip/header/To;

    #@7e
    invoke-virtual {v11}, Lgov/nist/javax/sip/header/To;->removeTag()V

    #@81
    goto :goto_1

    #@82
    .line 1011
    :cond_6
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    #@85
    move-result-object v8

    #@86
    .end local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    check-cast v8, Lgov/nist/javax/sip/header/SIPHeader;

    #@88
    .restart local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    move-object v11, v8

    #@89
    .line 1012
    check-cast v11, Lgov/nist/javax/sip/header/From;

    #@8b
    invoke-virtual {v11}, Lgov/nist/javax/sip/header/From;->removeTag()V

    #@8e
    goto :goto_1

    #@8f
    .line 1014
    .end local v4    # "from":Lgov/nist/javax/sip/header/From;
    :cond_7
    instance-of v11, v8, Lgov/nist/javax/sip/header/ContentLength;

    #@91
    if-eqz v11, :cond_8

    #@93
    .line 1015
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@96
    move-result-object v0

    #@97
    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    #@99
    .line 1017
    .local v0, "cl":Lgov/nist/javax/sip/header/ContentLength;
    const/4 v11, 0x0

    #@9a
    :try_start_2
    invoke-virtual {v0, v11}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_2
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    #@9d
    .line 1020
    :goto_2
    move-object v8, v0

    #@9e
    goto :goto_1

    #@9f
    .line 1018
    :catch_1
    move-exception v3

    #@a0
    .local v3, "e":Ljavax/sip/InvalidArgumentException;
    goto :goto_2

    #@a1
    .line 1021
    .end local v0    # "cl":Lgov/nist/javax/sip/header/ContentLength;
    .end local v3    # "e":Ljavax/sip/InvalidArgumentException;
    :cond_8
    instance-of v11, v8, Lgov/nist/javax/sip/header/CallID;

    #@a3
    if-nez v11, :cond_1

    #@a5
    instance-of v11, v8, Lgov/nist/javax/sip/header/MaxForwards;

    #@a7
    if-eqz v11, :cond_0

    #@a9
    goto :goto_1

    #@aa
    .line 1035
    .end local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_9
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@ad
    move-result-object v11

    #@ae
    if-eqz v11, :cond_a

    #@b0
    .line 1036
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    #@b3
    move-result-object v11

    #@b4
    invoke-virtual {v7, v11}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@b7
    .line 1039
    :cond_a
    return-object v7

    #@b8
    .line 989
    .restart local v6    # "newCseq":Lgov/nist/javax/sip/header/CSeq;
    .restart local v8    # "nextHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :catch_2
    move-exception v2

    #@b9
    .local v2, "e":Ljava/text/ParseException;
    goto/16 :goto_1
.end method

.method public debugDump()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 199
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->debugDump()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 200
    .local v0, "superstring":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@7
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->stringRepresentation:Ljava/lang/String;

    #@9
    .line 201
    const-class v1, Lgov/nist/javax/sip/message/SIPRequest;

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    #@12
    .line 202
    const-string/jumbo v1, "{"

    #@15
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    #@18
    .line 203
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 204
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@1e
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->debugDump()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    #@25
    .line 205
    :cond_0
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    #@28
    .line 206
    const-string/jumbo v1, "}"

    #@2b
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    #@2e
    .line 207
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->stringRepresentation:Ljava/lang/String;

    #@30
    return-object v1
.end method

.method public encode()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 439
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 440
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    #@7
    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@e
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 447
    .local v0, "retval":Ljava/lang/String;
    :goto_0
    return-object v0

    #@23
    .line 442
    .end local v0    # "retval":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 443
    const-string/jumbo v0, "\r\n\r\n"

    #@2c
    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 445
    .end local v0    # "retval":Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_0
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .locals 7
    .param p1, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 623
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    #@4
    move-result v4

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 625
    const-string/jumbo v4, "\r\n\r\n"

    #@a
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    #@d
    move-result-object v4

    #@e
    return-object v4

    #@f
    .line 626
    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@11
    if-nez v4, :cond_1

    #@13
    .line 627
    new-array v4, v6, [B

    #@15
    return-object v4

    #@16
    .line 630
    :cond_1
    const/4 v2, 0x0

    #@17
    .line 631
    .local v2, "rlbytes":[B
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 633
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@1d
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    const-string/jumbo v5, "UTF-8"

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    move-result-object v2

    #@28
    .line 638
    .end local v2    # "rlbytes":[B
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    #@2b
    move-result-object v3

    #@2c
    .line 639
    .local v3, "superbytes":[B
    array-length v4, v2

    #@2d
    array-length v5, v3

    #@2e
    add-int/2addr v4, v5

    #@2f
    new-array v1, v4, [B

    #@31
    .line 640
    .local v1, "retval":[B
    array-length v4, v2

    #@32
    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@35
    .line 641
    array-length v4, v2

    #@36
    array-length v5, v3

    #@37
    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3a
    .line 642
    return-object v1

    #@3b
    .line 634
    .end local v1    # "retval":[B
    .end local v3    # "superbytes":[B
    .restart local v2    # "rlbytes":[B
    :catch_0
    move-exception v0

    #@3c
    .line 635
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@3f
    goto :goto_0
.end method

.method public encodeMessage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 455
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 456
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    #@7
    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@e
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 462
    .local v0, "retval":Ljava/lang/String;
    :goto_0
    return-object v0

    #@23
    .line 458
    .end local v0    # "retval":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 459
    const-string/jumbo v0, "\r\n\r\n"

    #@2c
    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 461
    .end local v0    # "retval":Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 497
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 498
    return v1

    #@10
    :cond_0
    move-object v0, p1

    #@11
    .line 499
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@13
    .line 501
    .local v0, "that":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@15
    iget-object v3, v0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@17
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/RequestLine;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    :cond_1
    return v1
.end method

.method public getDialogId(Z)Ljava/lang/String;
    .locals 5
    .param p1, "isServer"    # Z

    #@0
    .prologue
    .line 551
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    #@6
    .line 552
    .local v0, "cid":Lgov/nist/javax/sip/header/CallID;
    new-instance v2, Ljava/lang/StringBuffer;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@f
    .line 553
    .local v2, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lgov/nist/javax/sip/header/From;

    #@15
    .line 554
    .local v1, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Lgov/nist/javax/sip/header/To;

    #@1b
    .line 555
    .local v3, "to":Lgov/nist/javax/sip/header/To;
    if-nez p1, :cond_2

    #@1d
    .line 557
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 558
    const-string/jumbo v4, ":"

    #@26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    .line 559
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 562
    :cond_0
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    if-eqz v4, :cond_1

    #@36
    .line 563
    const-string/jumbo v4, ":"

    #@39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    .line 564
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    .line 578
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    return-object v4

    #@4c
    .line 568
    :cond_2
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    if-eqz v4, :cond_3

    #@52
    .line 569
    const-string/jumbo v4, ":"

    #@55
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    .line 570
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    .line 573
    :cond_3
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    if-eqz v4, :cond_1

    #@65
    .line 574
    const-string/jumbo v4, ":"

    #@68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6b
    .line 575
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@72
    goto :goto_0
.end method

.method public getDialogId(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "isServer"    # Z
    .param p2, "toTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 586
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lgov/nist/javax/sip/header/From;

    #@6
    .line 587
    .local v1, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    #@c
    .line 588
    .local v0, "cid":Lgov/nist/javax/sip/header/CallID;
    new-instance v2, Ljava/lang/StringBuffer;

    #@e
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@15
    .line 589
    .local v2, "retval":Ljava/lang/StringBuffer;
    if-nez p1, :cond_2

    #@17
    .line 591
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 592
    const-string/jumbo v3, ":"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 593
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    .line 596
    :cond_0
    if-eqz p2, :cond_1

    #@2c
    .line 597
    const-string/jumbo v3, ":"

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    .line 598
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    .line 612
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    return-object v3

    #@3e
    .line 602
    :cond_2
    if-eqz p2, :cond_3

    #@40
    .line 603
    const-string/jumbo v3, ":"

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    .line 604
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 607
    :cond_3
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    if-eqz v3, :cond_1

    #@4f
    .line 608
    const-string/jumbo v3, ":"

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@55
    .line 609
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    goto :goto_0
.end method

.method public getFirstLine()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1099
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1100
    return-object v1

    #@6
    .line 1102
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getInviteTransaction()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1204
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->inviteTransaction:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getMergeId()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1177
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 1178
    .local v2, "fromTag":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@7
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/CSeq;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1179
    .local v1, "cseq":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    #@d
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 1183
    .local v0, "callId":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    #@14
    move-result-object v4

    #@15
    invoke-interface {v4}, Ljavax/sip/address/URI;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 1185
    .local v3, "requestUri":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@1b
    .line 1186
    new-instance v4, Ljava/lang/StringBuffer;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@20
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, ":"

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, ":"

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    move-result-object v4

    #@3a
    const-string/jumbo v5, ":"

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    return-object v4

    #@4a
    .line 1189
    :cond_0
    return-object v5
.end method

.method public getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .locals 2

    #@0
    .prologue
    .line 511
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageAsEncodedStrings()Ljava/util/LinkedList;

    #@3
    move-result-object v0

    #@4
    .line 512
    .local v0, "retval":Ljava/util/LinkedList;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 513
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    #@b
    .line 514
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@d
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@14
    .line 516
    :cond_0
    return-object v0
.end method

.method public getMessageChannel()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1155
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->messageChannel:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 425
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 426
    return-object v1

    #@6
    .line 428
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getRequestLine()Lgov/nist/javax/sip/header/RequestLine;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@2
    return-object v0
.end method

.method public getRequestURI()Ljavax/sip/address/URI;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 364
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 365
    return-object v1

    #@6
    .line 367
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSIPVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1122
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getSipVersion()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTransaction()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1133
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1075
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lgov/nist/javax/sip/header/Via;

    #@a
    .line 1076
    .local v0, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public getViaPort()I
    .locals 2

    #@0
    .prologue
    .line 1086
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lgov/nist/javax/sip/header/Via;

    #@a
    .line 1087
    .local v0, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->hasPort()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1088
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getPort()I

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 1090
    :cond_0
    const/16 v1, 0x13c4

    #@17
    return v1
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "matchObj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 529
    if-nez p1, :cond_0

    #@4
    .line 530
    return v5

    #@5
    .line 531
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_1

    #@13
    .line 532
    return v2

    #@14
    .line 533
    :cond_1
    if-ne p1, p0, :cond_2

    #@16
    .line 534
    return v5

    #@17
    :cond_2
    move-object v1, p1

    #@18
    .line 535
    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    #@1a
    .line 536
    .local v1, "that":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v0, v1, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@1c
    .line 537
    .local v0, "rline":Lgov/nist/javax/sip/header/RequestLine;
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@1e
    if-nez v3, :cond_3

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 538
    return v2

    #@23
    .line 539
    :cond_3
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@25
    if-ne v3, v0, :cond_4

    #@27
    .line 540
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    return v2

    #@2c
    .line 541
    :cond_4
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@2e
    iget-object v4, v1, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@30
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/RequestLine;->match(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_5

    #@36
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    #@39
    move-result v2

    #@3a
    :cond_5
    return v2
.end method

.method protected setDefaults()V
    .locals 5

    #@0
    .prologue
    .line 323
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 324
    return-void

    #@5
    .line 325
    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@7
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 327
    .local v1, "method":Ljava/lang/String;
    if-nez v1, :cond_1

    #@d
    .line 328
    return-void

    #@e
    .line 329
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@10
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    #@13
    move-result-object v3

    #@14
    .line 330
    .local v3, "u":Lgov/nist/javax/sip/address/GenericURI;
    if-nez v3, :cond_2

    #@16
    .line 331
    return-void

    #@17
    .line 332
    :cond_2
    const-string/jumbo v4, "REGISTER"

    #@1a
    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_3

    #@20
    const-string/jumbo v4, "INVITE"

    #@23
    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@26
    move-result v4

    #@27
    if-nez v4, :cond_4

    #@29
    .line 333
    :cond_3
    instance-of v4, v3, Lgov/nist/javax/sip/address/SipUri;

    #@2b
    if-eqz v4, :cond_4

    #@2d
    move-object v2, v3

    #@2e
    .line 334
    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    #@30
    .line 335
    .local v2, "sipUri":Lgov/nist/javax/sip/address/SipUri;
    const-string/jumbo v4, "ip"

    #@33
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/address/SipUri;->setUserParam(Ljava/lang/String;)V

    #@36
    .line 337
    :try_start_0
    const-string/jumbo v4, "udp"

    #@39
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/address/SipUri;->setTransportParam(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 320
    .end local v2    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :cond_4
    :goto_0
    return-void

    #@3d
    .line 338
    .restart local v2    # "sipUri":Lgov/nist/javax/sip/address/SipUri;
    :catch_0
    move-exception v0

    #@3e
    .local v0, "ex":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public setInviteTransaction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "inviteTransaction"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1197
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->inviteTransaction:Ljava/lang/Object;

    #@2
    .line 1196
    return-void
.end method

.method public setMessageChannel(Ljava/lang/Object;)V
    .locals 0
    .param p1, "messageChannel"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1165
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->messageChannel:Ljava/lang/Object;

    #@2
    .line 1164
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 397
    if-nez p1, :cond_0

    #@2
    .line 398
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "null method"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 399
    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@d
    if-nez v2, :cond_1

    #@f
    .line 400
    new-instance v2, Lgov/nist/javax/sip/header/RequestLine;

    #@11
    invoke-direct {v2}, Lgov/nist/javax/sip/header/RequestLine;-><init>()V

    #@14
    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@16
    .line 407
    :cond_1
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 408
    .local v1, "meth":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@1c
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    #@1f
    .line 410
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 412
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    #@25
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 396
    :cond_2
    :goto_0
    return-void

    #@29
    .line 413
    :catch_0
    move-exception v0

    #@2a
    .local v0, "e":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V
    .locals 0
    .param p1, "requestLine"    # Lgov/nist/javax/sip/header/RequestLine;

    #@0
    .prologue
    .line 180
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@2
    .line 179
    return-void
.end method

.method protected setRequestLineDefaults()V
    .locals 3

    #@0
    .prologue
    .line 348
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@2
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 349
    .local v1, "method":Ljava/lang/String;
    if-nez v1, :cond_0

    #@8
    .line 350
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    #@e
    .line 351
    .local v0, "cseq":Lgov/nist/javax/sip/header/CSeq;
    if-eqz v0, :cond_0

    #@10
    .line 352
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 353
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@1a
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    #@1d
    .line 347
    .end local v0    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    :cond_0
    return-void
.end method

.method public setRequestURI(Ljavax/sip/address/URI;)V
    .locals 2
    .param p1, "uri"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 380
    if-nez p1, :cond_0

    #@2
    .line 381
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Null request URI"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 383
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 384
    new-instance v0, Lgov/nist/javax/sip/header/RequestLine;

    #@11
    invoke-direct {v0}, Lgov/nist/javax/sip/header/RequestLine;-><init>()V

    #@14
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@16
    .line 386
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@18
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    #@1a
    .end local p1    # "uri":Ljavax/sip/address/URI;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RequestLine;->setUri(Ljavax/sip/address/URI;)V

    #@1d
    .line 387
    const/4 v0, 0x0

    #@1e
    iput-boolean v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->nullRequest:Z

    #@20
    .line 379
    return-void
.end method

.method public setSIPVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "sipVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1111
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "SIP/2.0"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1113
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RequestLine;->setSipVersion(Ljava/lang/String;)V

    #@10
    .line 1110
    return-void

    #@11
    .line 1112
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    #@13
    const-string/jumbo v1, "sipVersion"

    #@16
    const/4 v2, 0x0

    #@17
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1a
    throw v0
.end method

.method public setTransaction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "transaction"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1142
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    #@2
    .line 1141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 470
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
