.class Lcom/android/server/audio/AudioService$AudioOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1066
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    .line 1067
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    #@5
    .line 1066
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    #@0
    .prologue
    .line 1074
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    .line 1075
    const-string/jumbo v2, "window"

    #@9
    .line 1074
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/view/WindowManager;

    #@f
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    #@16
    move-result v0

    #@17
    .line 1076
    .local v0, "newRotation":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    #@19
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)I

    #@1c
    move-result v1

    #@1d
    if-eq v0, v1, :cond_0

    #@1f
    .line 1077
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    #@21
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-set5(Lcom/android/server/audio/AudioService;I)I

    #@24
    .line 1078
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    #@26
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap39(Lcom/android/server/audio/AudioService;)V

    #@29
    .line 1071
    :cond_0
    return-void
.end method
