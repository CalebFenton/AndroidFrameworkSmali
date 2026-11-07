.class public final Landroid/os/PsProto$Process;
.super Ljava/lang/Object;
.source "PsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Process"
.end annotation


# static fields
.field public static final greylist-max-o ADDR:J = 0x10900000009L

.field public static final greylist-max-o CMD:J = 0x10900000011L

.field public static final greylist-max-o LABEL:J = 0x10900000001L

.field public static final greylist-max-o NI:J = 0x1110000000cL

.field public static final greylist-max-o PCY:J = 0x10e0000000fL

.field public static final greylist-max-o PID:J = 0x10500000003L

.field public static final greylist-max-o POLICY_BG:I = 0x2

.field public static final greylist-max-o POLICY_FG:I = 0x1

.field public static final greylist-max-o POLICY_TA:I = 0x3

.field public static final greylist-max-o POLICY_UNKNOWN:I = 0x0

.field public static final greylist-max-o PPID:J = 0x10500000005L

.field public static final greylist-max-o PRI:J = 0x1050000000bL

.field public static final greylist-max-o RSS:J = 0x10500000007L

.field public static final greylist-max-o RTPRIO:J = 0x1090000000dL

.field public static final greylist-max-o S:J = 0x10e0000000aL

.field public static final greylist-max-o SCH:J = 0x10e0000000eL

.field public static final greylist-max-o SCH_BATCH:I = 0x3

.field public static final greylist-max-o SCH_FIFO:I = 0x1

.field public static final greylist-max-o SCH_IDLE:I = 0x5

.field public static final greylist-max-o SCH_ISO:I = 0x4

.field public static final greylist-max-o SCH_NORMAL:I = 0x0

.field public static final greylist-max-o SCH_OTHER:I = 0x0

.field public static final greylist-max-o SCH_RR:I = 0x2

.field public static final greylist-max-o STATE_D:I = 0x1

.field public static final greylist-max-o STATE_R:I = 0x2

.field public static final greylist-max-o STATE_S:I = 0x3

.field public static final greylist-max-o STATE_T:I = 0x4

.field public static final greylist-max-o STATE_TRACING:I = 0x5

.field public static final greylist-max-o STATE_UNKNOWN:I = 0x0

.field public static final greylist-max-o STATE_X:I = 0x6

.field public static final greylist-max-o STATE_Z:I = 0x7

.field public static final greylist-max-o TID:J = 0x10500000004L

.field public static final greylist-max-o TIME:J = 0x10900000010L

.field public static final greylist-max-o USER:J = 0x10900000002L

.field public static final greylist-max-o VSZ:J = 0x10500000006L

.field public static final greylist-max-o WCHAN:J = 0x10900000008L


# direct methods
.method public constructor blacklist <init>(Landroid/os/PsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/PsProto;
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
