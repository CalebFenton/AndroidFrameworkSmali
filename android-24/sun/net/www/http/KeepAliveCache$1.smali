.class Lsun/net/www/http/KeepAliveCache$1;
.super Ljava/lang/Object;
.source "KeepAliveCache.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/http/KeepAliveCache;->put(Ljava/net/URL;Ljava/lang/Object;Lsun/net/www/http/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/www/http/KeepAliveCache;

.field final synthetic val$cache:Lsun/net/www/http/KeepAliveCache;


# direct methods
.method constructor <init>(Lsun/net/www/http/KeepAliveCache;Lsun/net/www/http/KeepAliveCache;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/www/http/KeepAliveCache;
    .param p2, "val$cache"    # Lsun/net/www/http/KeepAliveCache;

    #@0
    .prologue
    .line 96
    iput-object p1, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    #@2
    iput-object p2, p0, Lsun/net/www/http/KeepAliveCache$1;->val$cache:Lsun/net/www/http/KeepAliveCache;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 97
    invoke-virtual {p0}, Lsun/net/www/http/KeepAliveCache$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@8
    move-result-object v0

    #@9
    .line 101
    .local v0, "grp":Ljava/lang/ThreadGroup;
    const/4 v1, 0x0

    #@a
    .line 102
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    #@d
    move-result-object v1

    #@e
    .local v1, "parent":Ljava/lang/ThreadGroup;
    if-eqz v1, :cond_0

    #@10
    .line 103
    move-object v0, v1

    #@11
    goto :goto_0

    #@12
    .line 106
    :cond_0
    iget-object v2, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    #@14
    new-instance v3, Ljava/lang/Thread;

    #@16
    iget-object v4, p0, Lsun/net/www/http/KeepAliveCache$1;->val$cache:Lsun/net/www/http/KeepAliveCache;

    #@18
    const-string/jumbo v5, "Keep-Alive-Timer"

    #@1b
    invoke-direct {v3, v0, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    #@1e
    invoke-static {v2, v3}, Lsun/net/www/http/KeepAliveCache;->-set0(Lsun/net/www/http/KeepAliveCache;Ljava/lang/Thread;)Ljava/lang/Thread;

    #@21
    .line 107
    iget-object v2, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    #@23
    invoke-static {v2}, Lsun/net/www/http/KeepAliveCache;->-get0(Lsun/net/www/http/KeepAliveCache;)Ljava/lang/Thread;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x1

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    #@2b
    .line 108
    iget-object v2, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    #@2d
    invoke-static {v2}, Lsun/net/www/http/KeepAliveCache;->-get0(Lsun/net/www/http/KeepAliveCache;)Ljava/lang/Thread;

    #@30
    move-result-object v2

    #@31
    const/16 v3, 0x8

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    #@36
    .line 111
    iget-object v2, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    #@38
    invoke-static {v2}, Lsun/net/www/http/KeepAliveCache;->-get0(Lsun/net/www/http/KeepAliveCache;)Ljava/lang/Thread;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@3f
    .line 112
    iget-object v2, p0, Lsun/net/www/http/KeepAliveCache$1;->this$0:Lsun/net/www/http/KeepAliveCache;

    #@41
    invoke-static {v2}, Lsun/net/www/http/KeepAliveCache;->-get0(Lsun/net/www/http/KeepAliveCache;)Ljava/lang/Thread;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@48
    .line 113
    return-object v6
.end method
