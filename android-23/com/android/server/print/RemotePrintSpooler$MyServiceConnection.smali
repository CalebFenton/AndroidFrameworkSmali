.class final Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler;


# direct methods
.method private constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintSpooler;

    #@0
    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintSpooler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    #@3
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    #@2
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->-get1(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    #@9
    invoke-static {p2}, Landroid/print/IPrintSpooler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpooler;

    #@c
    move-result-object v2

    #@d
    invoke-static {v0, v2}, Lcom/android/server/print/RemotePrintSpooler;->-set0(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;

    #@10
    .line 448
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    #@12
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->-wrap3(Lcom/android/server/print/RemotePrintSpooler;)V

    #@15
    .line 449
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    #@17
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->-get1(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v1

    #@1f
    .line 445
    return-void

    #@20
    .line 446
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    #@2
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->-get1(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    #@9
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->-wrap0(Lcom/android/server/print/RemotePrintSpooler;)V

    #@c
    .line 457
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    #@e
    const/4 v2, 0x0

    #@f
    invoke-static {v0, v2}, Lcom/android/server/print/RemotePrintSpooler;->-set0(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 454
    return-void

    #@14
    .line 455
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method
