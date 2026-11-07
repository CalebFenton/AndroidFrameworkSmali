.class public final Landroid/os/BatteryStats$PackageChange;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageChange"
.end annotation


# instance fields
.field public greylist-max-o mPackageName:Ljava/lang/String;

.field public greylist-max-o mUpdate:Z

.field public greylist-max-o mVersionCode:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
