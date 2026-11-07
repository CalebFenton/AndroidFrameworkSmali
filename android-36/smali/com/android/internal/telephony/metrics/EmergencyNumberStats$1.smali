.class Lcom/android/internal/telephony/metrics/EmergencyNumberStats$1;
.super Landroid/util/SparseIntArray;
.source "EmergencyNumberStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/EmergencyNumberStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x2

    .line 64
    invoke-virtual {p0, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
