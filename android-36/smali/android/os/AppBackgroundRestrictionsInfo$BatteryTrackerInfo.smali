.class public final Landroid/os/AppBackgroundRestrictionsInfo$BatteryTrackerInfo;
.super Ljava/lang/Object;
.source "AppBackgroundRestrictionsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AppBackgroundRestrictionsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BatteryTrackerInfo"
.end annotation


# static fields
.field public static final blacklist BATTERY_24H:J = 0x10500000001L

.field public static final blacklist BATTERY_USAGE_BACKGROUND:J = 0x10500000002L

.field public static final blacklist BATTERY_USAGE_CACHED:J = 0x10500000005L

.field public static final blacklist BATTERY_USAGE_FGS:J = 0x10500000003L

.field public static final blacklist BATTERY_USAGE_FOREGROUND:J = 0x10500000004L


# direct methods
.method public constructor blacklist <init>(Landroid/os/AppBackgroundRestrictionsInfo;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/AppBackgroundRestrictionsInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
