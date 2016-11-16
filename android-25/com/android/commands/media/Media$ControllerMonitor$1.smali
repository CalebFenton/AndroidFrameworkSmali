.class Lcom/android/commands/media/Media$ControllerMonitor$1;
.super Landroid/os/HandlerThread;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/media/Media$ControllerMonitor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/commands/media/Media$ControllerMonitor;


# direct methods
.method constructor <init>(Lcom/android/commands/media/Media$ControllerMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/commands/media/Media$ControllerMonitor;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/commands/media/Media$ControllerMonitor$1;->this$1:Lcom/android/commands/media/Media$ControllerMonitor;

    #@2
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    #@0
    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/media/Media$ControllerMonitor$1;->this$1:Lcom/android/commands/media/Media$ControllerMonitor;

    #@2
    invoke-static {v1}, Lcom/android/commands/media/Media$ControllerMonitor;->-get0(Lcom/android/commands/media/Media$ControllerMonitor;)Landroid/media/session/ISessionController;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/commands/media/Media$ControllerMonitor$1;->this$1:Lcom/android/commands/media/Media$ControllerMonitor;

    #@8
    invoke-interface {v1, v2}, Landroid/media/session/ISessionController;->registerCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 239
    :goto_0
    return-void

    #@c
    .line 242
    :catch_0
    move-exception v0

    #@d
    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    const-string/jumbo v2, "Error registering monitor callback"

    #@12
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@15
    goto :goto_0
.end method
