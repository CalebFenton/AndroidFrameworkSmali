.class Ljava/util/jar/JarVerifier$VerifierStream;
.super Ljava/io/InputStream;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerifierStream"
.end annotation


# instance fields
.field private greylist-max-o is:Ljava/io/InputStream;

.field private greylist-max-o jv:Ljava/util/jar/JarVerifier;

.field private greylist-max-o mev:Lsun/security/util/ManifestEntryVerifier;

.field private greylist-max-o numLeft:J


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/jar/Manifest;Ljava/util/jar/JarEntry;Ljava/io/InputStream;Ljava/util/jar/JarVerifier;)V
    .registers 9
    .param p1, "man"    # Ljava/util/jar/Manifest;
    .param p2, "je"    # Ljava/util/jar/JarEntry;
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "jv"    # Ljava/util/jar/JarVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 459
    if-eqz p3, :cond_2e

    .line 463
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    .line 464
    iput-object p4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    .line 465
    new-instance v0, Lsun/security/util/ManifestEntryVerifier;

    invoke-direct {v0, p1}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    .line 466
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v0, p2, v1}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    .line 467
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    .line 468
    iget-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    .line 469
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    const/4 v1, -0x1

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    .line 470
    :cond_2d
    return-void

    .line 460
    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "is == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    .line 529
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    .line 526
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 517
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 518
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    .line 519
    iput-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    .line 520
    iput-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    .line 521
    return-void
.end method

.method public whitelist test-api read()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_30

    .line 479
    iget-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-lez v0, :cond_2f

    .line 480
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 481
    .local v0, "b":I
    iget-object v4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v5, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v4, v0, v5}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    .line 482
    iget-wide v4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    .line 483
    iget-wide v4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_2e

    .line 484
    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v3, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v2, v1, v3}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    .line 485
    :cond_2e
    return v0

    .line 487
    .end local v0    # "b":I
    :cond_2f
    return v1

    .line 476
    :cond_30
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api read([BII)I
    .registers 14
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_47

    .line 497
    iget-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    iget-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    int-to-long v4, p3

    cmp-long v0, v0, v4

    if-gez v0, :cond_18

    .line 498
    iget-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    long-to-int p3, v0

    move v8, p3

    goto :goto_19

    .line 501
    :cond_18
    move v8, p3

    .end local p3    # "len":I
    .local v8, "len":I
    :goto_19
    iget-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_44

    .line 502
    iget-object p3, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {p3, p1, p2, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 503
    .local v5, "n":I
    iget-object v4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v9, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    move-object v6, p1

    move v7, p2

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .local v6, "b":[B
    .local v7, "off":I
    invoke-virtual/range {v4 .. v9}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    .line 504
    move p1, v5

    .end local v5    # "n":I
    .local p1, "n":I
    iget-wide p2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    .line 505
    iget-wide p2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long p2, p2, v2

    if-nez p2, :cond_43

    .line 506
    iget-object v4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    const/4 v5, -0x1

    iget-object v9, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual/range {v4 .. v9}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    .line 507
    :cond_43
    return p1

    .line 509
    .end local v6    # "b":[B
    .end local v7    # "off":I
    .local p1, "b":[B
    .restart local p2    # "off":I
    :cond_44
    move-object v6, p1

    .end local p1    # "b":[B
    .restart local v6    # "b":[B
    const/4 p1, -0x1

    return p1

    .line 494
    .end local v6    # "b":[B
    .end local v8    # "len":I
    .restart local p1    # "b":[B
    .restart local p3    # "len":I
    :cond_47
    move-object v6, p1

    move v7, p2

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .restart local v6    # "b":[B
    .restart local v7    # "off":I
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
