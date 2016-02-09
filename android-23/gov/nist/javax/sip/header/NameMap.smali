.class public Lgov/nist/javax/sip/header/NameMap;
.super Ljava/lang/Object;
.source "NameMap.java"

# interfaces
.implements Lgov/nist/javax/sip/header/SIPHeaderNames;
.implements Lgov/nist/core/PackageNames;


# static fields
.field static nameMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-static {}, Lgov/nist/javax/sip/header/NameMap;->initializeNameMap()V

    #@3
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addExtensionHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    sget-object v0, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 73
    return-void
.end method

.method public static getClassFromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "headerName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 52
    sget-object v2, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    .line 53
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    #@f
    .line 54
    return-object v4

    #@10
    .line 57
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 58
    :catch_0
    move-exception v1

    #@16
    .line 59
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    return-object v4
.end method

.method private static initializeNameMap()V
    .locals 2

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    #@7
    .line 79
    const-string/jumbo v0, "Min-Expires"

    #@a
    const-class v1, Lgov/nist/javax/sip/header/MinExpires;

    #@c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 81
    const-string/jumbo v0, "Error-Info"

    #@16
    const-class v1, Lgov/nist/javax/sip/header/ErrorInfo;

    #@18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 83
    const-string/jumbo v0, "MIME-Version"

    #@22
    const-class v1, Lgov/nist/javax/sip/header/MimeVersion;

    #@24
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 85
    const-string/jumbo v0, "In-Reply-To"

    #@2e
    const-class v1, Lgov/nist/javax/sip/header/InReplyTo;

    #@30
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 87
    const-string/jumbo v0, "Allow"

    #@3a
    const-class v1, Lgov/nist/javax/sip/header/Allow;

    #@3c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 89
    const-string/jumbo v0, "Content-Language"

    #@46
    const-class v1, Lgov/nist/javax/sip/header/ContentLanguage;

    #@48
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@4f
    .line 91
    const-string/jumbo v0, "Call-Info"

    #@52
    const-class v1, Lgov/nist/javax/sip/header/CallInfo;

    #@54
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@5b
    .line 93
    const-string/jumbo v0, "CSeq"

    #@5e
    const-class v1, Lgov/nist/javax/sip/header/CSeq;

    #@60
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@67
    .line 95
    const-string/jumbo v0, "Alert-Info"

    #@6a
    const-class v1, Lgov/nist/javax/sip/header/AlertInfo;

    #@6c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@73
    .line 97
    const-string/jumbo v0, "Accept-Encoding"

    #@76
    const-class v1, Lgov/nist/javax/sip/header/AcceptEncoding;

    #@78
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@7f
    .line 99
    const-string/jumbo v0, "Accept"

    #@82
    const-class v1, Lgov/nist/javax/sip/header/Accept;

    #@84
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@8b
    .line 101
    const-string/jumbo v0, "Accept-Language"

    #@8e
    const-class v1, Lgov/nist/javax/sip/header/AcceptLanguage;

    #@90
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@97
    .line 103
    const-string/jumbo v0, "Record-Route"

    #@9a
    const-class v1, Lgov/nist/javax/sip/header/RecordRoute;

    #@9c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@a3
    .line 105
    const-string/jumbo v0, "Timestamp"

    #@a6
    const-class v1, Lgov/nist/javax/sip/header/TimeStamp;

    #@a8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@ab
    move-result-object v1

    #@ac
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@af
    .line 107
    const-string/jumbo v0, "To"

    #@b2
    const-class v1, Lgov/nist/javax/sip/header/To;

    #@b4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b7
    move-result-object v1

    #@b8
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@bb
    .line 109
    const-string/jumbo v0, "Via"

    #@be
    const-class v1, Lgov/nist/javax/sip/header/Via;

    #@c0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c3
    move-result-object v1

    #@c4
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@c7
    .line 111
    const-string/jumbo v0, "From"

    #@ca
    const-class v1, Lgov/nist/javax/sip/header/From;

    #@cc
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@cf
    move-result-object v1

    #@d0
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@d3
    .line 113
    const-string/jumbo v0, "Call-ID"

    #@d6
    const-class v1, Lgov/nist/javax/sip/header/CallID;

    #@d8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@db
    move-result-object v1

    #@dc
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@df
    .line 115
    const-string/jumbo v0, "Authorization"

    #@e2
    const-class v1, Lgov/nist/javax/sip/header/Authorization;

    #@e4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e7
    move-result-object v1

    #@e8
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@eb
    .line 117
    const-string/jumbo v0, "Proxy-Authenticate"

    #@ee
    const-class v1, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    #@f0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@f3
    move-result-object v1

    #@f4
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@f7
    .line 119
    const-string/jumbo v0, "Server"

    #@fa
    const-class v1, Lgov/nist/javax/sip/header/Server;

    #@fc
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@ff
    move-result-object v1

    #@100
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@103
    .line 121
    const-string/jumbo v0, "Unsupported"

    #@106
    const-class v1, Lgov/nist/javax/sip/header/Unsupported;

    #@108
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@10b
    move-result-object v1

    #@10c
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@10f
    .line 123
    const-string/jumbo v0, "Retry-After"

    #@112
    const-class v1, Lgov/nist/javax/sip/header/RetryAfter;

    #@114
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@117
    move-result-object v1

    #@118
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@11b
    .line 125
    const-string/jumbo v0, "Content-Type"

    #@11e
    const-class v1, Lgov/nist/javax/sip/header/ContentType;

    #@120
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@123
    move-result-object v1

    #@124
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@127
    .line 127
    const-string/jumbo v0, "Content-Encoding"

    #@12a
    const-class v1, Lgov/nist/javax/sip/header/ContentEncoding;

    #@12c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@12f
    move-result-object v1

    #@130
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@133
    .line 129
    const-string/jumbo v0, "Content-Length"

    #@136
    const-class v1, Lgov/nist/javax/sip/header/ContentLength;

    #@138
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13b
    move-result-object v1

    #@13c
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@13f
    .line 131
    const-string/jumbo v0, "Route"

    #@142
    const-class v1, Lgov/nist/javax/sip/header/Route;

    #@144
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@147
    move-result-object v1

    #@148
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@14b
    .line 133
    const-string/jumbo v0, "Contact"

    #@14e
    const-class v1, Lgov/nist/javax/sip/header/Contact;

    #@150
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@153
    move-result-object v1

    #@154
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@157
    .line 135
    const-string/jumbo v0, "WWW-Authenticate"

    #@15a
    const-class v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    #@15c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@15f
    move-result-object v1

    #@160
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@163
    .line 137
    const-string/jumbo v0, "Max-Forwards"

    #@166
    const-class v1, Lgov/nist/javax/sip/header/MaxForwards;

    #@168
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@16b
    move-result-object v1

    #@16c
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@16f
    .line 139
    const-string/jumbo v0, "Organization"

    #@172
    const-class v1, Lgov/nist/javax/sip/header/Organization;

    #@174
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@177
    move-result-object v1

    #@178
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@17b
    .line 141
    const-string/jumbo v0, "Proxy-Authorization"

    #@17e
    const-class v1, Lgov/nist/javax/sip/header/ProxyAuthorization;

    #@180
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@183
    move-result-object v1

    #@184
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@187
    .line 143
    const-string/jumbo v0, "Proxy-Require"

    #@18a
    const-class v1, Lgov/nist/javax/sip/header/ProxyRequire;

    #@18c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@18f
    move-result-object v1

    #@190
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@193
    .line 145
    const-string/jumbo v0, "Require"

    #@196
    const-class v1, Lgov/nist/javax/sip/header/Require;

    #@198
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@19b
    move-result-object v1

    #@19c
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@19f
    .line 147
    const-string/jumbo v0, "Content-Disposition"

    #@1a2
    const-class v1, Lgov/nist/javax/sip/header/ContentDisposition;

    #@1a4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1a7
    move-result-object v1

    #@1a8
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@1ab
    .line 149
    const-string/jumbo v0, "Subject"

    #@1ae
    const-class v1, Lgov/nist/javax/sip/header/Subject;

    #@1b0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1b3
    move-result-object v1

    #@1b4
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@1b7
    .line 151
    const-string/jumbo v0, "User-Agent"

    #@1ba
    const-class v1, Lgov/nist/javax/sip/header/UserAgent;

    #@1bc
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1bf
    move-result-object v1

    #@1c0
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@1c3
    .line 153
    const-string/jumbo v0, "Warning"

    #@1c6
    const-class v1, Lgov/nist/javax/sip/header/Warning;

    #@1c8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1cb
    move-result-object v1

    #@1cc
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@1cf
    .line 155
    const-string/jumbo v0, "Priority"

    #@1d2
    const-class v1, Lgov/nist/javax/sip/header/Priority;

    #@1d4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d7
    move-result-object v1

    #@1d8
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@1db
    .line 157
    const-string/jumbo v0, "Date"

    #@1de
    const-class v1, Lgov/nist/javax/sip/header/SIPDateHeader;

    #@1e0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e3
    move-result-object v1

    #@1e4
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@1e7
    .line 159
    const-string/jumbo v0, "Expires"

    #@1ea
    const-class v1, Lgov/nist/javax/sip/header/Expires;

    #@1ec
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1ef
    move-result-object v1

    #@1f0
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@1f3
    .line 161
    const-string/jumbo v0, "Supported"

    #@1f6
    const-class v1, Lgov/nist/javax/sip/header/Supported;

    #@1f8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1fb
    move-result-object v1

    #@1fc
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@1ff
    .line 163
    const-string/jumbo v0, "Reply-To"

    #@202
    const-class v1, Lgov/nist/javax/sip/header/ReplyTo;

    #@204
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@207
    move-result-object v1

    #@208
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@20b
    .line 165
    const-string/jumbo v0, "Subscription-State"

    #@20e
    const-class v1, Lgov/nist/javax/sip/header/SubscriptionState;

    #@210
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@213
    move-result-object v1

    #@214
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@217
    .line 167
    const-string/jumbo v0, "Event"

    #@21a
    const-class v1, Lgov/nist/javax/sip/header/Event;

    #@21c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21f
    move-result-object v1

    #@220
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@223
    .line 169
    const-string/jumbo v0, "Allow-Events"

    #@226
    const-class v1, Lgov/nist/javax/sip/header/AllowEvents;

    #@228
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@22b
    move-result-object v1

    #@22c
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@22f
    .line 173
    const-string/jumbo v0, "Referred-By"

    #@232
    const-string/jumbo v1, "ReferredBy"

    #@235
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@238
    .line 174
    const-string/jumbo v0, "Session-Expires"

    #@23b
    const-string/jumbo v1, "SessionExpires"

    #@23e
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@241
    .line 175
    const-string/jumbo v0, "Min-SE"

    #@244
    const-string/jumbo v1, "MinSE"

    #@247
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@24a
    .line 176
    const-string/jumbo v0, "Replaces"

    #@24d
    const-string/jumbo v1, "Replaces"

    #@250
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@253
    .line 178
    const-string/jumbo v0, "Join"

    #@256
    const-string/jumbo v1, "Join"

    #@259
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@25c
    .line 183
    const-string/jumbo v0, "P-Access-Network-Info"

    #@25f
    const-class v1, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    #@261
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@264
    move-result-object v1

    #@265
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@268
    .line 185
    const-string/jumbo v0, "P-Asserted-Identity"

    #@26b
    const-class v1, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    #@26d
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@270
    move-result-object v1

    #@271
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@274
    .line 187
    const-string/jumbo v0, "P-Associated-URI"

    #@277
    const-class v1, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    #@279
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27c
    move-result-object v1

    #@27d
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@280
    .line 189
    const-string/jumbo v0, "P-Called-Party-ID"

    #@283
    const-class v1, Lgov/nist/javax/sip/header/ims/PCalledPartyID;

    #@285
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@288
    move-result-object v1

    #@289
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@28c
    .line 191
    const-string/jumbo v0, "P-Charging-Function-Addresses"

    #@28f
    const-class v1, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    #@291
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@294
    move-result-object v1

    #@295
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@298
    .line 193
    const-string/jumbo v0, "P-Charging-Vector"

    #@29b
    const-class v1, Lgov/nist/javax/sip/header/ims/PChargingVector;

    #@29d
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2a0
    move-result-object v1

    #@2a1
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@2a4
    .line 195
    const-string/jumbo v0, "P-Media-Authorization"

    #@2a7
    const-class v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    #@2a9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2ac
    move-result-object v1

    #@2ad
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@2b0
    .line 197
    const-string/jumbo v0, "Path"

    #@2b3
    const-class v1, Lgov/nist/javax/sip/header/ims/Path;

    #@2b5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2b8
    move-result-object v1

    #@2b9
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@2bc
    .line 199
    const-string/jumbo v0, "P-Preferred-Identity"

    #@2bf
    const-class v1, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;

    #@2c1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2c4
    move-result-object v1

    #@2c5
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@2c8
    .line 201
    const-string/jumbo v0, "Privacy"

    #@2cb
    const-class v1, Lgov/nist/javax/sip/header/ims/Privacy;

    #@2cd
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2d0
    move-result-object v1

    #@2d1
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@2d4
    .line 203
    const-string/jumbo v0, "Service-Route"

    #@2d7
    const-class v1, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    #@2d9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2dc
    move-result-object v1

    #@2dd
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@2e0
    .line 205
    const-string/jumbo v0, "P-Visited-Network-ID"

    #@2e3
    const-class v1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    #@2e5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2e8
    move-result-object v1

    #@2e9
    invoke-static {v0, v1}, Lgov/nist/javax/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    #@2ec
    .line 77
    return-void
.end method

.method protected static putNameMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    sget-object v0, Lgov/nist/javax/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    #@2
    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 46
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 45
    return-void
.end method
