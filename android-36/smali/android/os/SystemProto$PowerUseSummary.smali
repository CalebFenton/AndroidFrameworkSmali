.class public final Landroid/os/SystemProto$PowerUseSummary;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerUseSummary"
.end annotation


# static fields
.field public static final greylist-max-o BATTERY_CAPACITY_MAH:J = 0x10100000001L

.field public static final greylist-max-o COMPUTED_POWER_MAH:J = 0x10100000002L

.field public static final greylist-max-o MAX_DRAINED_POWER_MAH:J = 0x10100000004L

.field public static final greylist-max-o MIN_DRAINED_POWER_MAH:J = 0x10100000003L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/SystemProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
