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
.field private is:Ljava/io/InputStream;

.field private jv:Ljava/util/jar/JarVerifier;

.field private mev:Lsun/security/util/ManifestEntryVerifier;

.field private numLeft:J


# direct methods
.method constructor <init>(Ljava/util/jar/Manifest;Ljava/util/jar/JarEntry;Ljava/io/InputStream;Ljava/util/jar/JarVerifier;)V
    .locals 4
    .param p1, "man"    # Ljava/util/jar/Manifest;
    .param p2, "je"    # Ljava/util/jar/JarEntry;
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "jv"    # Ljava/util/jar/JarVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 442
    if-nez p3, :cond_0

    #@5
    .line 443
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "is == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 445
    :cond_0
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    #@10
    .line 446
    iput-object p4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    #@12
    .line 447
    new-instance v0, Lsun/security/util/ManifestEntryVerifier;

    #@14
    invoke-direct {v0, p1}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V

    #@17
    iput-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@19
    .line 448
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    #@1b
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@1d
    invoke-virtual {v0, p2, v1}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    #@20
    .line 449
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getSize()J

    #@23
    move-result-wide v0

    #@24
    iput-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@26
    .line 450
    iget-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@28
    const-wide/16 v2, 0x0

    #@2a
    cmp-long v0, v0, v2

    #@2c
    if-nez v0, :cond_1

    #@2e
    .line 451
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    #@30
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@32
    const/4 v2, -0x1

    #@33
    invoke-virtual {v0, v2, v1}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    #@36
    .line 438
    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 508
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 511
    :cond_0
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    #@f
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 498
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 499
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@a
    .line 500
    :cond_0
    iput-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    #@c
    .line 501
    iput-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@e
    .line 502
    iput-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    #@10
    .line 496
    return-void
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v6, -0x1

    #@3
    .line 457
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 458
    new-instance v1, Ljava/io/IOException;

    #@9
    const-string/jumbo v2, "stream closed"

    #@c
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 461
    :cond_0
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@12
    cmp-long v1, v2, v8

    #@14
    if-lez v1, :cond_2

    #@16
    .line 462
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    #@18
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@1b
    move-result v0

    #@1c
    .line 463
    .local v0, "b":I
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    #@1e
    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@20
    invoke-virtual {v1, v0, v2}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    #@23
    .line 464
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@25
    const-wide/16 v4, 0x1

    #@27
    sub-long/2addr v2, v4

    #@28
    iput-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@2a
    .line 465
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@2c
    cmp-long v1, v2, v8

    #@2e
    if-nez v1, :cond_1

    #@30
    .line 466
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    #@32
    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@34
    invoke-virtual {v1, v6, v2}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    #@37
    .line 467
    :cond_1
    return v0

    #@38
    .line 469
    .end local v0    # "b":I
    :cond_2
    return v6
.end method

.method public read([BII)I
    .locals 9
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
    const/4 v8, -0x1

    #@1
    const-wide/16 v6, 0x0

    #@3
    .line 475
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 476
    new-instance v0, Ljava/io/IOException;

    #@9
    const-string/jumbo v2, "stream closed"

    #@c
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 479
    :cond_0
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@12
    cmp-long v0, v2, v6

    #@14
    if-lez v0, :cond_1

    #@16
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@18
    int-to-long v4, p3

    #@19
    cmp-long v0, v2, v4

    #@1b
    if-gez v0, :cond_1

    #@1d
    .line 480
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@1f
    long-to-int p3, v2

    #@20
    .line 483
    :cond_1
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@22
    cmp-long v0, v2, v6

    #@24
    if-lez v0, :cond_3

    #@26
    .line 484
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    #@28
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@2b
    move-result v1

    #@2c
    .line 485
    .local v1, "n":I
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    #@2e
    iget-object v5, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@30
    move-object v2, p1

    #@31
    move v3, p2

    #@32
    move v4, p3

    #@33
    invoke-virtual/range {v0 .. v5}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    #@36
    .line 486
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@38
    int-to-long v4, v1

    #@39
    sub-long/2addr v2, v4

    #@3a
    iput-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@3c
    .line 487
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    #@3e
    cmp-long v0, v2, v6

    #@40
    if-nez v0, :cond_2

    #@42
    .line 488
    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    #@44
    iget-object v7, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@46
    move v3, v8

    #@47
    move-object v4, p1

    #@48
    move v5, p2

    #@49
    move v6, p3

    #@4a
    invoke-virtual/range {v2 .. v7}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    #@4d
    .line 489
    :cond_2
    return v1

    #@4e
    .line 491
    .end local v1    # "n":I
    :cond_3
    return v8
.end method
