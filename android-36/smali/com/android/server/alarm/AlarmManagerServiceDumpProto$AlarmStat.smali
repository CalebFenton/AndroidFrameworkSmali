.class public final Lcom/android/server/alarm/AlarmManagerServiceDumpProto$AlarmStat;
.super Ljava/lang/Object;
.source "AlarmManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AlarmStat"
.end annotation


# static fields
.field public static final blacklist BROADCAST:J = 0x10b00000001L

.field public static final blacklist FILTERS:J = 0x20b00000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/alarm/AlarmManagerServiceDumpProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerServiceDumpProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
