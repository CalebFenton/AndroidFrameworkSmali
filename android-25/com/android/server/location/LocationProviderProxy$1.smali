.class Lcom/android/server/location/LocationProviderProxy$1;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/LocationProviderProxy;

    #@0
    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    .line 99
    invoke-static {}, Lcom/android/server/location/LocationProviderProxy;->-get0()Z

    #@3
    move-result v7

    #@4
    if-eqz v7, :cond_0

    #@6
    const-string/jumbo v7, "LocationProviderProxy"

    #@9
    const-string/jumbo v8, "applying state to connected service"

    #@c
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 102
    :cond_0
    const/4 v3, 0x0

    #@10
    .line 106
    .local v3, "properties":Lcom/android/internal/location/ProviderProperties;
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #@12
    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-get2(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    #@15
    move-result-object v8

    #@16
    monitor-enter v8

    #@17
    .line 107
    :try_start_0
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #@19
    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-get1(Lcom/android/server/location/LocationProviderProxy;)Z

    #@1c
    move-result v2

    #@1d
    .line 108
    .local v2, "enabled":Z
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #@1f
    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-get3(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ProviderRequest;

    #@22
    move-result-object v4

    #@23
    .line 109
    .local v4, "request":Lcom/android/internal/location/ProviderRequest;
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #@25
    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-get5(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;

    #@28
    move-result-object v6

    #@29
    .line 110
    .local v6, "source":Landroid/os/WorkSource;
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #@2b
    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-wrap0(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result-object v5

    #@2f
    .local v5, "service":Lcom/android/internal/location/ILocationProvider;
    monitor-exit v8

    #@30
    .line 113
    if-nez v5, :cond_1

    #@32
    return-void

    #@33
    .line 106
    .end local v2    # "enabled":Z
    .end local v4    # "request":Lcom/android/internal/location/ProviderRequest;
    .end local v5    # "service":Lcom/android/internal/location/ILocationProvider;
    .end local v6    # "source":Landroid/os/WorkSource;
    :catchall_0
    move-exception v7

    #@34
    monitor-exit v8

    #@35
    throw v7

    #@36
    .line 117
    .restart local v2    # "enabled":Z
    .restart local v4    # "request":Lcom/android/internal/location/ProviderRequest;
    .restart local v5    # "service":Lcom/android/internal/location/ILocationProvider;
    .restart local v6    # "source":Landroid/os/WorkSource;
    :cond_1
    :try_start_1
    invoke-interface {v5}, Lcom/android/internal/location/ILocationProvider;->getProperties()Lcom/android/internal/location/ProviderProperties;

    #@39
    move-result-object v3

    #@3a
    .line 118
    .local v3, "properties":Lcom/android/internal/location/ProviderProperties;
    if-nez v3, :cond_2

    #@3c
    .line 119
    const-string/jumbo v7, "LocationProviderProxy"

    #@3f
    new-instance v8, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    iget-object v9, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #@46
    invoke-static {v9}, Lcom/android/server/location/LocationProviderProxy;->-get4(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v9}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    #@4d
    move-result-object v9

    #@4e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v8

    #@52
    .line 120
    const-string/jumbo v9, " has invalid locatino provider properties"

    #@55
    .line 119
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 124
    :cond_2
    if-eqz v2, :cond_3

    #@62
    .line 125
    invoke-interface {v5}, Lcom/android/internal/location/ILocationProvider;->enable()V

    #@65
    .line 126
    if-eqz v4, :cond_3

    #@67
    .line 127
    invoke-interface {v5, v4, v6}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@6a
    .line 137
    .end local v3    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #@6c
    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-get2(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    #@6f
    move-result-object v8

    #@70
    monitor-enter v8

    #@71
    .line 138
    :try_start_2
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #@73
    invoke-static {v7, v3}, Lcom/android/server/location/LocationProviderProxy;->-set0(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@76
    monitor-exit v8

    #@77
    .line 98
    return-void

    #@78
    .line 132
    :catch_0
    move-exception v1

    #@79
    .line 134
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "LocationProviderProxy"

    #@7c
    new-instance v8, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v9, "Exception from "

    #@84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    iget-object v9, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #@8a
    invoke-static {v9}, Lcom/android/server/location/LocationProviderProxy;->-get4(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    #@8d
    move-result-object v9

    #@8e
    invoke-virtual {v9}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    #@91
    move-result-object v9

    #@92
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v8

    #@96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v8

    #@9a
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9d
    goto :goto_0

    #@9e
    .line 130
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@9f
    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "LocationProviderProxy"

    #@a2
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a5
    goto :goto_0

    #@a6
    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v7

    #@a7
    monitor-exit v8

    #@a8
    throw v7
.end method
