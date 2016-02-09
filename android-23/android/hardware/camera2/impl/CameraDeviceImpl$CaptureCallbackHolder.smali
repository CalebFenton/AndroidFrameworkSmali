.class Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaptureCallbackHolder"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mRepeating:Z

.field private final mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Landroid/os/Handler;ZI)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "repeating"    # Z
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/os/Handler;",
            "ZI)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1177
    .local p2, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1179
    if-eqz p1, :cond_0

    #@5
    if-nez p3, :cond_1

    #@7
    .line 1180
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    .line 1181
    const-string/jumbo v1, "Must have a valid handler and a valid callback"

    #@c
    .line 1180
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1183
    :cond_1
    iput-boolean p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRepeating:Z

    #@12
    .line 1184
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHandler:Landroid/os/Handler;

    #@14
    .line 1185
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@19
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    #@1b
    .line 1186
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@1d
    .line 1187
    iput p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mSessionId:I

    #@1f
    .line 1178
    return-void
.end method


# virtual methods
.method public getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .locals 1

    #@0
    .prologue
    .line 1195
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@2
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 1219
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    #@0
    .prologue
    .line 1215
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getRequest(I)Landroid/hardware/camera2/CaptureRequest;
    .locals 6
    .param p1, "subsequenceId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1199
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    #@4
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_0

    #@a
    .line 1200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    .line 1202
    const-string/jumbo v1, "Requested subsequenceId %d is larger than request list size %d."

    #@f
    .line 1201
    const/4 v2, 0x2

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    .line 1203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v3

    #@16
    aput-object v3, v2, v4

    #@18
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    #@1a
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1d
    move-result v3

    #@1e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v3

    #@22
    aput-object v3, v2, v5

    #@24
    .line 1201
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 1200
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 1205
    :cond_0
    if-gez p1, :cond_1

    #@2e
    .line 1206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@30
    .line 1207
    const-string/jumbo v1, "Requested subsequenceId %d is negative"

    #@33
    .line 1206
    new-array v2, v5, [Ljava/lang/Object;

    #@35
    .line 1207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v3

    #@39
    aput-object v3, v2, v4

    #@3b
    .line 1206
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 1209
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    #@45
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    #@4b
    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    #@0
    .prologue
    .line 1223
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mSessionId:I

    #@2
    return v0
.end method

.method public isRepeating()Z
    .locals 1

    #@0
    .prologue
    .line 1191
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRepeating:Z

    #@2
    return v0
.end method
