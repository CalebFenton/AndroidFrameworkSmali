.class public Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiLazyRoamParams"
.end annotation


# instance fields
.field A_band_boost_factor:I

.field A_band_boost_threshold:I

.field A_band_max_boost:I

.field A_band_penalty_factor:I

.field A_band_penalty_threshold:I

.field alert_roam_rssi_trigger:I

.field lazy_roam_hysteresis:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiNative;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiNative;

    #@0
    .prologue
    .line 2324
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->this$0:Lcom/android/server/wifi/WifiNative;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2329
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2330
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " A_band_boost_threshold="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->A_band_boost_threshold:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 2331
    const-string/jumbo v1, " A_band_penalty_threshold="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->A_band_penalty_threshold:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 2332
    const-string/jumbo v1, " A_band_boost_factor="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->A_band_boost_factor:I

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    .line 2333
    const-string/jumbo v1, " A_band_penalty_factor="

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->A_band_penalty_factor:I

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    .line 2334
    const-string/jumbo v1, " A_band_max_boost="

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->A_band_max_boost:I

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    .line 2335
    const-string/jumbo v1, " lazy_roam_hysteresis="

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->lazy_roam_hysteresis:I

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    .line 2336
    const-string/jumbo v1, " alert_roam_rssi_trigger="

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->alert_roam_rssi_trigger:I

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    .line 2337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    return-object v1
.end method
