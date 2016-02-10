.class Lcom/google/android/maps/MapActivity$1;
.super Landroid/os/Handler;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/MapActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/maps/MapActivity;

    #@0
    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 358
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #@2
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->-get2(Lcom/google/android/maps/MapActivity;)Lcom/google/android/maps/NetworkConnectivityListener;

    #@5
    move-result-object v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 360
    return-void

    #@9
    .line 362
    :cond_0
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #@b
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->-get2(Lcom/google/android/maps/MapActivity;)Lcom/google/android/maps/NetworkConnectivityListener;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5}, Lcom/google/android/maps/NetworkConnectivityListener;->getState()Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@12
    move-result-object v4

    #@13
    .line 363
    .local v4, "state":Lcom/google/android/maps/NetworkConnectivityListener$State;
    const-string/jumbo v5, "MapActivity"

    #@16
    new-instance v6, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v7, "Handling network change notification:"

    #@1e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v4}, Lcom/google/android/maps/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 364
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #@33
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->-get1(Lcom/google/android/maps/MapActivity;)Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@36
    move-result-object v5

    #@37
    if-eqz v5, :cond_1

    #@39
    .line 365
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #@3b
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->-get1(Lcom/google/android/maps/MapActivity;)Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->stop()V

    #@42
    .line 366
    sget-object v5, Lcom/google/android/maps/NetworkConnectivityListener$State;->CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@44
    if-ne v4, v5, :cond_1

    #@46
    .line 367
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #@48
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->-get1(Lcom/google/android/maps/MapActivity;)Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->start()V

    #@4f
    .line 371
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #@51
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->-get0(Lcom/google/android/maps/MapActivity;)Landroid/com/google/common/android/AndroidConfig;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Landroid/com/google/common/android/AndroidConfig;->getConnectionFactory()Landroid/com/google/common/io/android/AndroidHttpConnectionFactory;

    #@58
    move-result-object v2

    #@59
    .line 372
    .local v2, "factory":Landroid/com/google/common/io/android/AndroidHttpConnectionFactory;
    if-nez v2, :cond_2

    #@5b
    .line 373
    const-string/jumbo v5, "MapActivity"

    #@5e
    const-string/jumbo v6, "Couldn\'t get connection factory"

    #@61
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 374
    return-void

    #@65
    .line 376
    :cond_2
    invoke-virtual {v2}, Landroid/com/google/common/io/android/AndroidHttpConnectionFactory;->getClient()Landroid/com/google/common/io/android/GoogleHttpClient;

    #@68
    move-result-object v0

    #@69
    .line 377
    .local v0, "client":Landroid/com/google/common/io/android/GoogleHttpClient;
    if-nez v0, :cond_3

    #@6b
    .line 378
    const-string/jumbo v5, "MapActivity"

    #@6e
    const-string/jumbo v6, "Couldn\'t get connection factory client"

    #@71
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 379
    return-void

    #@75
    .line 381
    :cond_3
    invoke-virtual {v0}, Landroid/com/google/common/io/android/GoogleHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@78
    move-result-object v3

    #@79
    .line 382
    .local v3, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    if-nez v3, :cond_4

    #@7b
    .line 383
    const-string/jumbo v5, "MapActivity"

    #@7e
    const-string/jumbo v6, "Couldn\'t get client connection manager"

    #@81
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 384
    return-void

    #@85
    .line 386
    :cond_4
    const-wide/16 v6, 0x1

    #@87
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@89
    invoke-interface {v3, v6, v7, v5}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8c
    .line 357
    .end local v0    # "client":Landroid/com/google/common/io/android/GoogleHttpClient;
    .end local v2    # "factory":Landroid/com/google/common/io/android/AndroidHttpConnectionFactory;
    .end local v3    # "manager":Lorg/apache/http/conn/ClientConnectionManager;
    :goto_0
    return-void

    #@8d
    .line 387
    :catch_0
    move-exception v1

    #@8e
    .line 388
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MapActivity"

    #@91
    const-string/jumbo v6, "Couldn\'t reset connection pool."

    #@94
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@97
    goto :goto_0
.end method
