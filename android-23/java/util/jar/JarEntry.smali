.class public Ljava/util/jar/JarEntry;
.super Ljava/util/zip/ZipEntry;
.source "JarEntry.java"


# instance fields
.field private attributes:Ljava/util/jar/Attributes;

.field private factory:Ljava/security/cert/CertificateFactory;

.field private isFactoryChecked:Z

.field final parentJar:Ljava/util/jar/JarFile;

.field signers:[Ljava/security/CodeSigner;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    #@3
    .line 49
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    #@6
    .line 59
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    #@9
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/JarEntry;)V
    .locals 1
    .param p1, "je"    # Ljava/util/jar/JarEntry;

    #@0
    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    #@3
    .line 49
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    #@6
    .line 86
    iget-object v0, p1, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    #@8
    iput-object v0, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    #@a
    .line 87
    iget-object v0, p1, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    #@c
    iput-object v0, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    #@e
    .line 88
    iget-object v0, p1, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    #@10
    iput-object v0, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    #@12
    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 1
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;Ljava/util/jar/JarFile;)V

    #@4
    .line 68
    return-void
.end method

.method constructor <init>(Ljava/util/zip/ZipEntry;Ljava/util/jar/JarFile;)V
    .locals 1
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .param p2, "parentJar"    # Ljava/util/jar/JarFile;

    #@0
    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    #@3
    .line 49
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    #@6
    .line 74
    iput-object p2, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    #@8
    .line 72
    return-void
.end method

