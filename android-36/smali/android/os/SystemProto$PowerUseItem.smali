.class public final Landroid/os/SystemProto$PowerUseItem;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerUseItem"
.end annotation


# static fields
.field public static final greylist-max-o AMBIENT_DISPLAY:I = 0xd

.field public static final greylist-max-o BLUETOOTH:I = 0x5

.field public static final greylist-max-o CAMERA:I = 0xb

.field public static final greylist-max-o CELL:I = 0x2

.field public static final greylist-max-o COMPUTED_POWER_MAH:J = 0x10100000003L

.field public static final greylist-max-o FLASHLIGHT:I = 0x6

.field public static final greylist-max-o IDLE:I = 0x1

.field public static final greylist-max-o MEMORY:I = 0xc

.field public static final greylist-max-o NAME:J = 0x10e00000001L

.field public static final greylist-max-o OVERCOUNTED:I = 0xa

.field public static final greylist-max-o PHONE:I = 0x3

.field public static final greylist-max-o PROPORTIONAL_SMEAR_MAH:J = 0x10100000006L

.field public static final greylist-max-o SCREEN:I = 0x7

.field public static final greylist-max-o SCREEN_POWER_MAH:J = 0x10100000005L

.field public static final greylist-max-o SHOULD_HIDE:J = 0x10800000004L

.field public static final greylist-max-o UID:J = 0x10500000002L

.field public static final greylist-max-o UNACCOUNTED:I = 0x9

.field public static final greylist-max-o UNKNOWN_SIPPER:I = 0x0

.field public static final greylist-max-o USER:I = 0x8

.field public static final greylist-max-o WIFI:I = 0x4


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

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
