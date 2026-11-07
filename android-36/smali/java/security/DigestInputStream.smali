.class public Ljava/security/DigestInputStream;
.super Ljava/io/FilterInputStream;
.source "DigestInputStream.java"


# instance fields
.field protected whitelist test-api digest:Ljava/security/MessageDigest;

.field private greylist-max-o on:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "digest"    # Ljava/security/MessageDigest;

    .line 86
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/DigestInputStream;->on:Z

    .line 87
    invoke-virtual {p0, p2}, Ljava/security/DigestInputStream;->setMessageDigest(Ljava/security/MessageDigest;)V

    .line 88
    return-void
.end method


# virtual methods
.method public whitelist test-api getMessageDigest()Ljava/security/MessageDigest;
    .registers 2

    .line 97
    iget-object v0, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public whitelist test-api on(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 179
    iput-boolean p1, p0, Ljava/security/DigestInputStream;->on:Z

    .line 180
    return-void
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Ljava/security/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 126
    .local v0, "ch":I
    iget-boolean v1, p0, Ljava/security/DigestInputStream;->on:Z

    if-eqz v1, :cond_13

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 127
    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update(B)V

    .line 129
    :cond_13
    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Ljava/security/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 163
    .local v0, "result":I
    iget-boolean v1, p0, Ljava/security/DigestInputStream;->on:Z

    if-eqz v1, :cond_12

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 164
    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 166
    :cond_12
    return v0
.end method

.method public whitelist test-api setMessageDigest(Ljava/security/MessageDigest;)V
    .registers 2
    .param p1, "digest"    # Ljava/security/MessageDigest;

    .line 107
    iput-object p1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    .line 108
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Digest Input Stream] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
