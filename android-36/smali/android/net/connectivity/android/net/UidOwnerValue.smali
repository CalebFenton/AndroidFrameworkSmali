.class public Landroid/net/connectivity/android/net/UidOwnerValue;
.super Landroid/net/connectivity/com/android/net/module/util/Struct;
.source "UidOwnerValue.java"


# instance fields
.field public final blacklist iif:I
    .annotation runtime Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
        order = 0x0
        type = .enum Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->S32:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;
    .end annotation
.end field

.field public final blacklist rule:J
    .annotation runtime Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
        order = 0x1
        type = .enum Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->U32:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(IJ)V
    .registers 4
    .param p1, "iif"    # I
    .param p2, "rule"    # J

    .line 35
    invoke-direct {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct;-><init>()V

    .line 36
    iput p1, p0, Landroid/net/connectivity/android/net/UidOwnerValue;->iif:I

    .line 37
    iput-wide p2, p0, Landroid/net/connectivity/android/net/UidOwnerValue;->rule:J

    .line 38
    return-void
.end method
