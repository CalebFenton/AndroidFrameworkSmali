.class public final Landroid/os/CpuInfoProto$Task;
.super Ljava/lang/Object;
.source "CpuInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Task"
.end annotation


# static fields
.field public static final greylist-max-o CMD:J = 0x1090000000bL

.field public static final greylist-max-o CPU:J = 0x10200000006L

.field public static final greylist-max-o NAME:J = 0x1090000000cL

.field public static final greylist-max-o NI:J = 0x11100000005L

.field public static final greylist-max-o PCY:J = 0x10e0000000aL

.field public static final greylist-max-o PID:J = 0x10500000001L

.field public static final greylist-max-o POLICY_BG:I = 0x2

.field public static final greylist-max-o POLICY_FG:I = 0x1

.field public static final greylist-max-o POLICY_TA:I = 0x3

.field public static final greylist-max-o POLICY_UNKNOWN:I = 0x0

.field public static final greylist-max-o PR:J = 0x10900000004L

.field public static final greylist-max-o RES:J = 0x10900000009L

.field public static final greylist-max-o S:J = 0x10e00000007L

.field public static final greylist-max-o STATUS_D:I = 0x1

.field public static final greylist-max-o STATUS_R:I = 0x2

.field public static final greylist-max-o STATUS_S:I = 0x3

.field public static final greylist-max-o STATUS_T:I = 0x4

.field public static final greylist-max-o STATUS_UNKNOWN:I = 0x0

.field public static final greylist-max-o STATUS_Z:I = 0x5

.field public static final greylist-max-o TID:J = 0x10500000002L

.field public static final greylist-max-o USER:J = 0x10900000003L

.field public static final greylist-max-o VIRT:J = 0x10900000008L


# direct methods
.method public constructor blacklist <init>(Landroid/os/CpuInfoProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/CpuInfoProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
