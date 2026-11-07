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
.field final synthetic blacklist this$0:Ljava/util/jar/JarFile;


# direct methods
.method constructor blacklist <init>(Ljava/util/jar/JarFile;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 325
    iput-object p1, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    .line 326
    invoke-direct {p0, p2}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V
    .registers 3
    .param p2, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 320
    iput-object p1, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    .line 321
    invoke-direct {p0, p2}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 322
    return-void
.end method


# virtual methods
.method public whitelist test-api getAttributes()Ljava/util/jar/Attributes;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 331
    .local v0, "man":Ljava/util/jar/Manifest;
    if-eqz v0, :cond_11

    .line 332
    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarFileEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    return-object v1

    .line 334
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getCertificates()[Ljava/security/cert/Certificate;
    .registers 3

    .line 339
    :try_start_0
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v0}, Ljava/util/jar/JarFile;->-$$Nest$mmaybeInstantiateVerifier(Ljava/util/jar/JarFile;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2f

    .line 342
    nop

    .line 343
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    if-nez v0, :cond_20

    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v0}, Ljava/util/jar/JarFile;->-$$Nest$fgetjv(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 344
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v0}, Ljava/util/jar/JarFile;->-$$Nest$fgetjv(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v0

    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-virtual {v0, v1, p0}, Ljava/util/jar/JarVerifier;->getCerts(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    .line 346
    :cond_20
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    if-nez v0, :cond_26

    const/4 v0, 0x0

    goto :goto_2e

    :cond_26
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    :goto_2e
    return-object v0

    .line 340
    :catch_2f
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getCodeSigners()[Ljava/security/CodeSigner;
    .registers 3

    .line 350
    :try_start_0
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v0}, Ljava/util/jar/JarFile;->-$$Nest$mmaybeInstantiateVerifier(Ljava/util/jar/JarFile;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2f

    .line 353
    nop

    .line 354
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v0, :cond_20

    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v0}, Ljava/util/jar/JarFile;->-$$Nest$fgetjv(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 355
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v0}, Ljava/util/jar/JarFile;->-$$Nest$fgetjv(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v0

    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-virtual {v0, v1, p0}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v0

    iput-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    .line 357
    :cond_20
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v0, :cond_26

    const/4 v0, 0x0

    goto :goto_2e

    :cond_26
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    invoke-virtual {v0}, [Ljava/security/CodeSigner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    :goto_2e
    return-object v0

    .line 351
    :catch_2f
    move-exception v0

    .line 352
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
