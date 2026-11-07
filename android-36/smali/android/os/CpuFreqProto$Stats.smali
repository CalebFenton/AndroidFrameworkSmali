.class public final Landroid/os/CpuFreqProto$Stats;
.super Ljava/lang/Object;
.source "CpuFreqProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuFreqProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Stats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CpuFreqProto$Stats$TimeInState;
    }
.end annotation


# static fields
.field public static final greylist-max-o CPU_NAME:J = 0x10900000001L

.field public static final greylist-max-o TIMES:J = 0x20b00000002L


# direct methods
.method public constructor blacklist <init>(Landroid/os/CpuFreqProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/CpuFreqProto;
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
