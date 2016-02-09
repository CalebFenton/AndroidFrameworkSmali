.class public Ljava/security/DigestOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DigestOutputStream.java"


# instance fields
.field protected digest:Ljava/security/MessageDigest;

.field private isOn:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "digest"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 36
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/security/DigestOutputStream;->isOn:Z

    #@6
    .line 49
    iput-object p2, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    #@8
    .line 47
    return-void
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    #@2
    return-object v0
.end method

.method public on(Z)V
    .locals 0
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 122
    iput-boolean p1, p0, Ljava/security/DigestOutputStream;->isOn:Z

    #@2
    .line 121
    return-void
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "digest"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 68
    iput-object p1, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    #@2
    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/io/FilterOutputStream;->toString()Ljava/lang/String;

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
    iget-object v1, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    #@16
    invoke-virtual {v1}, Ljava/security/MessageDigest;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 134
    iget-boolean v0, p0, Ljava/security/DigestOutputStream;->isOn:Z

    #@20
    if-eqz v0, :cond_0

    #@22
    const-string/jumbo v0, ", is on"

    #@25
    .line 133
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
    .line 134
    :cond_0
    const-string/jumbo v0, ", is off"

    #@31
    goto :goto_0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    iget-boolean v0, p0, Ljava/security/DigestOutputStream;->isOn:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 84
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    #@6
    int-to-byte v1, p1

    #@7
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    #@a
    .line 87
    :cond_0
    iget-object v0, p0, Ljava/security/DigestOutputStream;->out:Ljava/io/OutputStream;

    #@c
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@f
    .line 81
    return-void
.end method

.method public write([BII)V
    .locals 1
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
    .line 106
    iget-boolean v0, p0, Ljava/security/DigestOutputStream;->isOn:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 107
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    #@6
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    #@9
    .line 110
    :cond_0
    iget-object v0, p0, Ljava/security/DigestOutputStream;->out:Ljava/io/OutputStream;

    #@b
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@e
    .line 104
    return-void
.end method
