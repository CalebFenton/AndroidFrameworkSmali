.class public abstract Landroid/bluetooth/le/ScanCallback;
.super Ljava/lang/Object;
.source "ScanCallback.java"


# static fields
.field public static final SCAN_FAILED_ALREADY_STARTED:I = 0x1

.field public static final SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:I = 0x2

.field public static final SCAN_FAILED_FEATURE_UNSUPPORTED:I = 0x4

.field public static final SCAN_FAILED_INTERNAL_ERROR:I = 0x3

.field public static final SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    return-void
.end method

.method public onScanFailed(I)V
    .locals 0
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 78
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 0
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    #@0
    .prologue
    .line 62
    return-void
.end method
