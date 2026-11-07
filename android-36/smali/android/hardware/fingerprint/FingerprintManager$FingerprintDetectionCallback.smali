.class public interface abstract Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FingerprintDetectionCallback"
.end annotation


# virtual methods
.method public blacklist onDetectionError(I)V
    .registers 2
    .param p1, "errorMsgId"    # I

    .line 441
    return-void
.end method

.method public abstract blacklist onFingerprintDetected(IIZ)V
.end method
