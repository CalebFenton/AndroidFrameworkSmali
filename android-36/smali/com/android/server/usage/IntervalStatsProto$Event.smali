.class public final Lcom/android/server/usage/IntervalStatsProto$Event;
.super Ljava/lang/Object;
.source "IntervalStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Event"
.end annotation


# static fields
.field public static final blacklist CLASS:J = 0x10900000003L

.field public static final blacklist CLASS_INDEX:J = 0x10500000004L

.field public static final blacklist CONFIG:J = 0x10b00000008L

.field public static final blacklist FLAGS:J = 0x10500000006L

.field public static final blacklist INSTANCE_ID:J = 0x1050000000eL

.field public static final blacklist LOCUS_ID_INDEX:J = 0x10500000011L

.field public static final blacklist NOTIFICATION_CHANNEL:J = 0x1090000000cL

.field public static final blacklist NOTIFICATION_CHANNEL_INDEX:J = 0x1050000000dL

.field public static final blacklist PACKAGE:J = 0x10900000001L

.field public static final blacklist PACKAGE_INDEX:J = 0x10500000002L

.field public static final blacklist SHORTCUT_ID:J = 0x10900000009L

.field public static final blacklist STANDBY_BUCKET:J = 0x1050000000bL

.field public static final blacklist TASK_ROOT_CLASS_INDEX:J = 0x10500000010L

.field public static final blacklist TASK_ROOT_PACKAGE_INDEX:J = 0x1050000000fL

.field public static final blacklist TIME_MS:J = 0x10300000005L

.field public static final blacklist TYPE:J = 0x10500000007L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/IntervalStatsProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usage/IntervalStatsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
