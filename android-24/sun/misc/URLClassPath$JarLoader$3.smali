.class Lsun/misc/URLClassPath$JarLoader$3;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;
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
        "Lsun/misc/URLClassPath$JarLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lsun/misc/URLClassPath$JarLoader;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)V
    .locals 0
    .param p1, "this$1"    # Lsun/misc/URLClassPath$JarLoader;
    .param p2, "val$url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 889
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader$3;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@2
    iput-object p2, p0, Lsun/misc/URLClassPath$JarLoader$3;->val$url:Ljava/net/URL;

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
    .line 890
    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader$3;->run()Lsun/misc/URLClassPath$JarLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Lsun/misc/URLClassPath$JarLoader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 891
    new-instance v0, Lsun/misc/URLClassPath$JarLoader;

    #@2
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader$3;->val$url:Ljava/net/URL;

    #@4
    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader$3;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@6
    invoke-static {v2}, Lsun/misc/URLClassPath$JarLoader;->-get1(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URLStreamHandler;

    #@9
    move-result-object v2

    #@a
    .line 892
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader$3;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@c
    invoke-static {v3}, Lsun/misc/URLClassPath$JarLoader;->-get4(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    #@f
    move-result-object v3

    #@10
    .line 891
    invoke-direct {v0, v1, v2, v3}, Lsun/misc/URLClassPath$JarLoader;-><init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;)V

    #@13
    return-object v0
.end method
