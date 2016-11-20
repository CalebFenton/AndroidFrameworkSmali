.class Ljava/util/jar/JarFile$JarFileEntry;
.super Ljava/util/jar/JarEntry;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JarFileEntry"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/jar/JarFile;


# direct methods
.method constructor <init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/jar/JarFile;
    .param p2, "ze"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    .line 258
    iput-object p1, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    #@2
    .line 259
    invoke-direct {p0, p2}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    #@5
    .line 258
    return-void
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
    .line 262
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    #@3
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@6
    move-result-object v0

    #@7
    .line 263
    .local v0, "man":Ljava/util/jar/Manifest;
    if-eqz v0, :cond_0

    #@9
    .line 264
    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarFileEntry;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 266
    :cond_0
    return-object v2
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 271
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    #@3
    invoke-static {v2}, Ljava/util/jar/JarFile;->-wrap0(Ljava/util/jar/JarFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 275
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    #@8
    if-nez v2, :cond_0

    #@a
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    #@c
    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    #@f
    move-result-object v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 276
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    #@14
    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    #@1a
    invoke-virtual {v2, v3, p0}, Ljava/util/jar/JarVerifier;->getCerts(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;

    #@1d
    move-result-object v2

    #@1e
    iput-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    #@20
    .line 278
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    #@22
    if-nez v2, :cond_1

    #@24
    :goto_0
    return-object v1

    #@25
    .line 272
    :catch_0
    move-exception v0

    #@26
    .line 273
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@28
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v1

    #@2c
    .line 278
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    #@2e
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, [Ljava/security/cert/Certificate;

    #@34
    goto :goto_0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 282
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    #@3
    invoke-static {v2}, Ljava/util/jar/JarFile;->-wrap0(Ljava/util/jar/JarFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 286
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    #@8
    if-nez v2, :cond_0

    #@a
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    #@c
    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    #@f
    move-result-object v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 287
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    #@14
    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    #@1a
    invoke-virtual {v2, v3, p0}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    #@1d
    move-result-object v2

    #@1e
    iput-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    #@20
    .line 289
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    #@22
    if-nez v2, :cond_1

    #@24
    :goto_0
    return-object v1

    #@25
    .line 283
    :catch_0
    move-exception v0

    #@26
    .line 284
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@28
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v1

    #@2c
    .line 289
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    #@2e
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, [Ljava/security/CodeSigner;

    #@34
    goto :goto_0
.end method
