.class public Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid$Proc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcessivePower"
.end annotation


# static fields
.field public static final greylist-max-o TYPE_CPU:I = 0x2

.field public static final greylist-max-o TYPE_WAKE:I = 0x1


# instance fields
.field public greylist overTime:J

.field public greylist type:I

.field public greylist usedTime:J


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    return-void
.end method
