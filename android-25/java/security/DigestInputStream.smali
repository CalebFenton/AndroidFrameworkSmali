.class public Ljava/security/DigestInputStream;
.super Ljava/io/FilterInputStream;
.source "DigestInputStream.java"


# instance fields
.field protected digest:Ljava/security/MessageDigest;

.field private on:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "digest"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 69
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/security/DigestInputStream;->on:Z

    #@6
    .line 86
    invoke-virtual {p0, p2}, Ljava/security/DigestInputStream;->setMessageDigest(Ljava/security/MessageDigest;)V

    #@9
    .line 84
    return-void
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    #@2
    return-object v0
.end method

.method public on(Z)V
    .locals 0
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 178
    iput-boolean p1, p0, Ljava/security/DigestInputStream;->on:Z

    #@2
    .line 177
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
    .line 124
    iget-object v1, p0, Ljava/security/DigestInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 125
    .local v0, "ch":I
    iget-boolean v1, p0, Ljava/security/DigestInputStream;->on:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v1, -0x1

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 126
    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    #@f
    int-to-byte v2, v0

    #@10
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update(B)V

    #@13
    .line 128
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
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
    .line 161
    iget-object v1, p0, Ljava/security/DigestInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    .line 162
    .local v0, "result":I
    iget-boolean v1, p0, Ljava/security/DigestInputStream;->on:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v1, -0x1

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 163
    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    #@f
    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    #@12
    .line 165
    :cond_0
    return v0
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "digest"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 106
    iput-object p1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    #@2
    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[Digest Input Stream] "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    #@e
    invoke-virtual {v1}, Ljava/security/MessageDigest;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method
