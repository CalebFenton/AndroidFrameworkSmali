.class Lsun/net/smtp/SmtpPrintStream;
.super Ljava/io/PrintStream;
.source "SmtpClient.java"


# instance fields
.field private lastc:I

.field private target:Lsun/net/smtp/SmtpClient;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lsun/net/smtp/SmtpClient;)V
    .locals 2
    .param p1, "fos"    # Ljava/io/OutputStream;
    .param p2, "cl"    # Lsun/net/smtp/SmtpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    invoke-virtual {p2}, Lsun/net/smtp/SmtpClient;->getEncoding()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    #@8
    .line 215
    const/16 v0, 0xa

    #@a
    iput v0, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I

    #@c
    .line 219
    iput-object p2, p0, Lsun/net/smtp/SmtpPrintStream;->target:Lsun/net/smtp/SmtpClient;

    #@e
    .line 217
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    .line 223
    iget-object v1, p0, Lsun/net/smtp/SmtpPrintStream;->target:Lsun/net/smtp/SmtpClient;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 224
    return-void

    #@7
    .line 225
    :cond_0
    iget v1, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 226
    invoke-virtual {p0, v2}, Lsun/net/smtp/SmtpPrintStream;->write(I)V

    #@e
    .line 229
    :cond_1
    :try_start_0
    iget-object v1, p0, Lsun/net/smtp/SmtpPrintStream;->target:Lsun/net/smtp/SmtpClient;

    #@10
    const-string/jumbo v2, ".\r\n"

    #@13
    const/16 v3, 0xfa

    #@15
    invoke-virtual {v1, v2, v3}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    #@18
    .line 230
    iget-object v1, p0, Lsun/net/smtp/SmtpPrintStream;->target:Lsun/net/smtp/SmtpClient;

    #@1a
    const/4 v2, 0x0

    #@1b
    iput-object v2, v1, Lsun/net/smtp/SmtpClient;->message:Lsun/net/smtp/SmtpPrintStream;

    #@1d
    .line 231
    const/4 v1, 0x0

    #@1e
    iput-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@20
    .line 232
    const/4 v1, 0x0

    #@21
    iput-object v1, p0, Lsun/net/smtp/SmtpPrintStream;->target:Lsun/net/smtp/SmtpClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 222
    :goto_0
    return-void

    #@24
    .line 233
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public print(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 277
    .local v1, "len":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, v2}, Lsun/net/smtp/SmtpPrintStream;->write(I)V

    #@e
    .line 277
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 275
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 5
    .param p1, "b"    # I

    #@0
    .prologue
    const/16 v2, 0x2e

    #@2
    const/16 v4, 0xd

    #@4
    const/16 v3, 0xa

    #@6
    .line 240
    :try_start_0
    iget v1, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I

    #@8
    if-ne v1, v3, :cond_0

    #@a
    if-ne p1, v2, :cond_0

    #@c
    .line 241
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@e
    const/16 v2, 0x2e

    #@10
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    #@13
    .line 245
    :cond_0
    if-ne p1, v3, :cond_1

    #@15
    iget v1, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I

    #@17
    if-eq v1, v4, :cond_1

    #@19
    .line 246
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@1b
    const/16 v2, 0xd

    #@1d
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    #@20
    .line 248
    :cond_1
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@22
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    #@25
    .line 249
    iput p1, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 237
    :goto_0
    return-void

    #@28
    .line 250
    :catch_0
    move-exception v0

    #@29
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public write([BII)V
    .locals 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    const/16 v8, 0x2e

    #@2
    const/16 v7, 0xd

    #@4
    const/16 v6, 0xa

    #@6
    .line 256
    :try_start_0
    iget v2, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 257
    .local v2, "lc":I
    :goto_0
    add-int/lit8 p3, p3, -0x1

    #@a
    if-ltz p3, :cond_2

    #@c
    .line 258
    add-int/lit8 v3, p2, 0x1

    #@e
    .end local p2    # "off":I
    .local v3, "off":I
    :try_start_1
    aget-byte v0, p1, p2

    #@10
    .line 261
    .local v0, "c":I
    if-ne v2, v6, :cond_0

    #@12
    if-ne v0, v8, :cond_0

    #@14
    .line 262
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@16
    const/16 v5, 0x2e

    #@18
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    #@1b
    .line 265
    :cond_0
    if-ne v0, v6, :cond_1

    #@1d
    if-eq v2, v7, :cond_1

    #@1f
    .line 266
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@21
    const/16 v5, 0xd

    #@23
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    #@26
    .line 268
    :cond_1
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@28
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    .line 269
    move v2, v0

    #@2c
    move p2, v3

    #@2d
    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_0

    #@2e
    .line 271
    .end local v0    # "c":I
    :cond_2
    :try_start_2
    iput v2, p0, Lsun/net/smtp/SmtpPrintStream;->lastc:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@30
    .line 254
    .end local v2    # "lc":I
    :goto_1
    return-void

    #@31
    .line 272
    :catch_0
    move-exception v1

    #@32
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    #@33
    .end local v1    # "e":Ljava/io/IOException;
    .end local p2    # "off":I
    .restart local v2    # "lc":I
    .restart local v3    # "off":I
    :catch_1
    move-exception v1

    #@34
    .restart local v1    # "e":Ljava/io/IOException;
    move p2, v3

    #@35
    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_1
.end method
