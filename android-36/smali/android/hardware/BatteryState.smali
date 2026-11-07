.class public abstract Landroid/hardware/BatteryState;
.super Ljava/lang/Object;
.source "BatteryState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/BatteryState$BatteryStatus;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_CHARGING:I = 0x2

.field public static final whitelist STATUS_DISCHARGING:I = 0x3

.field public static final whitelist STATUS_FULL:I = 0x5

.field public static final whitelist STATUS_NOT_CHARGING:I = 0x4

.field public static final whitelist STATUS_UNKNOWN:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getCapacity()F
.end method

.method public abstract whitelist getStatus()I
.end method

.method public abstract whitelist isPresent()Z
.end method
