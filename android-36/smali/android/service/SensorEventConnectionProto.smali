.class public final Landroid/service/SensorEventConnectionProto;
.super Ljava/lang/Object;
.source "SensorEventConnectionProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/SensorEventConnectionProto$FlushInfoProto;
    }
.end annotation


# static fields
.field public static final blacklist CACHE_SIZE:J = 0x10500000005L

.field public static final blacklist EVENTS_CACHE:J = 0x1050000000aL

.field public static final blacklist EVENTS_DROPPED:J = 0x1050000000bL

.field public static final blacklist EVENTS_RECEIVED:J = 0x10500000008L

.field public static final blacklist EVENTS_SENT:J = 0x10500000009L

.field public static final blacklist FLUSH_INFOS:J = 0x20b00000007L

.field public static final blacklist MAX_CACHE_SIZE:J = 0x10500000006L

.field public static final blacklist OPERATING_MODE:J = 0x10e00000001L

.field public static final blacklist OP_MODE_DATA_INJECTION:I = 0x3

.field public static final blacklist OP_MODE_NORMAL:I = 0x1

.field public static final blacklist OP_MODE_RESTRICTED:I = 0x2

.field public static final blacklist OP_MODE_UNKNOWN:I = 0x0

.field public static final blacklist PACKAGE_NAME:J = 0x10900000002L

.field public static final blacklist TOTAL_ACKS_NEEDED:J = 0x1050000000cL

.field public static final blacklist TOTAL_ACKS_RECEIVED:J = 0x1050000000dL

.field public static final blacklist UID:J = 0x10500000004L

.field public static final blacklist WAKE_LOCK_REF_COUNT:J = 0x10500000003L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
