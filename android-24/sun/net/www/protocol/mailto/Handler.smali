.class public Lsun/net/www/protocol/mailto/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public declared-synchronized openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 103
    :try_start_0
    new-instance v0, Lsun/net/www/protocol/mailto/MailToURLConnection;

    #@3
    invoke-direct {v0, p1}, Lsun/net/www/protocol/mailto/MailToURLConnection;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    return-object v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 10
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 118
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 119
    .local v2, "protocol":Ljava/lang/String;
    const-string/jumbo v3, ""

    #@8
    .line 120
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@b
    move-result v4

    #@c
    .line 121
    .local v4, "port":I
    const-string/jumbo v5, ""

    #@f
    .line 123
    .local v5, "file":Ljava/lang/String;
    if-ge p3, p4, :cond_0

    #@11
    .line 124
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 129
    :cond_0
    const/4 v9, 0x0

    #@16
    .line 130
    .local v9, "nogood":Z
    if-eqz v5, :cond_1

    #@18
    const-string/jumbo v0, ""

    #@1b
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 131
    :cond_1
    const/4 v9, 0x1

    #@22
    .line 140
    :cond_2
    :goto_0
    if-eqz v9, :cond_6

    #@24
    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    #@26
    const-string/jumbo v1, "No email address"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 133
    :cond_3
    const/4 v7, 0x1

    #@2e
    .line 134
    .local v7, "allwhites":Z
    const/4 v8, 0x0

    #@2f
    .local v8, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@32
    move-result v0

    #@33
    if-ge v8, v0, :cond_5

    #@35
    .line 135
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v0

    #@39
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_4

    #@3f
    .line 136
    const/4 v7, 0x0

    #@40
    .line 134
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@42
    goto :goto_1

    #@43
    .line 137
    :cond_5
    if-eqz v7, :cond_2

    #@45
    .line 138
    const/4 v9, 0x1

    #@46
    goto :goto_0

    #@47
    .end local v7    # "allwhites":Z
    .end local v8    # "i":I
    :cond_6
    move-object v0, p0

    #@48
    move-object v1, p1

    #@49
    .line 142
    invoke-virtual/range {v0 .. v6}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@4c
    .line 116
    return-void
.end method
