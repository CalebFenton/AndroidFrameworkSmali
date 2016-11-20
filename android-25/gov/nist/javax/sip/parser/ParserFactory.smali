.class public Lgov/nist/javax/sip/parser/ParserFactory;
.super Ljava/lang/Object;
.source "ParserFactory.java"


# static fields
.field private static constructorArgs:[Ljava/lang/Class;

.field private static parserConstructorCache:Ljava/util/Hashtable;

.field private static parserTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lgov/nist/javax/sip/parser/HeaderParser;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 56
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@7
    .line 57
    new-instance v0, Ljava/util/Hashtable;

    #@9
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@c
    sput-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    #@e
    .line 58
    const/4 v0, 0x1

    #@f
    new-array v0, v0, [Ljava/lang/Class;

    #@11
    sput-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    #@13
    .line 59
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    #@15
    const-class v1, Ljava/lang/String;

    #@17
    const/4 v2, 0x0

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 60
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@1c
    const-string/jumbo v1, "Reply-To"

    #@1f
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    const-class v2, Lgov/nist/javax/sip/parser/ReplyToParser;

    #@25
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 62
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@2a
    .line 63
    const-string/jumbo v1, "In-Reply-To"

    #@2d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 64
    const-class v2, Lgov/nist/javax/sip/parser/InReplyToParser;

    #@33
    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 66
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@38
    .line 67
    const-string/jumbo v1, "Accept-Encoding"

    #@3b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 68
    const-class v2, Lgov/nist/javax/sip/parser/AcceptEncodingParser;

    #@41
    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 70
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@46
    .line 71
    const-string/jumbo v1, "Accept-Language"

    #@49
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 72
    const-class v2, Lgov/nist/javax/sip/parser/AcceptLanguageParser;

    #@4f
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 74
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@54
    const-string/jumbo v1, "t"

    #@57
    const-class v2, Lgov/nist/javax/sip/parser/ToParser;

    #@59
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    .line 75
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@5e
    const-string/jumbo v1, "To"

    #@61
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    const-class v2, Lgov/nist/javax/sip/parser/ToParser;

    #@67
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 77
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@6c
    const-string/jumbo v1, "From"

    #@6f
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    const-class v2, Lgov/nist/javax/sip/parser/FromParser;

    #@75
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    .line 78
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@7a
    const-string/jumbo v1, "f"

    #@7d
    const-class v2, Lgov/nist/javax/sip/parser/FromParser;

    #@7f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    .line 80
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@84
    const-string/jumbo v1, "CSeq"

    #@87
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    const-class v2, Lgov/nist/javax/sip/parser/CSeqParser;

    #@8d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    .line 82
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@92
    const-string/jumbo v1, "Via"

    #@95
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    const-class v2, Lgov/nist/javax/sip/parser/ViaParser;

    #@9b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    .line 83
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@a0
    const-string/jumbo v1, "v"

    #@a3
    const-class v2, Lgov/nist/javax/sip/parser/ViaParser;

    #@a5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    .line 85
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@aa
    const-string/jumbo v1, "Contact"

    #@ad
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    const-class v2, Lgov/nist/javax/sip/parser/ContactParser;

    #@b3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 86
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@b8
    const-string/jumbo v1, "m"

    #@bb
    const-class v2, Lgov/nist/javax/sip/parser/ContactParser;

    #@bd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    .line 88
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@c2
    .line 89
    const-string/jumbo v1, "Content-Type"

    #@c5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@c8
    move-result-object v1

    #@c9
    .line 90
    const-class v2, Lgov/nist/javax/sip/parser/ContentTypeParser;

    #@cb
    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    .line 91
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@d0
    const-string/jumbo v1, "c"

    #@d3
    const-class v2, Lgov/nist/javax/sip/parser/ContentTypeParser;

    #@d5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d8
    .line 93
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@da
    .line 94
    const-string/jumbo v1, "Content-Length"

    #@dd
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@e0
    move-result-object v1

    #@e1
    .line 95
    const-class v2, Lgov/nist/javax/sip/parser/ContentLengthParser;

    #@e3
    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e6
    .line 96
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@e8
    const-string/jumbo v1, "l"

    #@eb
    const-class v2, Lgov/nist/javax/sip/parser/ContentLengthParser;

    #@ed
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f0
    .line 98
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@f2
    .line 99
    const-string/jumbo v1, "Authorization"

    #@f5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@f8
    move-result-object v1

    #@f9
    .line 100
    const-class v2, Lgov/nist/javax/sip/parser/AuthorizationParser;

    #@fb
    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fe
    .line 102
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@100
    .line 103
    const-string/jumbo v1, "WWW-Authenticate"

    #@103
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@106
    move-result-object v1

    #@107
    .line 104
    const-class v2, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;

    #@109
    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10c
    .line 106
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@10e
    const-string/jumbo v1, "Call-ID"

    #@111
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@114
    move-result-object v1

    #@115
    const-class v2, Lgov/nist/javax/sip/parser/CallIDParser;

    #@117
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11a
    .line 107
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@11c
    const-string/jumbo v1, "i"

    #@11f
    const-class v2, Lgov/nist/javax/sip/parser/CallIDParser;

    #@121
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@124
    .line 109
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@126
    const-string/jumbo v1, "Route"

    #@129
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@12c
    move-result-object v1

    #@12d
    const-class v2, Lgov/nist/javax/sip/parser/RouteParser;

    #@12f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@132
    .line 111
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@134
    .line 112
    const-string/jumbo v1, "Record-Route"

    #@137
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@13a
    move-result-object v1

    #@13b
    .line 113
    const-class v2, Lgov/nist/javax/sip/parser/RecordRouteParser;

    #@13d
    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@140
    .line 115
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@142
    const-string/jumbo v1, "Date"

    #@145
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@148
    move-result-object v1

    #@149
    const-class v2, Lgov/nist/javax/sip/parser/DateParser;

    #@14b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14e
    .line 117
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@150
    .line 118
    const-string/jumbo v1, "Proxy-Authorization"

    #@153
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@156
    move-result-object v1

    #@157
    .line 119
    const-class v2, Lgov/nist/javax/sip/parser/ProxyAuthorizationParser;

    #@159
    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15c
    .line 121
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@15e
    .line 122
    const-string/jumbo v1, "Proxy-Authenticate"

    #@161
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@164
    move-result-object v1

    #@165
    .line 123
    const-class v2, Lgov/nist/javax/sip/parser/ProxyAuthenticateParser;

    #@167
    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16a
    .line 125
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@16c
    .line 126
    const-string/jumbo v1, "Retry-After"

    #@16f
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@172
    move-result-object v1

    #@173
    .line 127
    const-class v2, Lgov/nist/javax/sip/parser/RetryAfterParser;

    #@175
    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@178
    .line 129
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@17a
    const-string/jumbo v1, "Require"

    #@17d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@180
    move-result-object v1

    #@181
    const-class v2, Lgov/nist/javax/sip/parser/RequireParser;

    #@183
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@186
    .line 131
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@188
    .line 132
    const-string/jumbo v1, "Proxy-Require"

    #@18b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@18e
    move-result-object v1

    #@18f
    .line 133
    const-class v2, Lgov/nist/javax/sip/parser/ProxyRequireParser;

    #@191
    .line 131
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@194
    .line 135
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@196
    .line 136
    const-string/jumbo v1, "Timestamp"

    #@199
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@19c
    move-result-object v1

    #@19d
    .line 137
    const-class v2, Lgov/nist/javax/sip/parser/TimeStampParser;

    #@19f
    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a2
    .line 139
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@1a4
    .line 140
    const-string/jumbo v1, "Unsupported"

    #@1a7
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1aa
    move-result-object v1

    #@1ab
    .line 141
    const-class v2, Lgov/nist/javax/sip/parser/UnsupportedParser;

    #@1ad
    .line 139
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b0
    .line 143
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@1b2
    .line 144
    const-string/jumbo v1, "User-Agent"

    #@1b5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1b8
    move-result-object v1

    #@1b9
    .line 145
    const-class v2, Lgov/nist/javax/sip/parser/UserAgentParser;

    #@1bb
    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1be
    .line 147
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@1c0
    .line 148
    const-string/jumbo v1, "Supported"

    #@1c3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1c6
    move-result-object v1

    #@1c7
    .line 149
    const-class v2, Lgov/nist/javax/sip/parser/SupportedParser;

    #@1c9
    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1cc
    .line 151
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@1ce
    const-string/jumbo v1, "k"

    #@1d1
    const-class v2, Lgov/nist/javax/sip/parser/SupportedParser;

    #@1d3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d6
    .line 153
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@1d8
    const-string/jumbo v1, "Server"

    #@1db
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1de
    move-result-object v1

    #@1df
    const-class v2, Lgov/nist/javax/sip/parser/ServerParser;

    #@1e1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e4
    .line 155
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@1e6
    const-string/jumbo v1, "Subject"

    #@1e9
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1ec
    move-result-object v1

    #@1ed
    const-class v2, Lgov/nist/javax/sip/parser/SubjectParser;

    #@1ef
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f2
    .line 156
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@1f4
    const-string/jumbo v1, "s"

    #@1f7
    const-class v2, Lgov/nist/javax/sip/parser/SubjectParser;

    #@1f9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fc
    .line 158
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@1fe
    .line 159
    const-string/jumbo v1, "Subscription-State"

    #@201
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@204
    move-result-object v1

    #@205
    .line 160
    const-class v2, Lgov/nist/javax/sip/parser/SubscriptionStateParser;

    #@207
    .line 158
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20a
    .line 162
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@20c
    .line 163
    const-string/jumbo v1, "Max-Forwards"

    #@20f
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@212
    move-result-object v1

    #@213
    .line 164
    const-class v2, Lgov/nist/javax/sip/parser/MaxForwardsParser;

    #@215
    .line 162
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@218
    .line 166
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@21a
    .line 167
    const-string/jumbo v1, "MIME-Version"

    #@21d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@220
    move-result-object v1

    #@221
    .line 168
    const-class v2, Lgov/nist/javax/sip/parser/MimeVersionParser;

    #@223
    .line 166
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@226
    .line 170
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@228
    .line 171
    const-string/jumbo v1, "Min-Expires"

    #@22b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@22e
    move-result-object v1

    #@22f
    .line 172
    const-class v2, Lgov/nist/javax/sip/parser/MinExpiresParser;

    #@231
    .line 170
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@234
    .line 174
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@236
    .line 175
    const-string/jumbo v1, "Organization"

    #@239
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@23c
    move-result-object v1

    #@23d
    .line 176
    const-class v2, Lgov/nist/javax/sip/parser/OrganizationParser;

    #@23f
    .line 174
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@242
    .line 178
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@244
    .line 179
    const-string/jumbo v1, "Priority"

    #@247
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@24a
    move-result-object v1

    #@24b
    .line 180
    const-class v2, Lgov/nist/javax/sip/parser/PriorityParser;

    #@24d
    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@250
    .line 182
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@252
    const-string/jumbo v1, "RAck"

    #@255
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@258
    move-result-object v1

    #@259
    const-class v2, Lgov/nist/javax/sip/parser/RAckParser;

    #@25b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25e
    .line 184
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@260
    const-string/jumbo v1, "RSeq"

    #@263
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@266
    move-result-object v1

    #@267
    const-class v2, Lgov/nist/javax/sip/parser/RSeqParser;

    #@269
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26c
    .line 186
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@26e
    const-string/jumbo v1, "Reason"

    #@271
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@274
    move-result-object v1

    #@275
    const-class v2, Lgov/nist/javax/sip/parser/ReasonParser;

    #@277
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27a
    .line 188
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@27c
    const-string/jumbo v1, "Warning"

    #@27f
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@282
    move-result-object v1

    #@283
    const-class v2, Lgov/nist/javax/sip/parser/WarningParser;

    #@285
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@288
    .line 190
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@28a
    const-string/jumbo v1, "Expires"

    #@28d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@290
    move-result-object v1

    #@291
    const-class v2, Lgov/nist/javax/sip/parser/ExpiresParser;

    #@293
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@296
    .line 192
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@298
    const-string/jumbo v1, "Event"

    #@29b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@29e
    move-result-object v1

    #@29f
    const-class v2, Lgov/nist/javax/sip/parser/EventParser;

    #@2a1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a4
    .line 193
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@2a6
    const-string/jumbo v1, "o"

    #@2a9
    const-class v2, Lgov/nist/javax/sip/parser/EventParser;

    #@2ab
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ae
    .line 195
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@2b0
    .line 196
    const-string/jumbo v1, "Error-Info"

    #@2b3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2b6
    move-result-object v1

    #@2b7
    .line 197
    const-class v2, Lgov/nist/javax/sip/parser/ErrorInfoParser;

    #@2b9
    .line 195
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2bc
    .line 199
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@2be
    .line 200
    const-string/jumbo v1, "Content-Language"

    #@2c1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2c4
    move-result-object v1

    #@2c5
    .line 201
    const-class v2, Lgov/nist/javax/sip/parser/ContentLanguageParser;

    #@2c7
    .line 199
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ca
    .line 203
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@2cc
    .line 204
    const-string/jumbo v1, "Content-Encoding"

    #@2cf
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2d2
    move-result-object v1

    #@2d3
    .line 205
    const-class v2, Lgov/nist/javax/sip/parser/ContentEncodingParser;

    #@2d5
    .line 203
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d8
    .line 206
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@2da
    const-string/jumbo v1, "e"

    #@2dd
    const-class v2, Lgov/nist/javax/sip/parser/ContentEncodingParser;

    #@2df
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e2
    .line 208
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@2e4
    .line 209
    const-string/jumbo v1, "Content-Disposition"

    #@2e7
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2ea
    move-result-object v1

    #@2eb
    .line 210
    const-class v2, Lgov/nist/javax/sip/parser/ContentDispositionParser;

    #@2ed
    .line 208
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f0
    .line 212
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@2f2
    .line 213
    const-string/jumbo v1, "Call-Info"

    #@2f5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2f8
    move-result-object v1

    #@2f9
    .line 214
    const-class v2, Lgov/nist/javax/sip/parser/CallInfoParser;

    #@2fb
    .line 212
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fe
    .line 216
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@300
    .line 217
    const-string/jumbo v1, "Authentication-Info"

    #@303
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@306
    move-result-object v1

    #@307
    .line 218
    const-class v2, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;

    #@309
    .line 216
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30c
    .line 220
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@30e
    const-string/jumbo v1, "Allow"

    #@311
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@314
    move-result-object v1

    #@315
    const-class v2, Lgov/nist/javax/sip/parser/AllowParser;

    #@317
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31a
    .line 222
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@31c
    .line 223
    const-string/jumbo v1, "Allow-Events"

    #@31f
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@322
    move-result-object v1

    #@323
    .line 224
    const-class v2, Lgov/nist/javax/sip/parser/AllowEventsParser;

    #@325
    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@328
    .line 225
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@32a
    const-string/jumbo v1, "u"

    #@32d
    const-class v2, Lgov/nist/javax/sip/parser/AllowEventsParser;

    #@32f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@332
    .line 227
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@334
    .line 228
    const-string/jumbo v1, "Alert-Info"

    #@337
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@33a
    move-result-object v1

    #@33b
    .line 229
    const-class v2, Lgov/nist/javax/sip/parser/AlertInfoParser;

    #@33d
    .line 227
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@340
    .line 231
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@342
    const-string/jumbo v1, "Accept"

    #@345
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@348
    move-result-object v1

    #@349
    const-class v2, Lgov/nist/javax/sip/parser/AcceptParser;

    #@34b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34e
    .line 233
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@350
    const-string/jumbo v1, "Refer-To"

    #@353
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@356
    move-result-object v1

    #@357
    const-class v2, Lgov/nist/javax/sip/parser/ReferToParser;

    #@359
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35c
    .line 235
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@35e
    const-string/jumbo v1, "r"

    #@361
    const-class v2, Lgov/nist/javax/sip/parser/ReferToParser;

    #@363
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@366
    .line 238
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@368
    const-string/jumbo v1, "SIP-ETag"

    #@36b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@36e
    move-result-object v1

    #@36f
    const-class v2, Lgov/nist/javax/sip/parser/SIPETagParser;

    #@371
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@374
    .line 239
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@376
    const-string/jumbo v1, "SIP-If-Match"

    #@379
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@37c
    move-result-object v1

    #@37d
    const-class v2, Lgov/nist/javax/sip/parser/SIPIfMatchParser;

    #@37f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@382
    .line 242
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@384
    const-string/jumbo v1, "P-Access-Network-Info"

    #@387
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@38a
    move-result-object v1

    #@38b
    const-class v2, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;

    #@38d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@390
    .line 243
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@392
    const-string/jumbo v1, "P-Asserted-Identity"

    #@395
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@398
    move-result-object v1

    #@399
    const-class v2, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;

    #@39b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39e
    .line 244
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@3a0
    const-string/jumbo v1, "P-Preferred-Identity"

    #@3a3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3a6
    move-result-object v1

    #@3a7
    const-class v2, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;

    #@3a9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ac
    .line 245
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@3ae
    const-string/jumbo v1, "P-Charging-Vector"

    #@3b1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3b4
    move-result-object v1

    #@3b5
    const-class v2, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;

    #@3b7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ba
    .line 246
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@3bc
    const-string/jumbo v1, "P-Charging-Function-Addresses"

    #@3bf
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3c2
    move-result-object v1

    #@3c3
    const-class v2, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;

    #@3c5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c8
    .line 247
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@3ca
    const-string/jumbo v1, "P-Media-Authorization"

    #@3cd
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3d0
    move-result-object v1

    #@3d1
    const-class v2, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;

    #@3d3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d6
    .line 248
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@3d8
    const-string/jumbo v1, "Path"

    #@3db
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3de
    move-result-object v1

    #@3df
    const-class v2, Lgov/nist/javax/sip/parser/ims/PathParser;

    #@3e1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e4
    .line 249
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@3e6
    const-string/jumbo v1, "Privacy"

    #@3e9
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3ec
    move-result-object v1

    #@3ed
    const-class v2, Lgov/nist/javax/sip/parser/ims/PrivacyParser;

    #@3ef
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f2
    .line 250
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@3f4
    const-string/jumbo v1, "Service-Route"

    #@3f7
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3fa
    move-result-object v1

    #@3fb
    const-class v2, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;

    #@3fd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@400
    .line 251
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@402
    const-string/jumbo v1, "P-Visited-Network-ID"

    #@405
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@408
    move-result-object v1

    #@409
    const-class v2, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;

    #@40b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40e
    .line 253
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@410
    const-string/jumbo v1, "P-Associated-URI"

    #@413
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@416
    move-result-object v1

    #@417
    const-class v2, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;

    #@419
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41c
    .line 254
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@41e
    const-string/jumbo v1, "P-Called-Party-ID"

    #@421
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@424
    move-result-object v1

    #@425
    const-class v2, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;

    #@427
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42a
    .line 256
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@42c
    const-string/jumbo v1, "Security-Server"

    #@42f
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@432
    move-result-object v1

    #@433
    const-class v2, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;

    #@435
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@438
    .line 257
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@43a
    const-string/jumbo v1, "Security-Client"

    #@43d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@440
    move-result-object v1

    #@441
    const-class v2, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;

    #@443
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@446
    .line 258
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@448
    const-string/jumbo v1, "Security-Verify"

    #@44b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@44e
    move-result-object v1

    #@44f
    const-class v2, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;

    #@451
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@454
    .line 262
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@456
    const-string/jumbo v1, "Referred-By"

    #@459
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@45c
    move-result-object v1

    #@45d
    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;

    #@45f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@462
    .line 263
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@464
    const-string/jumbo v1, "b"

    #@467
    const-class v2, Lgov/nist/javax/sip/parser/ReferToParser;

    #@469
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46c
    .line 266
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@46e
    const-string/jumbo v1, "Session-Expires"

    #@471
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@474
    move-result-object v1

    #@475
    const-class v2, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;

    #@477
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47a
    .line 267
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@47c
    const-string/jumbo v1, "x"

    #@47f
    const-class v2, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;

    #@481
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@484
    .line 268
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@486
    const-string/jumbo v1, "Min-SE"

    #@489
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@48c
    move-result-object v1

    #@48d
    const-class v2, Lgov/nist/javax/sip/parser/extensions/MinSEParser;

    #@48f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@492
    .line 272
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@494
    const-string/jumbo v1, "Replaces"

    #@497
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@49a
    move-result-object v1

    #@49b
    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;

    #@49d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a0
    .line 275
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@4a2
    const-string/jumbo v1, "Join"

    #@4a5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4a8
    move-result-object v1

    #@4a9
    const-class v2, Lgov/nist/javax/sip/parser/extensions/JoinParser;

    #@4ab
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4ae
    .line 278
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@4b0
    const-string/jumbo v1, "References"

    #@4b3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4b6
    move-result-object v1

    #@4b7
    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;

    #@4b9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4bc
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;
    .locals 11
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 286
    invoke-static {p0}, Lgov/nist/javax/sip/parser/Lexer;->getHeaderName(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 287
    .local v3, "headerName":Ljava/lang/String;
    invoke-static {p0}, Lgov/nist/javax/sip/parser/Lexer;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 288
    .local v4, "headerValue":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@c
    if-nez v4, :cond_1

    #@e
    .line 289
    :cond_0
    new-instance v7, Ljava/text/ParseException;

    #@10
    const-string/jumbo v8, "The header name or value is null"

    #@13
    invoke-direct {v7, v8, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@16
    throw v7

    #@17
    .line 291
    :cond_1
    sget-object v7, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    #@19
    invoke-static {v3}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Ljava/lang/Class;

    #@23
    .line 292
    .local v5, "parserClass":Ljava/lang/Class;
    if-eqz v5, :cond_3

    #@25
    .line 294
    :try_start_0
    sget-object v7, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    #@27
    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Ljava/lang/reflect/Constructor;

    #@2d
    .line 295
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    if-nez v1, :cond_2

    #@2f
    .line 296
    sget-object v7, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    #@31
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@34
    move-result-object v1

    #@35
    .line 297
    sget-object v7, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    #@37
    invoke-virtual {v7, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 299
    :cond_2
    const/4 v7, 0x1

    #@3b
    new-array v0, v7, [Ljava/lang/Object;

    #@3d
    .line 300
    .local v0, "args":[Ljava/lang/Object;
    const/4 v7, 0x0

    #@3e
    aput-object p0, v0, v7

    #@40
    .line 301
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v6

    #@44
    check-cast v6, Lgov/nist/javax/sip/parser/HeaderParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 302
    .local v6, "retval":Lgov/nist/javax/sip/parser/HeaderParser;
    return-object v6

    #@47
    .line 304
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;
    .end local v6    # "retval":Lgov/nist/javax/sip/parser/HeaderParser;
    :catch_0
    move-exception v2

    #@48
    .line 305
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@4b
    .line 306
    return-object v9

    #@4c
    .line 312
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    new-instance v7, Lgov/nist/javax/sip/parser/HeaderParser;

    #@4e
    invoke-direct {v7, p0}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@51
    return-object v7
.end method
