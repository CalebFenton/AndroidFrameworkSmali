.class public final Landroid/os/SystemProto$BatteryLevelStep;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BatteryLevelStep"
.end annotation


# static fields
.field public static final greylist-max-o DISPLAY_STATE:J = 0x10e00000003L

.field public static final greylist-max-o DS_DOZE:I = 0x3

.field public static final greylist-max-o DS_DOZE_SUSPEND:I = 0x4

.field public static final greylist-max-o DS_ERROR:I = 0x5

.field public static final greylist-max-o DS_MIXED:I = 0x0

.field public static final greylist-max-o DS_OFF:I = 0x2

.field public static final greylist-max-o DS_ON:I = 0x1

.field public static final greylist-max-o DURATION_MS:J = 0x10300000001L

.field public static final greylist-max-o IDLE_MODE:J = 0x10e00000005L

.field public static final greylist-max-o IM_MIXED:I = 0x0

.field public static final greylist-max-o IM_OFF:I = 0x3

.field public static final greylist-max-o IM_ON:I = 0x2

.field public static final greylist-max-o LEVEL:J = 0x10500000002L

.field public static final greylist-max-o POWER_SAVE_MODE:J = 0x10e00000004L

.field public static final greylist-max-o PSM_MIXED:I = 0x0

.field public static final greylist-max-o PSM_OFF:I = 0x2

.field public static final greylist-max-o PSM_ON:I = 0x1


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

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
