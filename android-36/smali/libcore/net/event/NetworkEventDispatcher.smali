.class public final Llibcore/net/event/NetworkEventDispatcher;
.super Ljava/lang/Object;
.source "NetworkEventDispatcher.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final blacklist instance:Llibcore/net/event/NetworkEventDispatcher;


# instance fields
.field private final blacklist listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llibcore/net/event/NetworkEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Llibcore/net/event/NetworkEventDispatcher;

    invoke-direct {v0}, Llibcore/net/event/NetworkEventDispatcher;-><init>()V

    sput-object v0, Llibcore/net/event/NetworkEventDispatcher;->instance:Llibcore/net/event/NetworkEventDispatcher;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static greylist test-api getInstance()Llibcore/net/event/NetworkEventDispatcher;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 49
    sget-object v0, Llibcore/net/event/NetworkEventDispatcher;->instance:Llibcore/net/event/NetworkEventDispatcher;

    return-object v0
.end method


# virtual methods
.method public greylist addListener(Llibcore/net/event/NetworkEventListener;)V
    .registers 4
    .param p1, "toAdd"    # Llibcore/net/event/NetworkEventListener;

    .line 64
    if-eqz p1, :cond_8

    .line 67
    iget-object v0, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void

    .line 65
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "toAdd == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist test-api dispatchNetworkConfigurationChange()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 92
    iget-object v0, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/net/event/NetworkEventListener;

    .line 94
    .local v1, "listener":Llibcore/net/event/NetworkEventListener;
    :try_start_12
    invoke-virtual {v1}, Llibcore/net/event/NetworkEventListener;->onNetworkConfigurationChanged()V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_16

    .line 97
    goto :goto_1c

    .line 95
    :catch_16
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "Exception thrown during network event propagation"

    invoke-static {v3, v2}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v1    # "listener":Llibcore/net/event/NetworkEventListener;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1c
    goto :goto_6

    .line 99
    :cond_1d
    return-void
.end method

.method public blacklist removeListener(Llibcore/net/event/NetworkEventListener;)V
    .registers 4
    .param p1, "toRemove"    # Llibcore/net/event/NetworkEventListener;

    .line 77
    iget-object v0, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/net/event/NetworkEventListener;

    .line 78
    .local v1, "listener":Llibcore/net/event/NetworkEventListener;
    if-ne v1, p1, :cond_1a

    .line 79
    iget-object v0, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    return-void

    .line 82
    .end local v1    # "listener":Llibcore/net/event/NetworkEventListener;
    :cond_1a
    goto :goto_6

    .line 83
    :cond_1b
    return-void
.end method
