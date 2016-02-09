.class Lcom/android/server/tv/TvInputHardwareManager$2;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;

.field final synthetic val$config:Landroid/media/tv/TvStreamConfig;

.field final synthetic val$hardwareImpl:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p2, "val$hardwareImpl"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p3, "val$config"    # Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$2;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@2
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$2;->val$hardwareImpl:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@4
    iput-object p3, p0, Lcom/android/server/tv/TvInputHardwareManager$2;->val$config:Landroid/media/tv/TvStreamConfig;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$2;->val$hardwareImpl:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@2
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$2;->val$config:Landroid/media/tv/TvStreamConfig;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->-wrap1(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)Z

    #@7
    .line 474
    return-void
.end method
