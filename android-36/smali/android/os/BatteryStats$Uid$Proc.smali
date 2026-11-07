.class public abstract Landroid/os/BatteryStats$Uid$Proc;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Proc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    }
.end annotation


# direct methods
.method public constructor greylist-max-p <init>()V
    .registers 1

    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist countExcessivePowers()I
.end method

.method public abstract greylist getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
.end method

.method public abstract greylist getForegroundTime(I)J
.end method

.method public abstract greylist-max-o getNumAnrs(I)I
.end method

.method public abstract greylist-max-o getNumCrashes(I)I
.end method

.method public abstract greylist getStarts(I)I
.end method

.method public abstract greylist getSystemTime(I)J
.end method

.method public abstract greylist getUserTime(I)J
.end method

.method public abstract greylist-max-o isActive()Z
.end method
