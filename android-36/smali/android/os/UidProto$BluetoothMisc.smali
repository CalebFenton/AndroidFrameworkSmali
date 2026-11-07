.class public final Landroid/os/UidProto$BluetoothMisc;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BluetoothMisc"
.end annotation


# static fields
.field public static final greylist-max-o APPORTIONED_BLE_SCAN:J = 0x10b00000001L

.field public static final greylist-max-o BACKGROUND_BLE_SCAN:J = 0x10b00000002L

.field public static final greylist-max-o BACKGROUND_BLE_SCAN_RESULT_COUNT:J = 0x10500000006L

.field public static final greylist-max-o BACKGROUND_UNOPTIMIZED_BLE_SCAN:J = 0x10b00000004L

.field public static final greylist-max-o BLE_SCAN_RESULT_COUNT:J = 0x10500000005L

.field public static final greylist-max-o UNOPTIMIZED_BLE_SCAN:J = 0x10b00000003L


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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
