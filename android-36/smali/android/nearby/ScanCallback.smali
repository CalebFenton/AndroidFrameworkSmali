.class public interface abstract Landroid/nearby/ScanCallback;
.super Ljava/lang/Object;
.source "ScanCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/ScanCallback$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INVALID_ARGUMENT:I = 0x2

.field public static final whitelist ERROR_PERMISSION_DENIED:I = 0x3

.field public static final whitelist ERROR_RESOURCE_EXHAUSTED:I = 0x4

.field public static final whitelist ERROR_UNKNOWN:I = 0x0

.field public static final whitelist ERROR_UNSUPPORTED:I = 0x1


# virtual methods
.method public abstract whitelist onDiscovered(Landroid/nearby/NearbyDevice;)V
.end method

.method public whitelist onError(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 95
    return-void
.end method

.method public abstract whitelist onLost(Landroid/nearby/NearbyDevice;)V
.end method

.method public abstract whitelist onUpdated(Landroid/nearby/NearbyDevice;)V
.end method
