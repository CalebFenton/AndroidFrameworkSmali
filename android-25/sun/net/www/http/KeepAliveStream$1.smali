.class final Lsun/net/www/http/KeepAliveStream$1;
.super Ljava/lang/Object;
.source "KeepAliveStream.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/http/KeepAliveStream;->queueForCleanup(Lsun/net/www/http/KeepAliveCleanerEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 176
    invoke-virtual {p0}, Lsun/net/www/http/KeepAliveStream$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@8
    move-result-object v0

    #@9
    .line 180
    .local v0, "grp":Ljava/lang/ThreadGroup;
    const/4 v1, 0x0

    #@a
    .line 181
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    #@d
    move-result-object v1

    #@e
    .local v1, "parent":Ljava/lang/ThreadGroup;
    if-eqz v1, :cond_0

    #@10
    .line 182
    move-object v0, v1

    #@11
    goto :goto_0

    #@12
    .line 185
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    #@14
    invoke-static {}, Lsun/net/www/http/KeepAliveStream;->-get1()Lsun/net/www/http/KeepAliveStreamCleaner;

    #@17
    move-result-object v3

    #@18
    const-string/jumbo v4, "Keep-Alive-SocketCleaner"

    #@1b
    invoke-direct {v2, v0, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    #@1e
    invoke-static {v2}, Lsun/net/www/http/KeepAliveStream;->-set0(Ljava/lang/Thread;)Ljava/lang/Thread;

    #@21
    .line 186
    invoke-static {}, Lsun/net/www/http/KeepAliveStream;->-get0()Ljava/lang/Thread;

    #@24
    move-result-object v2

    #@25
    const/4 v3, 0x1

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    #@29
    .line 187
    invoke-static {}, Lsun/net/www/http/KeepAliveStream;->-get0()Ljava/lang/Thread;

    #@2c
    move-result-object v2

    #@2d
    const/16 v3, 0x8

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    #@32
    .line 190
    invoke-static {}, Lsun/net/www/http/KeepAliveStream;->-get0()Ljava/lang/Thread;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@39
    .line 191
    invoke-static {}, Lsun/net/www/http/KeepAliveStream;->-get0()Ljava/lang/Thread;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@40
    .line 192
    return-object v5
.end method
