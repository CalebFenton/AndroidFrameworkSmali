.class public abstract Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
.super Ljava/lang/Object;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NetworkScanCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onComplete()V
    .registers 1

    .line 86
    return-void
.end method

.method public whitelist onError(I)V
    .registers 2
    .param p1, "error"    # I

    .line 96
    return-void
.end method

.method public whitelist onResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    return-void
.end method
