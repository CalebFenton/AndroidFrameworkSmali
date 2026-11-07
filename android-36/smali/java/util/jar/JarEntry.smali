.class public Ljava/util/jar/JarEntry;
.super Ljava/util/zip/ZipEntry;
.source "JarEntry.java"


# instance fields
.field greylist-max-o attr:Ljava/util/jar/Attributes;

.field greylist-max-o certs:[Ljava/security/cert/Certificate;

.field greylist-max-o signers:[Ljava/security/CodeSigner;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/jar/JarEntry;)V
    .registers 3
    .param p1, "je"    # Ljava/util/jar/JarEntry;

    .line 74
    invoke-direct {p0, p1}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 75
    iget-object v0, p1, Ljava/util/jar/JarEntry;->attr:Ljava/util/jar/Attributes;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->attr:Ljava/util/jar/Attributes;

    .line 76
    iget-object v0, p1, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    .line 77
    iget-object v0, p1, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 78
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/zip/ZipEntry;)V
    .registers 2
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .line 64
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist test-api getAttributes()Ljava/util/jar/Attributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Ljava/util/jar/JarEntry;->attr:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method public whitelist test-api getCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 110
    iget-object v0, p0, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    :goto_e
    return-object v0
.end method

.method public whitelist test-api getCodeSigners()[Ljava/security/CodeSigner;
    .registers 2

    .line 129
    iget-object v0, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    invoke-virtual {v0}, [Ljava/security/CodeSigner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    :goto_e
    return-object v0
.end method

.method public whitelist test-api getRealName()Ljava/lang/String;
    .registers 2

    .line 140
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
