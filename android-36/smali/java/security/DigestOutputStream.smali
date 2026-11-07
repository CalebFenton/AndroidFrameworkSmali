.class public Ljava/security/DigestOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DigestOutputStream.java"


# instance fields
.field protected whitelist test-api digest:Ljava/security/MessageDigest;

.field private greylist-max-o on:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "digest"    # Ljava/security/MessageDigest;

    .line 74
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/DigestOutputStream;->on:Z

    .line 75
    invoke-virtual {p0, p2}, Ljava/security/DigestOutputStream;->setMessageDigest(Ljava/security/MessageDigest;)V

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist test-api getMessageDigest()Ljava/security/MessageDigest;
    .registers 2

    .line 85
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public whitelist test-api on(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 171
    iput-boolean p1, p0, Ljava/security/DigestOutputStream;->on:Z

    .line 172
    return-void
.end method

.method public whitelist test-api setMessageDigest(Ljava/security/MessageDigest;)V
    .registers 2
    .param p1, "digest"    # Ljava/security/MessageDigest;

    .line 95
    iput-object p1, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    .line 96
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Digest Output Stream] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Ljava/security/DigestOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 117
    iget-boolean v0, p0, Ljava/security/DigestOutputStream;->on:Z

    if-eqz v0, :cond_f

    .line 118
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 120
    :cond_f
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    if-eqz p1, :cond_22

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_22

    .line 151
    if-ltz p2, :cond_1a

    if-ltz p3, :cond_1a

    .line 155
    iget-object v0, p0, Ljava/security/DigestOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 156
    iget-boolean v0, p0, Ljava/security/DigestOutputStream;->on:Z

    if-eqz v0, :cond_19

    .line 157
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 159
    :cond_19
    return-void

    .line 152
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "wrong index for write"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong parameters for write"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
