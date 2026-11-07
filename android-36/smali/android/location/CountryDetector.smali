.class public Landroid/location/CountryDetector;
.super Ljava/lang/Object;
.source "CountryDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/CountryDetector$ListenerTransport;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private final greylist-max-o mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Country;",
            ">;",
            "Landroid/location/CountryDetector$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mService:Landroid/location/ICountryDetector;


# direct methods
.method public constructor greylist-max-p <init>(Landroid/location/ICountryDetector;)V
    .registers 3
    .param p1, "service"    # Landroid/location/ICountryDetector;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    .line 99
    return-void
.end method


# virtual methods
.method public greylist addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/CountryListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    new-instance v0, Landroid/os/Handler;

    if-eqz p2, :cond_8

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_b

    :cond_8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 131
    .local v0, "handler":Landroid/os/Handler;
    :goto_b
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v1, p1}, Landroid/location/CountryDetector;->registerCountryDetectorCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 132
    return-void
.end method

.method public greylist detectCountry()Landroid/location/Country;
    .registers 4

    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v0}, Landroid/location/ICountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 111
    :catch_7
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CountryDetector"

    const-string v2, "detectCountry: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist registerCountryDetectorCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Country;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Country;>;"
    iget-object v0, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 156
    :try_start_3
    invoke-virtual {p0, p2}, Landroid/location/CountryDetector;->unregisterCountryDetectorCallback(Ljava/util/function/Consumer;)V

    .line 157
    new-instance v1, Landroid/location/CountryDetector$ListenerTransport;

    invoke-direct {v1, p2, p1}, Landroid/location/CountryDetector$ListenerTransport;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1e

    .line 159
    .local v1, "transport":Landroid/location/CountryDetector$ListenerTransport;
    :try_start_b
    iget-object v2, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v2, v1}, Landroid/location/ICountryDetector;->addCountryListener(Landroid/location/ICountryListener;)V

    .line 160
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_18
    .catchall {:try_start_b .. :try_end_15} :catchall_1e

    .line 163
    nop

    .line 164
    .end local v1    # "transport":Landroid/location/CountryDetector$ListenerTransport;
    :try_start_16
    monitor-exit v0

    .line 165
    return-void

    .line 161
    .restart local v1    # "transport":Landroid/location/CountryDetector$ListenerTransport;
    :catch_18
    move-exception v2

    .line 162
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/location/CountryDetector;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Country;>;"
    throw v3

    .line 164
    .end local v1    # "transport":Landroid/location/CountryDetector$ListenerTransport;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/location/CountryDetector;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Country;>;"
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public greylist removeCountryListener(Landroid/location/CountryListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/location/CountryListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-virtual {p0, p1}, Landroid/location/CountryDetector;->unregisterCountryDetectorCallback(Ljava/util/function/Consumer;)V

    .line 145
    return-void
.end method

.method public whitelist unregisterCountryDetectorCallback(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Country;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Country;>;"
    iget-object v0, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector$ListenerTransport;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 171
    .local v1, "transport":Landroid/location/CountryDetector$ListenerTransport;
    if-eqz v1, :cond_19

    .line 173
    :try_start_d
    iget-object v2, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v2, v1}, Landroid/location/ICountryDetector;->removeCountryListener(Landroid/location/ICountryListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 176
    goto :goto_19

    .line 174
    :catch_13
    move-exception v2

    .line 175
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_14
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/location/CountryDetector;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Country;>;"
    throw v3

    .line 178
    .end local v1    # "transport":Landroid/location/CountryDetector$ListenerTransport;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/location/CountryDetector;
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Country;>;"
    :cond_19
    :goto_19
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method
