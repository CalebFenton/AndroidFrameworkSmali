.class Lsun/misc/URLClassPath$3;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath;->getLoader(Ljava/net/URL;)Lsun/misc/URLClassPath$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Lsun/misc/URLClassPath$Loader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/misc/URLClassPath;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath;Ljava/net/URL;)V
    .locals 0
    .param p1, "this$0"    # Lsun/misc/URLClassPath;
    .param p2, "val$url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 357
    iput-object p1, p0, Lsun/misc/URLClassPath$3;->this$0:Lsun/misc/URLClassPath;

    #@2
    iput-object p2, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    invoke-virtual {p0}, Lsun/misc/URLClassPath$3;->run()Lsun/misc/URLClassPath$Loader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Lsun/misc/URLClassPath$Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 359
    iget-object v1, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    #@2
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 360
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@8
    const-string/jumbo v1, "/"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 361
    const-string/jumbo v1, "file"

    #@14
    iget-object v2, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    #@16
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 362
    new-instance v1, Lsun/misc/URLClassPath$FileLoader;

    #@22
    iget-object v2, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    #@24
    invoke-direct {v1, v2}, Lsun/misc/URLClassPath$FileLoader;-><init>(Ljava/net/URL;)V

    #@27
    return-object v1

    #@28
    .line 364
    :cond_0
    new-instance v1, Lsun/misc/URLClassPath$Loader;

    #@2a
    iget-object v2, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    #@2c
    invoke-direct {v1, v2}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

    #@2f
    return-object v1

    #@30
    .line 367
    :cond_1
    new-instance v1, Lsun/misc/URLClassPath$JarLoader;

    #@32
    iget-object v2, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    #@34
    iget-object v3, p0, Lsun/misc/URLClassPath$3;->this$0:Lsun/misc/URLClassPath;

    #@36
    invoke-static {v3}, Lsun/misc/URLClassPath;->-get2(Lsun/misc/URLClassPath;)Ljava/net/URLStreamHandler;

    #@39
    move-result-object v3

    #@3a
    iget-object v4, p0, Lsun/misc/URLClassPath$3;->this$0:Lsun/misc/URLClassPath;

    #@3c
    iget-object v4, v4, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    #@3e
    invoke-direct {v1, v2, v3, v4}, Lsun/misc/URLClassPath$JarLoader;-><init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;)V

    #@41
    return-object v1
.end method
