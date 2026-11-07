.class public Lgov/nist/javax/sip/parser/ParserFactory;
.super Ljava/lang/Object;
.source "ParserFactory.java"


# static fields
.field private static greylist constructorArgs:[Ljava/lang/Class;

.field private static greylist parserConstructorCache:Ljava/util/Hashtable;

.field private static greylist parserTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lgov/nist/javax/sip/parser/HeaderParser;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor greylist <clinit>()V
    .registers 3

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    .line 59
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Reply-To"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ReplyToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 63
    const-string v1, "In-Reply-To"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/InReplyToParser;

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 67
    const-string v1, "Accept-Encoding"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AcceptEncodingParser;

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 71
    const-string v1, "Accept-Language"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AcceptLanguageParser;

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "t"

    const-class v2, Lgov/nist/javax/sip/parser/ToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "To"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "From"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/FromParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "f"

    const-class v2, Lgov/nist/javax/sip/parser/FromParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "CSeq"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/CSeqParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Via"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ViaParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "v"

    const-class v2, Lgov/nist/javax/sip/parser/ViaParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Contact"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ContactParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "m"

    const-class v2, Lgov/nist/javax/sip/parser/ContactParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 89
    const-string v1, "Content-Type"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ContentTypeParser;

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "c"

    const-class v2, Lgov/nist/javax/sip/parser/ContentTypeParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 94
    const-string v1, "Content-Length"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ContentLengthParser;

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "l"

    const-class v2, Lgov/nist/javax/sip/parser/ContentLengthParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 99
    const-string v1, "Authorization"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AuthorizationParser;

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 103
    const-string v1, "WWW-Authenticate"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Call-ID"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/CallIDParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "i"

    const-class v2, Lgov/nist/javax/sip/parser/CallIDParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Route"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/RouteParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 112
    const-string v1, "Record-Route"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/RecordRouteParser;

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Date"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/DateParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 118
    const-string v1, "Proxy-Authorization"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ProxyAuthorizationParser;

    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 122
    const-string v1, "Proxy-Authenticate"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ProxyAuthenticateParser;

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 126
    const-string v1, "Retry-After"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/RetryAfterParser;

    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Require"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/RequireParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 132
    const-string v1, "Proxy-Require"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ProxyRequireParser;

    .line 131
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 136
    const-string v1, "Timestamp"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/TimeStampParser;

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 140
    const-string v1, "Unsupported"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/UnsupportedParser;

    .line 139
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 144
    const-string v1, "User-Agent"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/UserAgentParser;

    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 148
    const-string v1, "Supported"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/SupportedParser;

    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "k"

    const-class v2, Lgov/nist/javax/sip/parser/SupportedParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Server"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ServerParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Subject"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/SubjectParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "s"

    const-class v2, Lgov/nist/javax/sip/parser/SubjectParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 159
    const-string v1, "Subscription-State"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/SubscriptionStateParser;

    .line 158
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 163
    const-string v1, "Max-Forwards"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/MaxForwardsParser;

    .line 162
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 167
    const-string v1, "MIME-Version"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/MimeVersionParser;

    .line 166
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 171
    const-string v1, "Min-Expires"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/MinExpiresParser;

    .line 170
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 175
    const-string v1, "Organization"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/OrganizationParser;

    .line 174
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 179
    const-string v1, "Priority"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/PriorityParser;

    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "RAck"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/RAckParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "RSeq"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/RSeqParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Reason"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ReasonParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Warning"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/WarningParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Expires"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ExpiresParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Event"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/EventParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "o"

    const-class v2, Lgov/nist/javax/sip/parser/EventParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 196
    const-string v1, "Error-Info"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ErrorInfoParser;

    .line 195
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 200
    const-string v1, "Content-Language"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ContentLanguageParser;

    .line 199
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 204
    const-string v1, "Content-Encoding"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ContentEncodingParser;

    .line 203
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "e"

    const-class v2, Lgov/nist/javax/sip/parser/ContentEncodingParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 209
    const-string v1, "Content-Disposition"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ContentDispositionParser;

    .line 208
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 213
    const-string v1, "Call-Info"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/CallInfoParser;

    .line 212
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 217
    const-string v1, "Authentication-Info"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;

    .line 216
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Allow"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AllowParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 223
    const-string v1, "Allow-Events"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AllowEventsParser;

    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "u"

    const-class v2, Lgov/nist/javax/sip/parser/AllowEventsParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 228
    const-string v1, "Alert-Info"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AlertInfoParser;

    .line 227
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Accept"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AcceptParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Refer-To"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ReferToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "r"

    const-class v2, Lgov/nist/javax/sip/parser/ReferToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "SIP-ETag"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/SIPETagParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "SIP-If-Match"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/SIPIfMatchParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Access-Network-Info"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Asserted-Identity"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Preferred-Identity"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Charging-Vector"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Charging-Function-Addresses"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Media-Authorization"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Path"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PathParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Privacy"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PrivacyParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Service-Route"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Visited-Network-ID"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Associated-URI"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Called-Party-ID"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Security-Server"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Security-Client"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Security-Verify"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Referred-By"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "b"

    const-class v2, Lgov/nist/javax/sip/parser/ReferToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Session-Expires"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "x"

    const-class v2, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Min-SE"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/MinSEParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Replaces"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Join"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/JoinParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "References"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;
    .registers 7
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 286
    invoke-static {p0}, Lgov/nist/javax/sip/parser/Lexer;->getHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "headerName":Ljava/lang/String;
    invoke-static {p0}, Lgov/nist/javax/sip/parser/Lexer;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "headerValue":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_49

    if-eqz v1, :cond_49

    .line 291
    sget-object v3, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 292
    .local v3, "parserClass":Ljava/lang/Class;
    if-eqz v3, :cond_43

    .line 294
    :try_start_1b
    sget-object v4, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;

    .line 295
    .local v4, "cons":Ljava/lang/reflect/Constructor;
    if-nez v4, :cond_31

    .line 296
    sget-object v5, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object v4, v5

    .line 297
    sget-object v5, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_31
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 300
    .local v5, "args":[Ljava/lang/Object;
    aput-object p0, v5, v2

    .line 301
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/parser/HeaderParser;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3c} :catch_3d

    .line 302
    .local v2, "retval":Lgov/nist/javax/sip/parser/HeaderParser;
    return-object v2

    .line 304
    .end local v2    # "retval":Lgov/nist/javax/sip/parser/HeaderParser;
    .end local v4    # "cons":Ljava/lang/reflect/Constructor;
    .end local v5    # "args":[Ljava/lang/Object;
    :catch_3d
    move-exception v2

    .line 305
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 306
    const/4 v4, 0x0

    return-object v4

    .line 312
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_43
    new-instance v2, Lgov/nist/javax/sip/parser/HeaderParser;

    invoke-direct {v2, p0}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 289
    .end local v3    # "parserClass":Ljava/lang/Class;
    :cond_49
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "The header name or value is null"

    invoke-direct {v3, v4, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
