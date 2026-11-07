.class public interface abstract Landroid/hardware/face/FaceManager$FaceDetectionCallback;
.super Ljava/lang/Object;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FaceDetectionCallback"
.end annotation


# virtual methods
.method public blacklist onDetectionError(I)V
    .registers 2
    .param p1, "errorMsgId"    # I

    .line 1112
    return-void
.end method

.method public abstract blacklist onFaceDetected(IIZ)V
.end method
