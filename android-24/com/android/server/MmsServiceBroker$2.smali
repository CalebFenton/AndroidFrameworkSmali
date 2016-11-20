.class Lcom/android/server/MmsServiceBroker$2;
.super Ljava/lang/Object;
.source "MmsServiceBroker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MmsServiceBroker;

    #@0
    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 93
    const-string/jumbo v0, "MmsServiceBroker"

    #@3
    const-string/jumbo v1, "MmsService connected"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 94
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    #@b
    monitor-enter v1

    #@c
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    #@e
    invoke-static {p2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@11
    move-result-object v2

    #@12
    invoke-static {v0, v2}, Lcom/android/server/MmsServiceBroker;->-set0(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;

    #@15
    .line 96
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    #@17
    invoke-virtual {v0}, Lcom/android/server/MmsServiceBroker;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 92
    return-void

    #@1c
    .line 94
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 102
    const-string/jumbo v0, "MmsServiceBroker"

    #@3
    const-string/jumbo v1, "MmsService unexpectedly disconnected"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 103
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    #@b
    monitor-enter v1

    #@c
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    #@e
    const/4 v2, 0x0

    #@f
    invoke-static {v0, v2}, Lcom/android/server/MmsServiceBroker;->-set0(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;

    #@12
    .line 105
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    #@14
    invoke-virtual {v0}, Lcom/android/server/MmsServiceBroker;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 109
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    #@1a
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-get4(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;

    #@1d
    move-result-object v0

    #@1e
    .line 110
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    #@20
    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->-get4(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x1

    #@25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@28
    move-result-object v1

    #@29
    .line 111
    const-wide/16 v2, 0xbb8

    #@2b
    .line 109
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2e
    .line 101
    return-void

    #@2f
    .line 103
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0
.end method
