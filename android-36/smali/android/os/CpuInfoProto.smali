.class public final Landroid/os/CpuInfoProto;
.super Ljava/lang/Object;
.source "CpuInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CpuInfoProto$Task;,
        Landroid/os/CpuInfoProto$CpuUsage;,
        Landroid/os/CpuInfoProto$MemStats;,
        Landroid/os/CpuInfoProto$TaskStats;
    }
.end annotation


# static fields
.field public static final greylist-max-o CPU_USAGE:J = 0x10b00000004L

.field public static final greylist-max-o MEM:J = 0x10b00000002L

.field public static final greylist-max-o SWAP:J = 0x10b00000003L

.field public static final greylist-max-o TASKS:J = 0x20b00000005L

.field public static final greylist-max-o TASK_STATS:J = 0x10b00000001L


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
