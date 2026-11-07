.class public final Landroid/os/UidProto$Network;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Network"
.end annotation


# static fields
.field public static final greylist-max-o BT_BYTES_RX:J = 0x10300000005L

.field public static final greylist-max-o BT_BYTES_TX:J = 0x10300000006L

.field public static final greylist-max-o MOBILE_ACTIVE_COUNT:J = 0x1050000000cL

.field public static final greylist-max-o MOBILE_ACTIVE_DURATION_MS:J = 0x1030000000bL

.field public static final greylist-max-o MOBILE_BYTES_BG_RX:J = 0x1030000000fL

.field public static final greylist-max-o MOBILE_BYTES_BG_TX:J = 0x10300000010L

.field public static final greylist-max-o MOBILE_BYTES_RX:J = 0x10300000001L

.field public static final greylist-max-o MOBILE_BYTES_TX:J = 0x10300000002L

.field public static final greylist-max-o MOBILE_PACKETS_BG_RX:J = 0x10300000013L

.field public static final greylist-max-o MOBILE_PACKETS_BG_TX:J = 0x10300000014L

.field public static final greylist-max-o MOBILE_PACKETS_RX:J = 0x10300000007L

.field public static final greylist-max-o MOBILE_PACKETS_TX:J = 0x10300000008L

.field public static final greylist-max-o MOBILE_WAKEUP_COUNT:J = 0x1050000000dL

.field public static final greylist-max-o WIFI_BYTES_BG_RX:J = 0x10300000011L

.field public static final greylist-max-o WIFI_BYTES_BG_TX:J = 0x10300000012L

.field public static final greylist-max-o WIFI_BYTES_RX:J = 0x10300000003L

.field public static final greylist-max-o WIFI_BYTES_TX:J = 0x10300000004L

.field public static final greylist-max-o WIFI_PACKETS_BG_RX:J = 0x10300000015L

.field public static final greylist-max-o WIFI_PACKETS_BG_TX:J = 0x10300000016L

.field public static final greylist-max-o WIFI_PACKETS_RX:J = 0x10300000009L

.field public static final greylist-max-o WIFI_PACKETS_TX:J = 0x1030000000aL

.field public static final greylist-max-o WIFI_WAKEUP_COUNT:J = 0x1050000000eL


# direct methods
.method public constructor blacklist <init>(Landroid/os/UidProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/UidProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
