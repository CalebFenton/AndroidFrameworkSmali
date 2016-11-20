.class public final Lcom/android/okhttp/internal/http/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# static fields
.field public static final HTTP_CONTINUE:I = 0x64

.field public static final HTTP_PERM_REDIRECT:I = 0x134

.field public static final HTTP_TEMP_REDIRECT:I = 0x133


# instance fields
.field public final code:I

.field public final message:Ljava/lang/String;

.field public final protocol:Lcom/android/okhttp/Protocol;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20
    iput-object p1, p0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    #@5
    .line 21
    iput p2, p0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    #@7
    .line 22
    iput-object p3, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    #@9
    .line 19
    return-void
.end method

.method public static get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;
    .locals 4
    .param p0, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 26
    new-instance v0, Lcom/android/okhttp/internal/http/StatusLine;

    #@2
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->protocol()Lcom/android/okhttp/Protocol;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V

    #@11
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;
    .locals 9
    .param p0, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    .line 36
    const-string/jumbo v6, "HTTP/1."

    #@5
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v6

    #@9
    if-eqz v6, :cond_4

    #@b
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v6

    #@f
    const/16 v7, 0x9

    #@11
    if-lt v6, v7, :cond_0

    #@13
    const/16 v6, 0x8

    #@15
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v6

    #@19
    if-eq v6, v8, :cond_1

    #@1b
    .line 38
    :cond_0
    new-instance v6, Ljava/net/ProtocolException;

    #@1d
    new-instance v7, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v8, "Unexpected status line: "

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@34
    throw v6

    #@35
    .line 40
    :cond_1
    const/4 v6, 0x7

    #@36
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v6

    #@3a
    add-int/lit8 v3, v6, -0x30

    #@3c
    .line 41
    .local v3, "httpMinorVersion":I
    const/16 v1, 0x9

    #@3e
    .line 42
    .local v1, "codeStart":I
    if-nez v3, :cond_2

    #@40
    .line 43
    sget-object v5, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    #@42
    .line 58
    .end local v3    # "httpMinorVersion":I
    .local v5, "protocol":Lcom/android/okhttp/Protocol;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@45
    move-result v6

    #@46
    add-int/lit8 v7, v1, 0x3

    #@48
    if-ge v6, v7, :cond_6

    #@4a
    .line 59
    new-instance v6, Ljava/net/ProtocolException;

    #@4c
    new-instance v7, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v8, "Unexpected status line: "

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@63
    throw v6

    #@64
    .line 44
    .end local v5    # "protocol":Lcom/android/okhttp/Protocol;
    .restart local v3    # "httpMinorVersion":I
    :cond_2
    const/4 v6, 0x1

    #@65
    if-ne v3, v6, :cond_3

    #@67
    .line 45
    sget-object v5, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@69
    .restart local v5    # "protocol":Lcom/android/okhttp/Protocol;
    goto :goto_0

    #@6a
    .line 47
    .end local v5    # "protocol":Lcom/android/okhttp/Protocol;
    :cond_3
    new-instance v6, Ljava/net/ProtocolException;

    #@6c
    new-instance v7, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v8, "Unexpected status line: "

    #@74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v7

    #@78
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@83
    throw v6

    #@84
    .line 49
    .end local v1    # "codeStart":I
    .end local v3    # "httpMinorVersion":I
    :cond_4
    const-string/jumbo v6, "ICY "

    #@87
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8a
    move-result v6

    #@8b
    if-eqz v6, :cond_5

    #@8d
    .line 51
    sget-object v5, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    #@8f
    .line 52
    .restart local v5    # "protocol":Lcom/android/okhttp/Protocol;
    const/4 v1, 0x4

    #@90
    .restart local v1    # "codeStart":I
    goto :goto_0

    #@91
    .line 54
    .end local v1    # "codeStart":I
    .end local v5    # "protocol":Lcom/android/okhttp/Protocol;
    :cond_5
    new-instance v6, Ljava/net/ProtocolException;

    #@93
    new-instance v7, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v8, "Unexpected status line: "

    #@9b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v7

    #@9f
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v7

    #@a3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v7

    #@a7
    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v6

    #@ab
    .line 63
    .restart local v1    # "codeStart":I
    .restart local v5    # "protocol":Lcom/android/okhttp/Protocol;
    :cond_6
    add-int/lit8 v6, v1, 0x3

    #@ad
    :try_start_0
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b0
    move-result-object v6

    #@b1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b4
    move-result v0

    #@b5
    .line 70
    .local v0, "code":I
    const-string/jumbo v4, ""

    #@b8
    .line 71
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@bb
    move-result v6

    #@bc
    add-int/lit8 v7, v1, 0x3

    #@be
    if-le v6, v7, :cond_8

    #@c0
    .line 72
    add-int/lit8 v6, v1, 0x3

    #@c2
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@c5
    move-result v6

    #@c6
    if-eq v6, v8, :cond_7

    #@c8
    .line 73
    new-instance v6, Ljava/net/ProtocolException;

    #@ca
    new-instance v7, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v8, "Unexpected status line: "

    #@d2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v7

    #@d6
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v7

    #@da
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v7

    #@de
    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@e1
    throw v6

    #@e2
    .line 64
    .end local v0    # "code":I
    .end local v4    # "message":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@e3
    .line 65
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/ProtocolException;

    #@e5
    new-instance v7, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v8, "Unexpected status line: "

    #@ed
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v7

    #@f1
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v7

    #@f5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v7

    #@f9
    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@fc
    throw v6

    #@fd
    .line 75
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "code":I
    .restart local v4    # "message":Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v1, 0x4

    #@ff
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@102
    move-result-object v4

    #@103
    .line 78
    :cond_8
    new-instance v6, Lcom/android/okhttp/internal/http/StatusLine;

    #@105
    invoke-direct {v6, v5, v0, v4}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V

    #@108
    return-object v6
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 83
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    #@9
    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    const-string/jumbo v1, "HTTP/1.0"

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget v2, p0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    .line 85
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    return-object v1

    #@2e
    .line 83
    :cond_1
    const-string/jumbo v1, "HTTP/1.1"

    #@31
    goto :goto_0
.end method
