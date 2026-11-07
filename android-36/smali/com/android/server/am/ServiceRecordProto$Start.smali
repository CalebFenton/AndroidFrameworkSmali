.class public final Lcom/android/server/am/ServiceRecordProto$Start;
.super Ljava/lang/Object;
.source "ServiceRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ServiceRecordProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Start"
.end annotation


# static fields
.field public static final blacklist CALL_START:J = 0x10800000004L

.field public static final blacklist DELAYED_STOP:J = 0x10800000002L

.field public static final blacklist LAST_START_ID:J = 0x10500000005L

.field public static final blacklist START_COMMAND_RESULT:J = 0x10500000006L

.field public static final blacklist START_REQUESTED:J = 0x10800000001L

.field public static final blacklist STOP_IF_KILLED:J = 0x10800000003L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ServiceRecordProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecordProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
