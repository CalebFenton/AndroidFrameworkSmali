.class public final Landroid/os/SystemProto$BatteryDischarge;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BatteryDischarge"
.end annotation


# static fields
.field public static final greylist-max-o LOWER_BOUND_SINCE_CHARGE:J = 0x10500000001L

.field public static final greylist-max-o SCREEN_DOZE_SINCE_CHARGE:J = 0x10500000005L

.field public static final greylist-max-o SCREEN_OFF_SINCE_CHARGE:J = 0x10500000004L

.field public static final greylist-max-o SCREEN_ON_SINCE_CHARGE:J = 0x10500000003L

.field public static final greylist-max-o TOTAL_MAH:J = 0x10300000006L

.field public static final greylist-max-o TOTAL_MAH_DEEP_DOZE:J = 0x1030000000aL

.field public static final greylist-max-o TOTAL_MAH_LIGHT_DOZE:J = 0x10300000009L

.field public static final greylist-max-o TOTAL_MAH_SCREEN_DOZE:J = 0x10300000008L

.field public static final greylist-max-o TOTAL_MAH_SCREEN_OFF:J = 0x10300000007L

.field public static final greylist-max-o UPPER_BOUND_SINCE_CHARGE:J = 0x10500000002L


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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
