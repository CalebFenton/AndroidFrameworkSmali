.class Lcom/android/internal/telephony/metrics/EmergencyNumberStats$3;
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

    .line 92
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x2

    .line 96
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x10

    .line 98
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 100
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x8

    .line 102
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
