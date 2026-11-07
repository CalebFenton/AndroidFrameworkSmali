.class public final Landroid/service/batterystats/BatteryStatsServiceDumpHistoryProto$Key;
.super Ljava/lang/Object;
.source "BatteryStatsServiceDumpHistoryProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/batterystats/BatteryStatsServiceDumpHistoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Key"
.end annotation


# static fields
.field public static final blacklist INDEX:J = 0x10500000001L

.field public static final blacklist TAG:J = 0x10900000003L

.field public static final blacklist UID:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Landroid/service/batterystats/BatteryStatsServiceDumpHistoryProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/batterystats/BatteryStatsServiceDumpHistoryProto;
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
