.class public Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalOnlyHotspotCallback"
.end annotation


# static fields
.field public static final whitelist ERROR_GENERIC:I = 0x2

.field public static final whitelist ERROR_INCOMPATIBLE_MODE:I = 0x3

.field public static final whitelist ERROR_NO_CHANNEL:I = 0x1

.field public static final whitelist ERROR_TETHERING_DISALLOWED:I = 0x4

.field public static final greylist-max-o REQUEST_REGISTERED:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 7316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 7348
    return-void
.end method

.method public whitelist onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .registers 2
    .param p1, "reservation"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 7326
    return-void
.end method

.method public whitelist onStopped()V
    .registers 1

    .line 7335
    return-void
.end method
