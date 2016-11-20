.class public Llibcore/net/event/NetworkEventDispatcher;
.super Ljava/lang/Object;
.source "NetworkEventDispatcher.java"


# static fields
.field private static final instance:Llibcore/net/event/NetworkEventDispatcher;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llibcore/net/event/NetworkEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 27
    new-instance v0, Llibcore/net/event/NetworkEventDispatcher;

    #@2
    invoke-direct {v0}, Llibcore/net/event/NetworkEventDispatcher;-><init>()V

    #@5
    sput-object v0, Llibcore/net/event/NetworkEventDispatcher;->instance:Llibcore/net/event/NetworkEventDispatcher;

    #@7
    .line 25
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@8
    .line 29
    iput-object v0, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    #@a
    .line 40
    return-void
.end method

.method public static getInstance()Llibcore/net/event/NetworkEventDispatcher;
    .locals 1

    #@0
    .prologue
    .line 36
    sget-object v0, Llibcore/net/event/NetworkEventDispatcher;->instance:Llibcore/net/event/NetworkEventDispatcher;

    #@2
    return-object v0
.end method


# virtual methods
.method public addListener(Llibcore/net/event/NetworkEventListener;)V
    .locals 2
    .param p1, "toAdd"    # Llibcore/net/event/NetworkEventListener;

    #@0
    .prologue
    .line 48
    if-nez p1, :cond_0

    #@2
    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "toAdd == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 51
    :cond_0
    iget-object v0, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 47
    return-void
.end method

.method public onNetworkConfigurationChanged()V
    .locals 4

    #@0
    .prologue
    .line 71
    iget-object v3, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Llibcore/net/event/NetworkEventListener;

    #@12
    .line 73
    .local v1, "listener":Llibcore/net/event/NetworkEventListener;
    :try_start_0
    invoke-virtual {v1}, Llibcore/net/event/NetworkEventListener;->onNetworkConfigurationChanged()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    goto :goto_0

    #@16
    .line 74
    :catch_0
    move-exception v0

    #@17
    .line 75
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "Exception thrown during network event propagation"

    #@1a
    invoke-static {v3, v0}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    goto :goto_0

    #@1e
    .line 70
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "listener":Llibcore/net/event/NetworkEventListener;
    :cond_0
    return-void
.end method

.method public removeListener(Llibcore/net/event/NetworkEventListener;)V
    .locals 3
    .param p1, "toRemove"    # Llibcore/net/event/NetworkEventListener;

    #@0
    .prologue
    .line 59
    iget-object v2, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Llibcore/net/event/NetworkEventListener;

    #@12
    .line 60
    .local v0, "listener":Llibcore/net/event/NetworkEventListener;
    if-ne v0, p1, :cond_0

    #@14
    .line 61
    iget-object v2, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    #@16
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@19
    .line 62
    return-void

    #@1a
    .line 58
    .end local v0    # "listener":Llibcore/net/event/NetworkEventListener;
    :cond_1
    return-void
.end method
