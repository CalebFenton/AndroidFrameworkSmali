.class public final Lcom/android/server/content/SyncStatusProto$StatusInfo$LastEventInfo;
.super Ljava/lang/Object;
.source "SyncStatusProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStatusProto$StatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LastEventInfo"
.end annotation


# static fields
.field public static final blacklist LAST_EVENT:J = 0x10900000002L

.field public static final blacklist LAST_EVENT_TIME:J = 0x10300000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/content/SyncStatusProto$StatusInfo;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/content/SyncStatusProto$StatusInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
