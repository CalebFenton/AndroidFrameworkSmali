.class public Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenOnScanSchedule"
.end annotation


# instance fields
.field private final blacklist mScanInterval:Ljava/time/Duration;

.field private final blacklist mScanType:I


# direct methods
.method public constructor whitelist <init>(Ljava/time/Duration;I)V
    .registers 5
    .param p1, "scanInterval"    # Ljava/time/Duration;
    .param p2, "scanType"    # I

    .line 2450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2451
    if-eqz p1, :cond_a

    .line 2454
    iput-object p1, p0, Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;->mScanInterval:Ljava/time/Duration;

    .line 2455
    iput p2, p0, Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;->mScanType:I

    .line 2456
    return-void

    .line 2452
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scanInterval can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getScanInterval()Ljava/time/Duration;
    .registers 2

    .line 2462
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;->mScanInterval:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getScanType()I
    .registers 2

    .line 2469
    iget v0, p0, Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;->mScanType:I

    return v0
.end method
