.class Lcom/android/server/display/NightDisplayService$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "NightDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NightDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;

    #@0
    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    #@2
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    #@2
    invoke-static {v0}, Lcom/android/server/display/NightDisplayService;->-get7(Lcom/android/server/display/NightDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@9
    .line 97
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    #@b
    invoke-static {v0}, Lcom/android/server/display/NightDisplayService;->-get6(Lcom/android/server/display/NightDisplayService;)Landroid/os/Handler;

    #@e
    move-result-object v0

    #@f
    new-instance v1, Lcom/android/server/display/NightDisplayService$1$1;

    #@11
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/NightDisplayService$1$1;-><init>(Lcom/android/server/display/NightDisplayService$1;Z)V

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@17
    .line 94
    return-void
.end method
