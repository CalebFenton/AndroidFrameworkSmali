.class public final Landroid/os/CpuFreqProto$Stats$TimeInState;
.super Ljava/lang/Object;
.source "CpuFreqProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuFreqProto$Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimeInState"
.end annotation


# static fields
.field public static final greylist-max-o STATE_KHZ:J = 0x10500000001L

.field public static final greylist-max-o TIME_JIFFY:J = 0x10300000002L


# direct methods
.method public constructor blacklist <init>(Landroid/os/CpuFreqProto$Stats;)V
    .registers 2
    .param p1, "this$1"    # Landroid/os/CpuFreqProto$Stats;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
