.class public final Landroid/service/SensorEventsProto$RecentEventsLog;
.super Ljava/lang/Object;
.source "SensorEventsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/SensorEventsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecentEventsLog"
.end annotation


# static fields
.field public static final blacklist EVENTS:J = 0x20b00000003L

.field public static final blacklist NAME:J = 0x10900000001L

.field public static final blacklist RECENT_EVENTS_COUNT:J = 0x10500000002L


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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
