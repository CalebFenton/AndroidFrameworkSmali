.class public Landroid/bluetooth/BluetoothAssignedNumbers$OrganizationId;
.super Ljava/lang/Object;
.source "BluetoothAssignedNumbers.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAssignedNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrganizationId"
.end annotation


# static fields
.field public static final whitelist BLUETOOTH_SIG:I = 0x1

.field public static final whitelist WIFI_ALLIANCE_NEIGHBOR_AWARENESS_NETWORKING:I = 0x2

.field public static final whitelist WIFI_ALLIANCE_SERVICE_ADVERTISEMENT:I = 0x3


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
