.class Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;
.super Ljava/util/jar/JarEntry;
.source "URLJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/jar/URLJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLJarFileEntry"
.end annotation


# instance fields
.field private blacklist je:Ljava/util/jar/JarEntry;

.field final synthetic blacklist this$0:Lsun/net/www/protocol/jar/URLJarFile;


# direct methods
.method constructor blacklist <init>(Lsun/net/www/protocol/jar/URLJarFile;Ljava/util/jar/JarEntry;)V
    .registers 3
    .param p2, "je"    # Ljava/util/jar/JarEntry;
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

    .line 259
    iput-object p1, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    .line 260
    invoke-direct {p0, p2}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/jar/JarEntry;)V

    .line 261
    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    .line 262
    return-void
.end method


# virtual methods
.method public whitelist test-api getAttributes()Ljava/util/jar/Attributes;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    invoke-static {v0}, Lsun/net/www/protocol/jar/URLJarFile;->-$$Nest$misSuperMan(Lsun/net/www/protocol/jar/URLJarFile;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 266
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    invoke-static {v0}, Lsun/net/www/protocol/jar/URLJarFile;->-$$Nest$fgetsuperEntries(Lsun/net/www/protocol/jar/URLJarFile;)Ljava/util/Map;

    move-result-object v0

    .line 267
    .local v0, "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    if-eqz v0, :cond_23

    .line 268
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/Attributes;

    .line 269
    .local v1, "a":Ljava/util/jar/Attributes;
    if-eqz v1, :cond_23

    .line 270
    invoke-virtual {v1}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/Attributes;

    return-object v2

    .line 273
    .end local v0    # "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v1    # "a":Ljava/util/jar/Attributes;
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getCertificates()[Ljava/security/cert/Certificate;
    .registers 3

    .line 277
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 278
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    :cond_a
    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    :goto_10
    return-object v1
.end method

.method public whitelist test-api getCodeSigners()[Ljava/security/CodeSigner;
    .registers 3

    .line 282
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v0

    .line 283
    .local v0, "csg":[Ljava/security/CodeSigner;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    :cond_a
    invoke-virtual {v0}, [Ljava/security/CodeSigner;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/CodeSigner;

    :goto_10
    return-object v1
.end method
