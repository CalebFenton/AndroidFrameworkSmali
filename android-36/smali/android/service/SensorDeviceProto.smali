.class public final Landroid/service/SensorDeviceProto;
.super Ljava/lang/Object;
.source "SensorDeviceProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/SensorDeviceProto$SensorProto;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE_SENSORS:J = 0x10500000003L

.field public static final blacklist INITIALIZED:J = 0x10800000001L

.field public static final blacklist SENSORS:J = 0x20b00000004L

.field public static final blacklist TOTAL_SENSORS:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
