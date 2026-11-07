.class public abstract Landroid/net/wifi/rtt/RangingResultCallback;
.super Ljava/lang/Object;
.source "RangingResultCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/RangingResultCallback$RangingOperationStatus;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_CODE_FAIL:I = 0x1

.field public static final whitelist STATUS_CODE_FAIL_RTT_NOT_AVAILABLE:I = 0x2


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onRangingFailure(I)V
.end method

.method public abstract whitelist onRangingResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;)V"
        }
    .end annotation
.end method
