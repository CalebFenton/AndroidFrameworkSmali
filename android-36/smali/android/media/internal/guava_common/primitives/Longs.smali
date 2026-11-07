.class public final Landroid/media/internal/guava_common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# direct methods
.method public static blacklist hashCode(J)I
    .registers 4

    .line 0
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method
