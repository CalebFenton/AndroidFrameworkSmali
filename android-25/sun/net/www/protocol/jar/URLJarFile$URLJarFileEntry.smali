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
.field private je:Ljava/util/jar/JarEntry;

.field final synthetic this$0:Lsun/net/www/protocol/jar/URLJarFile;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/jar/URLJarFile;Ljava/util/jar/JarEntry;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/www/protocol/jar/URLJarFile;
    .param p2, "je"    # Ljava/util/jar/JarEntry;

    #@0
    .prologue
    .line 232
    iput-object p1, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    #@2
    .line 233
    invoke-direct {p0, p2}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/jar/JarEntry;)V

    #@5
    .line 234
    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    #@7
    .line 232
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 238
    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    #@3
    invoke-static {v2}, Lsun/net/www/protocol/jar/URLJarFile;->-wrap0(Lsun/net/www/protocol/jar/URLJarFile;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 239
    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    #@b
    invoke-static {v2}, Lsun/net/www/protocol/jar/URLJarFile;->-get0(Lsun/net/www/protocol/jar/URLJarFile;)Ljava/util/Map;

    #@e
    move-result-object v1

    #@f
    .line 240
    .local v1, "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    if-eqz v1, :cond_0

    #@11
    .line 241
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/jar/Attributes;

    #@1b
    .line 242
    .local v0, "a":Ljava/util/jar/Attributes;
    if-eqz v0, :cond_0

    #@1d
    .line 243
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljava/util/jar/Attributes;

    #@23
    return-object v2

    #@24
    .line 246
    .end local v0    # "a":Ljava/util/jar/Attributes;
    .end local v1    # "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :cond_0
    return-object v3
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 250
    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    #@3
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    #@6
    move-result-object v0

    #@7
    .line 251
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Ljava/security/cert/Certificate;

    #@10
    goto :goto_0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 255
    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    #@3
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCodeSigners()[Ljava/security/CodeSigner;

    #@6
    move-result-object v0

    #@7
    .line 256
    .local v0, "csg":[Ljava/security/CodeSigner;
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Ljava/security/CodeSigner;

    #@10
    goto :goto_0
.end method
