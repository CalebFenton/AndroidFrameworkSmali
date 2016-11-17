.class Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamingOutputStream"
.end annotation


# instance fields
.field closed:Z

.field error:Z

.field errorExcp:Ljava/io/IOException;

.field expected:J

.field final synthetic this$0:Lsun/net/www/protocol/http/HttpURLConnection;

.field written:J


# direct methods
.method constructor <init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/OutputStream;J)V
    .locals 3
    .param p1, "this$0"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "expectedLength"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3149
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    #@3
    .line 3150
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@6
    .line 3151
    iput-wide p3, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    #@8
    .line 3152
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    #@c
    .line 3153
    iput-boolean v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->closed:Z

    #@e
    .line 3154
    iput-boolean v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->error:Z

    #@10
    .line 3149
    return-void
.end method


# virtual methods
.method checkError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3184
    iget-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3185
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream is closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 3187
    :cond_0
    iget-boolean v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->error:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 3188
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->errorExcp:Ljava/io/IOException;

    #@13
    throw v0

    #@14
    .line 3190
    :cond_1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@16
    check-cast v0, Ljava/io/PrintStream;

    #@18
    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 3191
    new-instance v0, Ljava/io/IOException;

    #@20
    const-string/jumbo v1, "Error writing request body to server"

    #@23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 3183
    :cond_2
    return-void
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 3205
    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->closed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3206
    return-void

    #@6
    .line 3208
    :cond_0
    iput-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->closed:Z

    #@8
    .line 3209
    iget-wide v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    #@a
    const-wide/16 v4, -0x1

    #@c
    cmp-long v1, v2, v4

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 3211
    iget-wide v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    #@12
    iget-wide v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    #@14
    cmp-long v1, v2, v4

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 3212
    iput-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->error:Z

    #@1a
    .line 3213
    new-instance v1, Ljava/io/IOException;

    #@1c
    const-string/jumbo v2, "insufficient data written"

    #@1f
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->errorExcp:Ljava/io/IOException;

    #@24
    .line 3214
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@26
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    #@29
    .line 3215
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->errorExcp:Ljava/io/IOException;

    #@2b
    throw v1

    #@2c
    .line 3217
    :cond_1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    #@2f
    .line 3204
    :goto_0
    return-void

    #@30
    .line 3220
    :cond_2
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    #@33
    .line 3222
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->this$0:Lsun/net/www/protocol/http/HttpURLConnection;

    #@35
    iget-object v1, v1, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@37
    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    #@3a
    move-result-object v0

    #@3b
    .line 3223
    .local v0, "o":Ljava/io/OutputStream;
    const/16 v1, 0xd

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@40
    .line 3224
    const/16 v1, 0xa

    #@42
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@45
    .line 3225
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@48
    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3159
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->checkError()V

    #@3
    .line 3160
    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    #@5
    const-wide/16 v2, 0x1

    #@7
    add-long/2addr v0, v2

    #@8
    iput-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    #@a
    .line 3161
    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    #@c
    const-wide/16 v2, -0x1

    #@e
    cmp-long v0, v0, v2

    #@10
    if-eqz v0, :cond_0

    #@12
    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    #@14
    iget-wide v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    #@16
    cmp-long v0, v0, v2

    #@18
    if-lez v0, :cond_0

    #@1a
    .line 3162
    new-instance v0, Ljava/io/IOException;

    #@1c
    const-string/jumbo v1, "too many bytes written"

    #@1f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 3164
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@25
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@28
    .line 3158
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3169
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->write([BII)V

    #@5
    .line 3168
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3174
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->checkError()V

    #@3
    .line 3175
    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    #@5
    int-to-long v2, p3

    #@6
    add-long/2addr v0, v2

    #@7
    iput-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    #@9
    .line 3176
    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    #@b
    const-wide/16 v2, -0x1

    #@d
    cmp-long v0, v0, v2

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-wide v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->written:J

    #@13
    iget-wide v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->expected:J

    #@15
    cmp-long v0, v0, v2

    #@17
    if-lez v0, :cond_0

    #@19
    .line 3177
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@1b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@1e
    .line 3178
    new-instance v0, Ljava/io/IOException;

    #@20
    const-string/jumbo v1, "too many bytes written"

    #@23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 3180
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@29
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@2c
    .line 3173
    return-void
.end method

.method writtenOK()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3200
    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->closed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->error:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method
