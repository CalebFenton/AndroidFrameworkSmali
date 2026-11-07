.class Landroid/service/contentsuggestions/ContentSuggestionsService$1;
.super Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;
.source "ContentSuggestionsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentsuggestions/ContentSuggestionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;


# direct methods
.method constructor blacklist <init>(Landroid/service/contentsuggestions/ContentSuggestionsService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/contentsuggestions/ContentSuggestionsService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-direct {p0}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .registers 7
    .param p1, "request"    # Landroid/app/contentsuggestions/ClassificationsRequest;
    .param p2, "callback"    # Landroid/app/contentsuggestions/IClassificationsCallback;

    .line 112
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    iget-object v3, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 114
    invoke-static {v3, p2}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$mwrapClassificationCallback(Landroid/service/contentsuggestions/ContentSuggestionsService;Landroid/app/contentsuggestions/IClassificationsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

    move-result-object v3

    .line 112
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    return-void
.end method

.method public blacklist notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "interaction"    # Landroid/os/Bundle;

    .line 119
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 120
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

.method public blacklist provideContextImage(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;
    .param p3, "imageContextRequestExtras"    # Landroid/os/Bundle;

    .line 68
    const-string v0, "android.contentsuggestions.extra.BITMAP"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez p2, :cond_b

    goto :goto_13

    .line 70
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Two bitmaps provided; expected one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_13
    :goto_13
    const/4 v1, 0x0

    .line 74
    .local v1, "wrappedBuffer":Landroid/graphics/Bitmap;
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 75
    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_4f

    .line 78
    :cond_24
    if-eqz p2, :cond_4f

    .line 79
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 80
    .local v0, "snapshotBuffer":Landroid/hardware/HardwareBuffer;
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 81
    .local v2, "colorSpace":Landroid/graphics/ColorSpace;
    const/4 v3, 0x0

    .line 82
    .local v3, "colorSpaceId":I
    if-eqz v2, :cond_35

    .line 83
    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getId()I

    move-result v3

    .line 85
    :cond_35
    if-ltz v3, :cond_48

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_48

    .line 86
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 88
    :cond_48
    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 93
    .end local v0    # "snapshotBuffer":Landroid/hardware/HardwareBuffer;
    .end local v2    # "colorSpace":Landroid/graphics/ColorSpace;
    .end local v3    # "colorSpaceId":I
    :cond_4f
    :goto_4f
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v3, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 94
    invoke-static {v2, v3, v4, v1, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method public blacklist suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .registers 7
    .param p1, "request"    # Landroid/app/contentsuggestions/SelectionsRequest;
    .param p2, "callback"    # Landroid/app/contentsuggestions/ISelectionsCallback;

    .line 103
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    iget-object v3, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 105
    invoke-static {v3, p2}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$mwrapSelectionsCallback(Landroid/service/contentsuggestions/ContentSuggestionsService;Landroid/app/contentsuggestions/ISelectionsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;

    move-result-object v3

    .line 103
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method
