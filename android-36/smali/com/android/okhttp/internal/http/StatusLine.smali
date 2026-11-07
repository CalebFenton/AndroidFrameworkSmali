.class public final Lcom/android/okhttp/internal/http/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# static fields
.field public static final blacklist HTTP_CONTINUE:I = 0x64

.field public static final blacklist HTTP_PERM_REDIRECT:I = 0x134

.field public static final blacklist HTTP_TEMP_REDIRECT:I = 0x133


# instance fields
.field public final blacklist code:I

.field public final blacklist message:Ljava/lang/String;

.field public final blacklist protocol:Lcom/android/okhttp/Protocol;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    .line 23
    iput p2, p0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 24
    iput-object p3, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    return-void
.end method

.method public static blacklist get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;
    .registers 4

    .line 28
    new-instance v0, Lcom/android/okhttp/internal/http/StatusLine;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->protocol()Lcom/android/okhttp/Protocol;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V

    return-object v0
.end method

.method public static blacklist parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const-string v0, "HTTP/1."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x20

    const-string v3, "Unexpected status line: "

    if-eqz v0, :cond_59

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x9

    if-lt v0, v4, :cond_44

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_44

    const/4 v0, 0x7

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    if-nez v0, :cond_29

    .line 45
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    goto :goto_64

    :cond_29
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2f

    .line 47
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    goto :goto_64

    .line 49
    :cond_2f
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_44
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_59
    const-string v0, "ICY "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 53
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    move v4, v1

    .line 60
    :goto_64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v4, 0x3

    if-lt v5, v6, :cond_b8

    .line 65
    :try_start_6c
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_74} :catch_a3

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_9b

    .line 74
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_86

    add-int/2addr v4, v1

    .line 77
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9d

    .line 75
    :cond_86
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_9b
    const-string p0, ""

    .line 80
    :goto_9d
    new-instance v1, Lcom/android/okhttp/internal/http/StatusLine;

    invoke-direct {v1, v0, v5, p0}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V

    return-object v1

    .line 67
    :catch_a3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_b8
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_cd
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    if-ne v1, v2, :cond_e

    const-string v1, "HTTP/1.0"

    goto :goto_10

    :cond_e
    const-string v1, "HTTP/1.1"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    if-eqz v2, :cond_29

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
