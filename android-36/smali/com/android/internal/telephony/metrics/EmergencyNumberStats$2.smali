.class Lcom/android/internal/telephony/metrics/EmergencyNumberStats$2;
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
    .registers 3

    .line 71
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x2

    .line 77
    invoke-virtual {p0, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 79
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x8

    .line 81
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x10

    const/4 v1, 0x5

    .line 83
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x20

    const/4 v1, 0x6

    .line 85
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x40

    const/4 v1, 0x7

    .line 87
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
