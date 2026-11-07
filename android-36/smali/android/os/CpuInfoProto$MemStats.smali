.class public final Landroid/os/CpuInfoProto$MemStats;
.super Ljava/lang/Object;
.source "CpuInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemStats"
.end annotation


# static fields
.field public static final greylist-max-o BUFFERS:J = 0x10500000004L

.field public static final greylist-max-o CACHED:J = 0x10500000005L

.field public static final greylist-max-o FREE:J = 0x10500000003L

.field public static final greylist-max-o TOTAL:J = 0x10500000001L

.field public static final greylist-max-o USED:J = 0x10500000002L


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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
