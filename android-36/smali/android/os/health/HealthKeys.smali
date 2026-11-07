.class public Landroid/os/health/HealthKeys;
.super Ljava/lang/Object;
.source "HealthKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/health/HealthKeys$SortedIntArray;,
        Landroid/os/health/HealthKeys$Constants;,
        Landroid/os/health/HealthKeys$Constant;
    }
.end annotation


# static fields
.field public static final greylist-max-o BASE_PACKAGE:I = 0x9c40

.field public static final greylist-max-o BASE_PID:I = 0x4e20

.field public static final greylist-max-o BASE_PROCESS:I = 0x7530

.field public static final greylist-max-o BASE_SERVICE:I = 0xc350

.field public static final greylist-max-o BASE_UID:I = 0x2710

.field public static final greylist-max-o TYPE_COUNT:I = 0x5

.field public static final greylist-max-o TYPE_MEASUREMENT:I = 0x1

.field public static final greylist-max-o TYPE_MEASUREMENTS:I = 0x4

.field public static final greylist-max-o TYPE_STATS:I = 0x2

.field public static final greylist-max-o TYPE_TIMER:I = 0x0

.field public static final greylist-max-o TYPE_TIMERS:I = 0x3

.field public static final greylist-max-o UNKNOWN_KEY:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
