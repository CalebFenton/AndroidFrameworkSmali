.class public abstract Landroid/bluetooth/le/ScanCallback;
.super Ljava/lang/Object;
.source "ScanCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanCallback$ScanFailed;
    }
.end annotation


# static fields
.field static final blacklist NO_ERROR:I = 0x0

.field public static final whitelist SCAN_FAILED_ALREADY_STARTED:I = 0x1

.field public static final whitelist SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:I = 0x2

.field public static final whitelist SCAN_FAILED_FEATURE_UNSUPPORTED:I = 0x4

.field public static final whitelist SCAN_FAILED_INTERNAL_ERROR:I = 0x3

.field public static final whitelist SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:I = 0x5

.field public static final whitelist SCAN_FAILED_SCANNING_TOO_FREQUENTLY:I = 0x6


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBatchScanResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    return-void
.end method

.method public whitelist onScanFailed(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 88
    return-void
.end method

.method public whitelist onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 3
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 74
    return-void
.end method
