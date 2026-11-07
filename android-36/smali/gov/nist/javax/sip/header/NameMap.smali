.class public Lgov/nist/javax/sip/header/NameMap;
.super Ljava/lang/Object;
.source "NameMap.java"

# interfaces
.implements Lgov/nist/javax/sip/header/SIPHeaderNames;
.implements Lgov/nist/core/PackageNames;


# static fields
.field static greylist nameMap:Ljava/util/Hashtable;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 0

    .line 42
    invoke-static {}, Lgov/nist/javax/sip/header/NameMap;->initializeNameMap()V

    .line 43
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addExtensionHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 74
    sget-object v0, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public static greylist getClassFromName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "headerName"    # Ljava/lang/String;

    .line 52
    sget-object v0, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 54
    return-object v1

    .line 57
    :cond_10
    :try_start_10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v1

    .line 58
    :catch_15
    move-exception v2

    .line 59
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    return-object v1
.end method

.method private static greylist initializeNameMap()V
    .registers 2

    .line 78
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    .line 79
    const-class v0, Lgov/nist/javax/sip/header/MinExpires;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Min-Expires"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-class v0, Lgov/nist/javax/sip/header/ErrorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error-Info"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-class v0, Lgov/nist/javax/sip/header/MimeVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIME-Version"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-class v0, Lgov/nist/javax/sip/header/InReplyTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In-Reply-To"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-class v0, Lgov/nist/javax/sip/header/Allow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Allow"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-class v0, Lgov/nist/javax/sip/header/ContentLanguage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Language"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-class v0, Lgov/nist/javax/sip/header/CallInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Call-Info"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-class v0, Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSeq"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-class v0, Lgov/nist/javax/sip/header/AlertInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alert-Info"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-class v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-class v0, Lgov/nist/javax/sip/header/Accept;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-class v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept-Language"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-class v0, Lgov/nist/javax/sip/header/RecordRoute;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Record-Route"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-class v0, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timestamp"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-class v0, Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "To"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-class v0, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Via"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-class v0, Lgov/nist/javax/sip/header/From;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "From"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-class v0, Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Call-ID"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-class v0, Lgov/nist/javax/sip/header/Authorization;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-class v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Proxy-Authenticate"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-class v0, Lgov/nist/javax/sip/header/Server;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Server"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-class v0, Lgov/nist/javax/sip/header/Unsupported;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsupported"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-class v0, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Retry-After"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-class v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-class v0, Lgov/nist/javax/sip/header/ContentEncoding;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Encoding"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-class v0, Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-class v0, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Route"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-class v0, Lgov/nist/javax/sip/header/Contact;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Contact"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-class v0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WWW-Authenticate"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-class v0, Lgov/nist/javax/sip/header/MaxForwards;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Max-Forwards"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-class v0, Lgov/nist/javax/sip/header/Organization;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Organization"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-class v0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Proxy-Authorization"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-class v0, Lgov/nist/javax/sip/header/ProxyRequire;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Proxy-Require"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-class v0, Lgov/nist/javax/sip/header/Require;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Require"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-class v0, Lgov/nist/javax/sip/header/ContentDisposition;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Disposition"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-class v0, Lgov/nist/javax/sip/header/Subject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subject"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-class v0, Lgov/nist/javax/sip/header/UserAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-class v0, Lgov/nist/javax/sip/header/Warning;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Warning"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-class v0, Lgov/nist/javax/sip/header/Priority;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Priority"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-class v0, Lgov/nist/javax/sip/header/SIPDateHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Date"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-class v0, Lgov/nist/javax/sip/header/Expires;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expires"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-class v0, Lgov/nist/javax/sip/header/Supported;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Supported"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-class v0, Lgov/nist/javax/sip/header/ReplyTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reply-To"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-class v0, Lgov/nist/javax/sip/header/SubscriptionState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscription-State"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-class v0, Lgov/nist/javax/sip/header/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-class v0, Lgov/nist/javax/sip/header/AllowEvents;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Allow-Events"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "Referred-By"

    const-string v1, "ReferredBy"

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "Session-Expires"

    const-string v1, "SessionExpires"

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "Min-SE"

    const-string v1, "MinSE"

    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "Replaces"

    invoke-static {v0, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "Join"

    invoke-static {v0, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-class v0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P-Access-Network-Info"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-class v0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P-Asserted-Identity"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-class v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P-Associated-URI"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-class v0, Lgov/nist/javax/sip/header/ims/PCalledPartyID;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P-Called-Party-ID"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-class v0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P-Charging-Function-Addresses"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-class v0, Lgov/nist/javax/sip/header/ims/PChargingVector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P-Charging-Vector"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-class v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P-Media-Authorization"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-class v0, Lgov/nist/javax/sip/header/ims/Path;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Path"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-class v0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P-Preferred-Identity"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-class v0, Lgov/nist/javax/sip/header/ims/Privacy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Privacy"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-class v0, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service-Route"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-class v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P-Visited-Network-ID"

    invoke-static {v1, v0}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method protected static greylist putNameMap(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 46
    sget-object v0, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
