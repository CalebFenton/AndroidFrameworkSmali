.class public abstract Landroid/os/BatteryStats$Uid$Pkg$Serv;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid$Pkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Serv"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist getLaunches(I)I
.end method

.method public abstract greylist getStartTime(JI)J
.end method

.method public abstract greylist getStarts(I)I
.end method
