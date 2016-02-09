.class public Lgov/nist/javax/sip/parser/Lexer;
.super Lgov/nist/core/LexerCore;
.source "Lexer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "lexerName"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 70
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Lexer;->selectLexer(Ljava/lang/String;)V

    #@6
    .line 68
    return-void
.end method

.method public static getHeaderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 54
    if-nez p0, :cond_0

    #@3
    .line 55
    return-object v4

    #@4
    .line 56
    :cond_0
    const/4 v2, 0x0

    #@5
    .line 58
    .local v2, "headerName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, ":"

    #@8
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    .line 59
    .local v0, "begin":I
    const/4 v2, 0x0

    #@d
    .line 60
    const/4 v3, 0x1

    #@e
    if-lt v0, v3, :cond_1

    #@10
    .line 61
    const/4 v3, 0x0

    #@11
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v2

    #@19
    .line 65
    .end local v2    # "headerName":Ljava/lang/String;
    :cond_1
    return-object v2

    #@1a
    .line 62
    .end local v0    # "begin":I
    .restart local v2    # "headerName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@1b
    .line 63
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v4
.end method

.method public static getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 79
    if-nez p0, :cond_0

    #@3
    .line 80
    return-object v4

    #@4
    .line 81
    :cond_0
    const/4 v2, 0x0

    #@5
    .line 83
    .local v2, "headerValue":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, ":"

    #@8
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    .line 84
    .local v0, "begin":I
    add-int/lit8 v3, v0, 0x1

    #@e
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    .line 88
    .local v2, "headerValue":Ljava/lang/String;
    return-object v2

    #@13
    .line 85
    .end local v0    # "begin":I
    .local v2, "headerValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@14
    .line 86
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v4
.end method


