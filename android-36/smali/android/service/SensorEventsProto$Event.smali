.class public final Landroid/service/SensorEventsProto$Event;
.super Ljava/lang/Object;
.source "SensorEventsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/SensorEventsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Event"
.end annotation


# static fields
.field public static final blacklist FLOAT_ARRAY:J = 0x20200000005L

.field public static final blacklist INT64_DATA:J = 0x10300000004L

.field public static final blacklist MASKED:J = 0x10800000003L

.field public static final blacklist TIMESTAMP_SEC:J = 0x10200000001L

.field public static final blacklist WALL_TIMESTAMP_MS:J = 0x10300000002L


# direct methods
.method public constructor blacklist <init>(Landroid/service/SensorEventsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/SensorEventsProto;
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
