.class public final Lcom/android/server/power/PowerManagerServiceDumpProto$UidStateProto;
.super Ljava/lang/Object;
.source "PowerManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidStateProto"
.end annotation


# static fields
.field public static final blacklist IS_ACTIVE:J = 0x10800000003L

.field public static final blacklist NUM_WAKE_LOCKS:J = 0x10500000004L

.field public static final blacklist PROCESS_STATE:J = 0x10e00000005L

.field public static final blacklist UID:J = 0x10500000001L

.field public static final blacklist UID_STRING:J = 0x10900000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/power/PowerManagerServiceDumpProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerServiceDumpProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
