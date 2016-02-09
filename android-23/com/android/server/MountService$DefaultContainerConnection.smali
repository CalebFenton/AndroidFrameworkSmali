.class Lcom/android/server/MountService$DefaultContainerConnection;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultContainerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;

    #@0
    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/server/MountService$DefaultContainerConnection;->this$0:Lcom/android/server/MountService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 536
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    #@3
    move-result-object v0

    #@4
    .line 537
    .local v0, "imcs":Lcom/android/internal/app/IMediaContainerService;
    iget-object v1, p0, Lcom/android/server/MountService$DefaultContainerConnection;->this$0:Lcom/android/server/MountService;

    #@6
    invoke-static {v1}, Lcom/android/server/MountService;->-get7(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/android/server/MountService$DefaultContainerConnection;->this$0:Lcom/android/server/MountService;

    #@c
    invoke-static {v2}, Lcom/android/server/MountService;->-get7(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x2

    #@11
    invoke-virtual {v2, v3, v0}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 533
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 541
    return-void
.end method
