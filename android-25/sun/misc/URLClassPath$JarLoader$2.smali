.class Lsun/misc/URLClassPath$JarLoader$2;
.super Lsun/misc/Resource;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsun/misc/URLClassPath$JarLoader;

.field final synthetic val$entry:Ljava/util/jar/JarEntry;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath$JarLoader;Ljava/lang/String;Ljava/net/URL;Ljava/util/jar/JarEntry;)V
    .locals 0
    .param p1, "this$1"    # Lsun/misc/URLClassPath$JarLoader;
    .param p2, "val$name"    # Ljava/lang/String;
    .param p3, "val$url"    # Ljava/net/URL;
    .param p4, "val$entry"    # Ljava/util/jar/JarEntry;

    #@0
    .prologue
    .line 769
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@2
    iput-object p2, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$name:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$url:Ljava/net/URL;

    #@6
    iput-object p4, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    #@8
    invoke-direct {p0}, Lsun/misc/Resource;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 780
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    #@2
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 1

    #@0
    .prologue
    .line 782
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    #@2
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCodeSigners()[Ljava/security/CodeSigner;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCodeSourceURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 772
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@2
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->-get0(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentLength()I
    .locals 2

    #@0
    .prologue
    .line 776
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    #@2
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    #@5
    move-result-wide v0

    #@6
    long-to-int v0, v0

    #@7
    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 774
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@2
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->-get3(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    #@8
    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 778
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@2
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->-get3(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 770
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 771
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$url:Ljava/net/URL;

    #@2
    return-object v0
.end method
