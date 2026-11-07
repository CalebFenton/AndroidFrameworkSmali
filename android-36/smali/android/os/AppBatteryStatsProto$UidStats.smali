.class public final Landroid/os/AppBatteryStatsProto$UidStats;
.super Ljava/lang/Object;
.source "AppBatteryStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AppBatteryStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AppBatteryStatsProto$UidStats$ProcessStateStats;
    }
.end annotation


# static fields
.field public static final blacklist PROCESS_STATE_STATS:J = 0x20b00000002L

.field public static final blacklist UID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Landroid/os/AppBatteryStatsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/AppBatteryStatsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
