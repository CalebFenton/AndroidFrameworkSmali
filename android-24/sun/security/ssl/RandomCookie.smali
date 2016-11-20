.class final Lsun/security/ssl/RandomCookie;
.super Ljava/lang/Object;
.source "RandomCookie.java"


# instance fields
.field random_bytes:[B


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;)V
    .locals 8
    .param p1, "generator"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v4

    #@7
    const-wide/16 v6, 0x3e8

    #@9
    div-long v2, v4, v6

    #@b
    .line 46
    .local v2, "temp":J
    const-wide/32 v4, 0x7fffffff

    #@e
    cmp-long v1, v2, v4

    #@10
    if-gez v1, :cond_0

    #@12
    .line 47
    long-to-int v0, v2

    #@13
    .line 52
    .local v0, "gmt_unix_time":I
    :goto_0
    const/16 v1, 0x20

    #@15
    new-array v1, v1, [B

    #@17
    iput-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@19
    .line 53
    iget-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@1b
    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@1e
    .line 55
    iget-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@20
    shr-int/lit8 v4, v0, 0x18

    #@22
    int-to-byte v4, v4

    #@23
    const/4 v5, 0x0

    #@24
    aput-byte v4, v1, v5

    #@26
    .line 56
    iget-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@28
    shr-int/lit8 v4, v0, 0x10

    #@2a
    int-to-byte v4, v4

    #@2b
    const/4 v5, 0x1

    #@2c
    aput-byte v4, v1, v5

    #@2e
    .line 57
    iget-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@30
    shr-int/lit8 v4, v0, 0x8

    #@32
    int-to-byte v4, v4

    #@33
    const/4 v5, 0x2

    #@34
    aput-byte v4, v1, v5

    #@36
    .line 58
    iget-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@38
    int-to-byte v4, v0

    #@39
    const/4 v5, 0x3

    #@3a
    aput-byte v4, v1, v5

    #@3c
    .line 43
    return-void

    #@3d
    .line 49
    .end local v0    # "gmt_unix_time":I
    :cond_0
    const v0, 0x7fffffff

    #@40
    .restart local v0    # "gmt_unix_time":I
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 3
    .param p1, "m"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 62
    new-array v0, v2, [B

    #@7
    iput-object v0, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@9
    .line 63
    iget-object v0, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {p1, v0, v1, v2}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    #@f
    .line 61
    return-void
.end method


# virtual methods
.method print(Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 73
    iget-object v2, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@2
    const/4 v3, 0x0

    #@3
    aget-byte v2, v2, v3

    #@5
    shl-int/lit8 v0, v2, 0x18

    #@7
    .line 74
    .local v0, "gmt_unix_time":I
    iget-object v2, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@9
    const/4 v3, 0x1

    #@a
    aget-byte v2, v2, v3

    #@c
    shl-int/lit8 v2, v2, 0x10

    #@e
    add-int/2addr v0, v2

    #@f
    .line 75
    iget-object v2, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@11
    const/4 v3, 0x2

    #@12
    aget-byte v2, v2, v3

    #@14
    shl-int/lit8 v2, v2, 0x8

    #@16
    add-int/2addr v0, v2

    #@17
    .line 76
    iget-object v2, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@19
    const/4 v3, 0x3

    #@1a
    aget-byte v2, v2, v3

    #@1c
    add-int/2addr v0, v2

    #@1d
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "GMT: "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3b
    .line 79
    const-string/jumbo v2, "bytes = { "

    #@3e
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@41
    .line 81
    const/4 v1, 0x4

    #@42
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    #@44
    if-ge v1, v2, :cond_1

    #@46
    .line 82
    const/4 v2, 0x4

    #@47
    if-eq v1, v2, :cond_0

    #@49
    .line 83
    const-string/jumbo v2, ", "

    #@4c
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@4f
    .line 85
    :cond_0
    iget-object v2, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@51
    aget-byte v2, v2, v1

    #@53
    and-int/lit16 v2, v2, 0xff

    #@55
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(I)V

    #@58
    .line 81
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 87
    :cond_1
    const-string/jumbo v2, " }"

    #@5e
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@61
    .line 70
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 3
    .param p1, "out"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    #@2
    const/4 v1, 0x0

    #@3
    const/16 v2, 0x20

    #@5
    invoke-virtual {p1, v0, v1, v2}, Lsun/security/ssl/HandshakeOutStream;->write([BII)V

    #@8
    .line 66
    return-void
.end method