# virtual methods
.method public selectLexer(Ljava/lang/String;)V
    .locals 3
    .param p1, "lexerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    sget-object v1, Lgov/nist/javax/sip/parser/Lexer;->lexerTables:Ljava/util/Hashtable;

    #@2
    monitor-enter v1

    #@3
    .line 94
    :try_start_0
    sget-object v0, Lgov/nist/javax/sip/parser/Lexer;->lexerTables:Ljava/util/Hashtable;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/Hashtable;

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/parser/Lexer;->currentLexer:Ljava/util/Hashtable;

    #@d
    .line 95
    iput-object p1, p0, Lgov/nist/javax/sip/parser/Lexer;->currentLexerName:Ljava/lang/String;

    #@f
    .line 96
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Lexer;->currentLexer:Ljava/util/Hashtable;

    #@11
    if-nez v0, :cond_0

    #@13
    .line 97
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Lexer;->addLexer(Ljava/lang/String;)Ljava/util/Hashtable;

    #@16
    .line 98
    const-string/jumbo v0, "method_keywordLexer"

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 99
    const-string/jumbo v0, "REGISTER"

    #@22
    const/16 v2, 0x804

    #@24
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@27
    .line 100
    const-string/jumbo v0, "ACK"

    #@2a
    const/16 v2, 0x806

    #@2c
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@2f
    .line 101
    const-string/jumbo v0, "OPTIONS"

    #@32
    const/16 v2, 0x808

    #@34
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@37
    .line 102
    const-string/jumbo v0, "BYE"

    #@3a
    const/16 v2, 0x807

    #@3c
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@3f
    .line 103
    const-string/jumbo v0, "INVITE"

    #@42
    const/16 v2, 0x805

    #@44
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@47
    .line 104
    const-string/jumbo v0, "sip"

    #@4a
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    const/16 v2, 0x803

    #@50
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@53
    .line 105
    const-string/jumbo v0, "sips"

    #@56
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    const/16 v2, 0x858

    #@5c
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@5f
    .line 106
    const-string/jumbo v0, "SUBSCRIBE"

    #@62
    const/16 v2, 0x835

    #@64
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@67
    .line 107
    const-string/jumbo v0, "NOTIFY"

    #@6a
    const/16 v2, 0x836

    #@6c
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@6f
    .line 108
    const-string/jumbo v0, "MESSAGE"

    #@72
    const/16 v2, 0x846

    #@74
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@77
    .line 111
    const-string/jumbo v0, "PUBLISH"

    #@7a
    const/16 v2, 0x843

    #@7c
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7f
    :cond_0
    :goto_0
    monitor-exit v1

    #@80
    .line 91
    return-void

    #@81
    .line 113
    :cond_1
    :try_start_1
    const-string/jumbo v0, "command_keywordLexer"

    #@84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v0

    #@88
    if-eqz v0, :cond_2

    #@8a
    .line 114
    const-string/jumbo v0, "Error-Info"

    #@8d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    .line 115
    const/16 v2, 0x80a

    #@93
    .line 114
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@96
    .line 116
    const-string/jumbo v0, "Allow-Events"

    #@99
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@9c
    move-result-object v0

    #@9d
    .line 117
    const/16 v2, 0x841

    #@9f
    .line 116
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@a2
    .line 118
    const-string/jumbo v0, "Authentication-Info"

    #@a5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@a8
    move-result-object v0

    #@a9
    .line 119
    const/16 v2, 0x840

    #@ab
    .line 118
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@ae
    .line 120
    const-string/jumbo v0, "Event"

    #@b1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    const/16 v2, 0x83f

    #@b7
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@ba
    .line 121
    const-string/jumbo v0, "Min-Expires"

    #@bd
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@c0
    move-result-object v0

    #@c1
    .line 122
    const/16 v2, 0x83e

    #@c3
    .line 121
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@c6
    .line 123
    const-string/jumbo v0, "RSeq"

    #@c9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@cc
    move-result-object v0

    #@cd
    const/16 v2, 0x83c

    #@cf
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@d2
    .line 124
    const-string/jumbo v0, "RAck"

    #@d5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@d8
    move-result-object v0

    #@d9
    const/16 v2, 0x83d

    #@db
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@de
    .line 125
    const-string/jumbo v0, "Reason"

    #@e1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@e4
    move-result-object v0

    #@e5
    .line 126
    const/16 v2, 0x83b

    #@e7
    .line 125
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@ea
    .line 127
    const-string/jumbo v0, "Reply-To"

    #@ed
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@f0
    move-result-object v0

    #@f1
    .line 128
    const/16 v2, 0x83a

    #@f3
    .line 127
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@f6
    .line 129
    const-string/jumbo v0, "Subscription-State"

    #@f9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@fc
    move-result-object v0

    #@fd
    .line 130
    const/16 v2, 0x838

    #@ff
    .line 129
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@102
    .line 131
    const-string/jumbo v0, "Timestamp"

    #@105
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@108
    move-result-object v0

    #@109
    .line 132
    const/16 v2, 0x837

    #@10b
    .line 131
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@10e
    .line 133
    const-string/jumbo v0, "In-Reply-To"

    #@111
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@114
    move-result-object v0

    #@115
    .line 134
    const/16 v2, 0x80b

    #@117
    .line 133
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@11a
    .line 135
    const-string/jumbo v0, "MIME-Version"

    #@11d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@120
    move-result-object v0

    #@121
    .line 136
    const/16 v2, 0x80c

    #@123
    .line 135
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@126
    .line 137
    const-string/jumbo v0, "Alert-Info"

    #@129
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@12c
    move-result-object v0

    #@12d
    .line 138
    const/16 v2, 0x80d

    #@12f
    .line 137
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@132
    .line 139
    const-string/jumbo v0, "From"

    #@135
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@138
    move-result-object v0

    #@139
    const/16 v2, 0x80e

    #@13b
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@13e
    .line 140
    const-string/jumbo v0, "To"

    #@141
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@144
    move-result-object v0

    #@145
    const/16 v2, 0x80f

    #@147
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@14a
    .line 141
    const-string/jumbo v0, "Refer-To"

    #@14d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@150
    move-result-object v0

    #@151
    .line 142
    const/16 v2, 0x842

    #@153
    .line 141
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@156
    .line 143
    const-string/jumbo v0, "Via"

    #@159
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@15c
    move-result-object v0

    #@15d
    const/16 v2, 0x810

    #@15f
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@162
    .line 144
    const-string/jumbo v0, "User-Agent"

    #@165
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@168
    move-result-object v0

    #@169
    .line 145
    const/16 v2, 0x811

    #@16b
    .line 144
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@16e
    .line 146
    const-string/jumbo v0, "Server"

    #@171
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@174
    move-result-object v0

    #@175
    .line 147
    const/16 v2, 0x812

    #@177
    .line 146
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@17a
    .line 148
    const-string/jumbo v0, "Accept-Encoding"

    #@17d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@180
    move-result-object v0

    #@181
    .line 149
    const/16 v2, 0x813

    #@183
    .line 148
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@186
    .line 150
    const-string/jumbo v0, "Accept"

    #@189
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@18c
    move-result-object v0

    #@18d
    .line 151
    const/16 v2, 0x814

    #@18f
    .line 150
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@192
    .line 152
    const-string/jumbo v0, "Allow"

    #@195
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@198
    move-result-object v0

    #@199
    const/16 v2, 0x815

    #@19b
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@19e
    .line 153
    const-string/jumbo v0, "Route"

    #@1a1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1a4
    move-result-object v0

    #@1a5
    const/16 v2, 0x816

    #@1a7
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@1aa
    .line 154
    const-string/jumbo v0, "Authorization"

    #@1ad
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1b0
    move-result-object v0

    #@1b1
    .line 155
    const/16 v2, 0x817

    #@1b3
    .line 154
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@1b6
    .line 156
    const-string/jumbo v0, "Proxy-Authorization"

    #@1b9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1bc
    move-result-object v0

    #@1bd
    .line 157
    const/16 v2, 0x818

    #@1bf
    .line 156
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@1c2
    .line 158
    const-string/jumbo v0, "Retry-After"

    #@1c5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1c8
    move-result-object v0

    #@1c9
    .line 159
    const/16 v2, 0x819

    #@1cb
    .line 158
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@1ce
    .line 160
    const-string/jumbo v0, "Proxy-Require"

    #@1d1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1d4
    move-result-object v0

    #@1d5
    .line 161
    const/16 v2, 0x81a

    #@1d7
    .line 160
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@1da
    .line 162
    const-string/jumbo v0, "Content-Language"

    #@1dd
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1e0
    move-result-object v0

    #@1e1
    .line 163
    const/16 v2, 0x81b

    #@1e3
    .line 162
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@1e6
    .line 164
    const-string/jumbo v0, "Unsupported"

    #@1e9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1ec
    move-result-object v0

    #@1ed
    .line 165
    const/16 v2, 0x81c

    #@1ef
    .line 164
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@1f2
    .line 166
    const-string/jumbo v0, "Supported"

    #@1f5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1f8
    move-result-object v0

    #@1f9
    .line 167
    const/16 v2, 0x814

    #@1fb
    .line 166
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@1fe
    .line 168
    const-string/jumbo v0, "Warning"

    #@201
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@204
    move-result-object v0

    #@205
    .line 169
    const/16 v2, 0x81e

    #@207
    .line 168
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@20a
    .line 170
    const-string/jumbo v0, "Max-Forwards"

    #@20d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@210
    move-result-object v0

    #@211
    .line 171
    const/16 v2, 0x81f

    #@213
    .line 170
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@216
    .line 172
    const-string/jumbo v0, "Date"

    #@219
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@21c
    move-result-object v0

    #@21d
    const/16 v2, 0x820

    #@21f
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@222
    .line 173
    const-string/jumbo v0, "Priority"

    #@225
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@228
    move-result-object v0

    #@229
    .line 174
    const/16 v2, 0x821

    #@22b
    .line 173
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@22e
    .line 175
    const-string/jumbo v0, "Proxy-Authenticate"

    #@231
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@234
    move-result-object v0

    #@235
    .line 176
    const/16 v2, 0x822

    #@237
    .line 175
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@23a
    .line 177
    const-string/jumbo v0, "Content-Encoding"

    #@23d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@240
    move-result-object v0

    #@241
    .line 178
    const/16 v2, 0x823

    #@243
    .line 177
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@246
    .line 179
    const-string/jumbo v0, "Content-Length"

    #@249
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@24c
    move-result-object v0

    #@24d
    .line 180
    const/16 v2, 0x824

    #@24f
    .line 179
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@252
    .line 181
    const-string/jumbo v0, "Subject"

    #@255
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@258
    move-result-object v0

    #@259
    .line 182
    const/16 v2, 0x825

    #@25b
    .line 181
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@25e
    .line 183
    const-string/jumbo v0, "Content-Type"

    #@261
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@264
    move-result-object v0

    #@265
    .line 184
    const/16 v2, 0x826

    #@267
    .line 183
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@26a
    .line 185
    const-string/jumbo v0, "Contact"

    #@26d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@270
    move-result-object v0

    #@271
    .line 186
    const/16 v2, 0x827

    #@273
    .line 185
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@276
    .line 187
    const-string/jumbo v0, "Call-ID"

    #@279
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@27c
    move-result-object v0

    #@27d
    .line 188
    const/16 v2, 0x828

    #@27f
    .line 187
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@282
    .line 189
    const-string/jumbo v0, "Require"

    #@285
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@288
    move-result-object v0

    #@289
    .line 190
    const/16 v2, 0x829

    #@28b
    .line 189
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@28e
    .line 191
    const-string/jumbo v0, "Expires"

    #@291
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@294
    move-result-object v0

    #@295
    .line 192
    const/16 v2, 0x82a

    #@297
    .line 191
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@29a
    .line 193
    const-string/jumbo v0, "Record-Route"

    #@29d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@2a0
    move-result-object v0

    #@2a1
    .line 194
    const/16 v2, 0x82c

    #@2a3
    .line 193
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@2a6
    .line 195
    const-string/jumbo v0, "Organization"

    #@2a9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@2ac
    move-result-object v0

    #@2ad
    .line 196
    const/16 v2, 0x82d

    #@2af
    .line 195
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@2b2
    .line 197
    const-string/jumbo v0, "CSeq"

    #@2b5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@2b8
    move-result-object v0

    #@2b9
    const/16 v2, 0x82e

    #@2bb
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@2be
    .line 198
    const-string/jumbo v0, "Accept-Language"

    #@2c1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@2c4
    move-result-object v0

    #@2c5
    .line 199
    const/16 v2, 0x82f

    #@2c7
    .line 198
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@2ca
    .line 200
    const-string/jumbo v0, "WWW-Authenticate"

    #@2cd
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@2d0
    move-result-object v0

    #@2d1
    .line 201
    const/16 v2, 0x830

    #@2d3
    .line 200
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@2d6
    .line 202
    const-string/jumbo v0, "Call-Info"

    #@2d9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@2dc
    move-result-object v0

    #@2dd
    .line 203
    const/16 v2, 0x833

    #@2df
    .line 202
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@2e2
    .line 204
    const-string/jumbo v0, "Content-Disposition"

    #@2e5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@2e8
    move-result-object v0

    #@2e9
    .line 205
    const/16 v2, 0x834

    #@2eb
    .line 204
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@2ee
    .line 207
    const-string/jumbo v0, "K"

    #@2f1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@2f4
    move-result-object v0

    #@2f5
    const/16 v2, 0x814

    #@2f7
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@2fa
    .line 208
    const-string/jumbo v0, "C"

    #@2fd
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@300
    move-result-object v0

    #@301
    .line 209
    const/16 v2, 0x826

    #@303
    .line 208
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@306
    .line 210
    const-string/jumbo v0, "E"

    #@309
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@30c
    move-result-object v0

    #@30d
    .line 211
    const/16 v2, 0x823

    #@30f
    .line 210
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@312
    .line 212
    const-string/jumbo v0, "F"

    #@315
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@318
    move-result-object v0

    #@319
    const/16 v2, 0x80e

    #@31b
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@31e
    .line 213
    const-string/jumbo v0, "I"

    #@321
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@324
    move-result-object v0

    #@325
    const/16 v2, 0x828

    #@327
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@32a
    .line 214
    const-string/jumbo v0, "M"

    #@32d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@330
    move-result-object v0

    #@331
    const/16 v2, 0x827

    #@333
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@336
    .line 215
    const-string/jumbo v0, "L"

    #@339
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@33c
    move-result-object v0

    #@33d
    .line 216
    const/16 v2, 0x824

    #@33f
    .line 215
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@342
    .line 217
    const-string/jumbo v0, "S"

    #@345
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@348
    move-result-object v0

    #@349
    const/16 v2, 0x825

    #@34b
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@34e
    .line 218
    const-string/jumbo v0, "T"

    #@351
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@354
    move-result-object v0

    #@355
    const/16 v2, 0x80f

    #@357
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@35a
    .line 219
    const-string/jumbo v0, "U"

    #@35d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@360
    move-result-object v0

    #@361
    .line 220
    const/16 v2, 0x841

    #@363
    .line 219
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@366
    .line 221
    const-string/jumbo v0, "V"

    #@369
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@36c
    move-result-object v0

    #@36d
    const/16 v2, 0x810

    #@36f
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@372
    .line 222
    const-string/jumbo v0, "R"

    #@375
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@378
    move-result-object v0

    #@379
    const/16 v2, 0x842

    #@37b
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@37e
    .line 223
    const-string/jumbo v0, "O"

    #@381
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@384
    move-result-object v0

    #@385
    const/16 v2, 0x83f

    #@387
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@38a
    .line 228
    const-string/jumbo v0, "X"

    #@38d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@390
    move-result-object v0

    #@391
    const/16 v2, 0x855

    #@393
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@396
    .line 231
    const-string/jumbo v0, "SIP-ETag"

    #@399
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@39c
    move-result-object v0

    #@39d
    .line 232
    const/16 v2, 0x844

    #@39f
    .line 231
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@3a2
    .line 233
    const-string/jumbo v0, "SIP-If-Match"

    #@3a5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3a8
    move-result-object v0

    #@3a9
    .line 234
    const/16 v2, 0x845

    #@3ab
    .line 233
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@3ae
    .line 237
    const-string/jumbo v0, "Session-Expires"

    #@3b1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3b4
    move-result-object v0

    #@3b5
    .line 238
    const/16 v2, 0x855

    #@3b7
    .line 237
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@3ba
    .line 239
    const-string/jumbo v0, "Min-SE"

    #@3bd
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3c0
    move-result-object v0

    #@3c1
    .line 240
    const/16 v2, 0x856

    #@3c3
    .line 239
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@3c6
    .line 241
    const-string/jumbo v0, "Referred-By"

    #@3c9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3cc
    move-result-object v0

    #@3cd
    .line 242
    const/16 v2, 0x854

    #@3cf
    .line 241
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@3d2
    .line 245
    const-string/jumbo v0, "Replaces"

    #@3d5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3d8
    move-result-object v0

    #@3d9
    .line 246
    const/16 v2, 0x857

    #@3db
    .line 245
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@3de
    .line 248
    const-string/jumbo v0, "Join"

    #@3e1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3e4
    move-result-object v0

    #@3e5
    .line 249
    const/16 v2, 0x85c

    #@3e7
    .line 248
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@3ea
    .line 252
    const-string/jumbo v0, "Path"

    #@3ed
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3f0
    move-result-object v0

    #@3f1
    const/16 v2, 0x847

    #@3f3
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@3f6
    .line 253
    const-string/jumbo v0, "Service-Route"

    #@3f9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3fc
    move-result-object v0

    #@3fd
    .line 254
    const/16 v2, 0x848

    #@3ff
    .line 253
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@402
    .line 255
    const-string/jumbo v0, "P-Asserted-Identity"

    #@405
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@408
    move-result-object v0

    #@409
    .line 256
    const/16 v2, 0x849

    #@40b
    .line 255
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@40e
    .line 257
    const-string/jumbo v0, "P-Preferred-Identity"

    #@411
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@414
    move-result-object v0

    #@415
    .line 258
    const/16 v2, 0x84a

    #@417
    .line 257
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@41a
    .line 259
    const-string/jumbo v0, "Privacy"

    #@41d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@420
    move-result-object v0

    #@421
    .line 260
    const/16 v2, 0x84e

    #@423
    .line 259
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@426
    .line 263
    const-string/jumbo v0, "P-Called-Party-ID"

    #@429
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@42c
    move-result-object v0

    #@42d
    .line 264
    const/16 v2, 0x850

    #@42f
    .line 263
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@432
    .line 265
    const-string/jumbo v0, "P-Associated-URI"

    #@435
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@438
    move-result-object v0

    #@439
    .line 266
    const/16 v2, 0x851

    #@43b
    .line 265
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@43e
    .line 267
    const-string/jumbo v0, "P-Visited-Network-ID"

    #@441
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@444
    move-result-object v0

    #@445
    .line 268
    const/16 v2, 0x84b

    #@447
    .line 267
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@44a
    .line 269
    const-string/jumbo v0, "P-Charging-Function-Addresses"

    #@44d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@450
    move-result-object v0

    #@451
    .line 271
    const/16 v2, 0x84c

    #@453
    .line 269
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@456
    .line 272
    const-string/jumbo v0, "P-Charging-Vector"

    #@459
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@45c
    move-result-object v0

    #@45d
    .line 273
    const/16 v2, 0x84d

    #@45f
    .line 272
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@462
    .line 274
    const-string/jumbo v0, "P-Access-Network-Info"

    #@465
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@468
    move-result-object v0

    #@469
    .line 275
    const/16 v2, 0x84f

    #@46b
    .line 274
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@46e
    .line 276
    const-string/jumbo v0, "P-Media-Authorization"

    #@471
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@474
    move-result-object v0

    #@475
    .line 277
    const/16 v2, 0x852

    #@477
    .line 276
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@47a
    .line 279
    const-string/jumbo v0, "Security-Server"

    #@47d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@480
    move-result-object v0

    #@481
    .line 280
    const/16 v2, 0x859

    #@483
    .line 279
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@486
    .line 281
    const-string/jumbo v0, "Security-Verify"

    #@489
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@48c
    move-result-object v0

    #@48d
    .line 282
    const/16 v2, 0x85b

    #@48f
    .line 281
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@492
    .line 283
    const-string/jumbo v0, "Security-Client"

    #@495
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@498
    move-result-object v0

    #@499
    .line 284
    const/16 v2, 0x85a

    #@49b
    .line 283
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@49e
    .line 287
    const-string/jumbo v0, "P-User-Database"

    #@4a1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@4a4
    move-result-object v0

    #@4a5
    .line 288
    const/16 v2, 0x85d    # 3.0E-42f

    #@4a7
    .line 287
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@4aa
    .line 291
    const-string/jumbo v0, "P-Profile-Key"

    #@4ad
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@4b0
    move-result-object v0

    #@4b1
    .line 292
    const/16 v2, 0x85e

    #@4b3
    .line 291
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@4b6
    .line 295
    const-string/jumbo v0, "P-Served-User"

    #@4b9
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@4bc
    move-result-object v0

    #@4bd
    .line 296
    const/16 v2, 0x85f

    #@4bf
    .line 295
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@4c2
    .line 299
    const-string/jumbo v0, "P-Preferred-Service"

    #@4c5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@4c8
    move-result-object v0

    #@4c9
    .line 300
    const/16 v2, 0x860

    #@4cb
    .line 299
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@4ce
    .line 303
    const-string/jumbo v0, "P-Asserted-Service"

    #@4d1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@4d4
    move-result-object v0

    #@4d5
    .line 304
    const/16 v2, 0x861

    #@4d7
    .line 303
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@4da
    .line 307
    const-string/jumbo v0, "References"

    #@4dd
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@4e0
    move-result-object v0

    #@4e1
    const/16 v2, 0x862

    #@4e3
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e6
    goto/16 :goto_0

    #@4e8
    .line 92
    :catchall_0
    move-exception v0

    #@4e9
    monitor-exit v1

    #@4ea
    throw v0

    #@4eb
    .line 312
    :cond_2
    :try_start_2
    const-string/jumbo v0, "status_lineLexer"

    #@4ee
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f1
    move-result v0

    #@4f2
    if-eqz v0, :cond_3

    #@4f4
    .line 313
    const-string/jumbo v0, "sip"

    #@4f7
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@4fa
    move-result-object v0

    #@4fb
    const/16 v2, 0x803

    #@4fd
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@500
    goto/16 :goto_0

    #@502
    .line 314
    :cond_3
    const-string/jumbo v0, "request_lineLexer"

    #@505
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@508
    move-result v0

    #@509
    if-eqz v0, :cond_4

    #@50b
    .line 315
    const-string/jumbo v0, "sip"

    #@50e
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@511
    move-result-object v0

    #@512
    const/16 v2, 0x803

    #@514
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@517
    goto/16 :goto_0

    #@519
    .line 316
    :cond_4
    const-string/jumbo v0, "sip_urlLexer"

    #@51c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51f
    move-result v0

    #@520
    if-eqz v0, :cond_0

    #@522
    .line 317
    const-string/jumbo v0, "tel"

    #@525
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@528
    move-result-object v0

    #@529
    const/16 v2, 0x839

    #@52b
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@52e
    .line 318
    const-string/jumbo v0, "sip"

    #@531
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@534
    move-result-object v0

    #@535
    const/16 v2, 0x803

    #@537
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V

    #@53a
    .line 319
    const-string/jumbo v0, "sips"

    #@53d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@540
    move-result-object v0

    #@541
    const/16 v2, 0x858

    #@543
    invoke-virtual {p0, v0, v2}, Lgov/nist/javax/sip/parser/Lexer;->addKeyword(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@546
    goto/16 :goto_0
.end method
