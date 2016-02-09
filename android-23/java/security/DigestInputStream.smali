.class public Ljava/security/DigestInputStream;
.super Ljava/io/FilterInputStream;
.source "DigestInputStream.java"


# instance fields
.field protected digest:Ljava/security/MessageDigest;

.field private isOn:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "digest"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 36
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/security/DigestInputStream;->isOn:Z

    #@6
    .line 52
    iput-object p2, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    #@8
    .line 50
    return-void
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    #@2
    return-object v0
.end method

.method public on(Z)V
    .locals 0
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 133
    iput-boolean p1, p0, Ljava/security/DigestInputStream;->isOn:Z

    #@2
    .line 132
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    iget-object v1, p0, Ljava/security/DigestInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 91
    .local v0, "byteRead":I
    iget-boolean v1, p0, Ljava/security/DigestInputStream;->isOn:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v1, -0x1

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 92
    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    #@f
    int-to-byte v2, v0

    #@10
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update(B)V

    #@13
    .line 95
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v1, p0, Ljava/security/DigestInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    .line 117
    .local v0, "bytesRead":I
    iget-boolean v1, p0, Ljava/security/DigestInputStream;->isOn:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v1, -0x1

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 118
    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    #@f
    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    #@12
    .line 121
    :cond_0
    return v0
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "digest"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 71
    iput-object p1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    #@2
    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/io/FilterInputStream;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ", "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    #@16
    invoke-virtual {v1}, Ljava/security/MessageDigest;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 145
    iget-boolean v0, p0, Ljava/security/DigestInputStream;->isOn:Z

    #@20
    if-eqz v0, :cond_0

    #@22
    const-string/jumbo v0, ", is on"

    #@25
    .line 144
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0

    #@2e
    .line 145
    :cond_0
    const-string/jumbo v0, ", is off"

    #@31
    goto :goto_0
.end method