.method private addCodeSigner(Ljava/util/ArrayList;[Ljava/security/cert/Certificate;)V
    .locals 8
    .param p2, "certs"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/CodeSigner;",
            ">;[",
            "Ljava/security/cert/Certificate;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "asigners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 212
    const/4 v3, 0x0

    #@3
    array-length v4, p2

    #@4
    :goto_0
    if-ge v3, v4, :cond_1

    #@6
    aget-object v0, p2, v3

    #@8
    .line 214
    .local v0, "cert":Ljava/security/cert/Certificate;
    instance-of v5, v0, Ljava/security/cert/X509Certificate;

    #@a
    if-nez v5, :cond_0

    #@c
    .line 215
    return-void

    #@d
    .line 212
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@f
    goto :goto_0

    #@10
    .line 219
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_1
    const/4 v1, 0x0

    #@11
    .line 220
    .local v1, "certPath":Ljava/security/cert/CertPath;
    iget-boolean v3, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    #@13
    if-nez v3, :cond_2

    #@15
    .line 222
    :try_start_0
    const-string/jumbo v3, "X.509"

    #@18
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@1b
    move-result-object v3

    #@1c
    iput-object v3, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 226
    :goto_1
    iput-boolean v6, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    #@20
    .line 229
    :cond_2
    iget-object v3, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;

    #@22
    if-nez v3, :cond_3

    #@24
    .line 230
    return-void

    #@25
    .line 225
    :catchall_0
    move-exception v3

    #@26
    .line 226
    iput-boolean v6, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    #@28
    .line 225
    throw v3

    #@29
    .line 233
    :cond_3
    :try_start_1
    iget-object v3, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;

    #@2b
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    #@32
    move-result-object v1

    #@33
    .line 237
    .end local v1    # "certPath":Ljava/security/cert/CertPath;
    :goto_2
    if-eqz v1, :cond_4

    #@35
    .line 238
    new-instance v3, Ljava/security/CodeSigner;

    #@37
    invoke-direct {v3, v1, v7}, Ljava/security/CodeSigner;-><init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V

    #@3a
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 211
    :cond_4
    return-void

    #@3e
    .line 234
    .restart local v1    # "certPath":Ljava/security/cert/CertPath;
    :catch_0
    move-exception v2

    #@3f
    .local v2, "ex":Ljava/security/cert/CertificateException;
    goto :goto_2

    #@40
    .line 223
    .end local v2    # "ex":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v2

    #@41
    .restart local v2    # "ex":Ljava/security/cert/CertificateException;
    goto :goto_1
.end method

.method private getCodeSigners([[Ljava/security/cert/Certificate;)[Ljava/security/CodeSigner;
    .locals 5
    .param p1, "certChains"    # [[Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 196
    if-nez p1, :cond_0

    #@3
    .line 197
    return-object v3

    #@4
    .line 200
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@6
    array-length v3, p1

    #@7
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 202
    .local v0, "asigners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    const/4 v3, 0x0

    #@b
    array-length v4, p1

    #@c
    :goto_0
    if-ge v3, v4, :cond_1

    #@e
    aget-object v1, p1, v3

    #@10
    .line 203
    .local v1, "chain":[Ljava/security/cert/Certificate;
    invoke-direct {p0, v0, v1}, Ljava/util/jar/JarEntry;->addCodeSigner(Ljava/util/ArrayList;[Ljava/security/cert/Certificate;)V

    #@13
    .line 202
    add-int/lit8 v3, v3, 0x1

    #@15
    goto :goto_0

    #@16
    .line 206
    .end local v1    # "chain":[Ljava/security/cert/Certificate;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v3

    #@1a
    new-array v2, v3, [Ljava/security/CodeSigner;

    #@1c
    .line 207
    .local v2, "tmp":[Ljava/security/CodeSigner;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f
    .line 208
    return-object v2
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 102
    iget-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 103
    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    #@b
    return-object v1

    #@c
    .line 105
    :cond_1
    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    #@e
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@11
    move-result-object v0

    #@12
    .line 106
    .local v0, "manifest":Ljava/util/jar/Manifest;
    if-nez v0, :cond_2

    #@14
    .line 107
    return-object v2

    #@15
    .line 109
    :cond_2
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    #@1f
    return-object v1
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 10

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 126
    iget-object v6, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    #@4
    if-nez v6, :cond_0

    #@6
    .line 127
    return-object v8

    #@7
    .line 129
    :cond_0
    iget-object v6, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    #@9
    iget-object v5, v6, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@b
    .line 130
    .local v5, "jarVerifier":Ljava/util/jar/JarVerifier;
    if-nez v5, :cond_1

    #@d
    .line 131
    return-object v8

    #@e
    .line 134
    :cond_1
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v5, v6}, Ljava/util/jar/JarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    #@15
    move-result-object v0

    #@16
    .line 135
    .local v0, "certChains":[[Ljava/security/cert/Certificate;
    if-nez v0, :cond_2

    #@18
    .line 136
    return-object v8

    #@19
    .line 140
    :cond_2
    const/4 v3, 0x0

    #@1a
    .line 141
    .local v3, "count":I
    array-length v8, v0

    #@1b
    move v6, v7

    #@1c
    :goto_0
    if-ge v6, v8, :cond_3

    #@1e
    aget-object v2, v0, v6

    #@20
    .line 142
    .local v2, "chain":[Ljava/security/cert/Certificate;
    array-length v9, v2

    #@21
    add-int/2addr v3, v9

    #@22
    .line 141
    add-int/lit8 v6, v6, 0x1

    #@24
    goto :goto_0

    #@25
    .line 146
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_3
    new-array v1, v3, [Ljava/security/cert/Certificate;

    #@27
    .line 147
    .local v1, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    #@28
    .line 148
    .local v4, "i":I
    array-length v8, v0

    #@29
    move v6, v7

    #@2a
    :goto_1
    if-ge v6, v8, :cond_4

    #@2c
    aget-object v2, v0, v6

    #@2e
    .line 149
    .restart local v2    # "chain":[Ljava/security/cert/Certificate;
    array-length v9, v2

    #@2f
    invoke-static {v2, v7, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@32
    .line 150
    array-length v9, v2

    #@33
    add-int/2addr v4, v9

    #@34
    .line 148
    add-int/lit8 v6, v6, 0x1

    #@36
    goto :goto_1

    #@37
    .line 153
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_4
    return-object v1
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 176
    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 177
    return-object v2

    #@6
    .line 180
    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    #@8
    iget-object v0, v1, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@a
    .line 181
    .local v0, "jarVerifier":Ljava/util/jar/JarVerifier;
    if-nez v0, :cond_1

    #@c
    .line 182
    return-object v2

    #@d
    .line 185
    :cond_1
    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    #@f
    if-nez v1, :cond_2

    #@11
    .line 186
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/util/jar/JarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    #@18
    move-result-object v1

    #@19
    invoke-direct {p0, v1}, Ljava/util/jar/JarEntry;->getCodeSigners([[Ljava/security/cert/Certificate;)[Ljava/security/CodeSigner;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    #@1f
    .line 188
    :cond_2
    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    #@21
    if-nez v1, :cond_3

    #@23
    .line 189
    return-object v2

    #@24
    .line 192
    :cond_3
    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    #@26
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, [Ljava/security/CodeSigner;

    #@2c
    return-object v1
.end method

.method setAttributes(Ljava/util/jar/Attributes;)V
    .locals 0
    .param p1, "attrib"    # Ljava/util/jar/Attributes;

    #@0
    .prologue
    .line 157
    iput-object p1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    #@2
    .line 156
    return-void
.end method
