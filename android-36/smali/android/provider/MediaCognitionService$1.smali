.class Landroid/provider/MediaCognitionService$1;
.super Landroid/provider/mediacognitionutils/IMediaCognitionService$Stub;
.source "MediaCognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaCognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/provider/MediaCognitionService;


# direct methods
.method constructor blacklist <init>(Landroid/provider/MediaCognitionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/provider/MediaCognitionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Landroid/provider/MediaCognitionService$1;->this$0:Landroid/provider/MediaCognitionService;

    invoke-direct {p0}, Landroid/provider/mediacognitionutils/IMediaCognitionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getProcessingVersions(Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;)V
    .registers 4
    .param p1, "binderCallback"    # Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;

    .line 198
    iget-object v0, p0, Landroid/provider/MediaCognitionService$1;->this$0:Landroid/provider/MediaCognitionService;

    new-instance v1, Landroid/provider/mediacognitionutils/GetProcessingVersionsCallbackImpl;

    invoke-direct {v1, p1}, Landroid/provider/mediacognitionutils/GetProcessingVersionsCallbackImpl;-><init>(Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;)V

    invoke-virtual {v0, v1}, Landroid/provider/MediaCognitionService;->onGetProcessingVersions(Landroid/provider/MediaCognitionGetVersionsCallback;)V

    .line 199
    return-void
.end method

.method public blacklist processMedia(Ljava/util/List;Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;)V
    .registers 6
    .param p2, "binderCallback"    # Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/provider/MediaCognitionProcessingRequest;",
            ">;",
            "Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;",
            ")V"
        }
    .end annotation

    .line 193
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MediaCognitionProcessingRequest;>;"
    iget-object v0, p0, Landroid/provider/MediaCognitionService$1;->this$0:Landroid/provider/MediaCognitionService;

    new-instance v1, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;

    invoke-direct {v1, p2}, Landroid/provider/mediacognitionutils/ProcessMediaCallbackImpl;-><init>(Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/provider/MediaCognitionService;->onProcessMedia(Ljava/util/List;Landroid/os/CancellationSignal;Landroid/provider/MediaCognitionProcessingCallback;)V

    .line 194
    return-void
.end method
