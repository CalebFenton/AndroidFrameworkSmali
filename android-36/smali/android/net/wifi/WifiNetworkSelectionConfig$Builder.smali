.class public final Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;
.super Ljava/lang/Object;
.source "WifiNetworkSelectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkSelectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field blacklist mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Landroid/net/wifi/WifiNetworkSelectionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiNetworkSelectionConfig;-><init>(Landroid/net/wifi/WifiNetworkSelectionConfig-IA;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 259
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmSufficiencyCheckEnabledWhenScreenOff(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 260
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmSufficiencyCheckEnabledWhenScreenOn(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 261
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmUserConnectChoiceOverrideEnabled(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 262
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmLastSelectionWeightEnabled(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 263
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmAssociatedNetworkSelectionOverride(Landroid/net/wifi/WifiNetworkSelectionConfig;I)V

    .line 265
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    const/4 v1, 0x4

    new-array v2, v1, [I

    invoke-static {v0, v2}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmRssi2Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;[I)V

    .line 266
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    new-array v2, v1, [I

    invoke-static {v0, v2}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmRssi5Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;[I)V

    .line 267
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    new-array v1, v1, [I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmRssi6Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;[I)V

    .line 268
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmFrequencyWeights(Landroid/net/wifi/WifiNetworkSelectionConfig;Landroid/util/SparseArray;)V

    .line 269
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/WifiNetworkSelectionConfig;)V
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Landroid/net/wifi/WifiNetworkSelectionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiNetworkSelectionConfig;-><init>(Landroid/net/wifi/WifiNetworkSelectionConfig-IA;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 272
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 273
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/WifiNetworkSelectionConfig;
    .registers 4

    .line 497
    new-instance v0, Landroid/net/wifi/WifiNetworkSelectionConfig;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiNetworkSelectionConfig;-><init>(Landroid/net/wifi/WifiNetworkSelectionConfig;Landroid/net/wifi/WifiNetworkSelectionConfig-IA;)V

    return-object v0
.end method

.method public whitelist setAssociatedNetworkSelectionOverride(I)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;
    .registers 5
    .param p1, "override"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 343
    invoke-static {p1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$smisValidAssociatedNetworkSelectionOverride(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 346
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmAssociatedNetworkSelectionOverride(Landroid/net/wifi/WifiNetworkSelectionConfig;I)V

    .line 347
    return-object p0

    .line 344
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid override="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFrequencyWeights(Landroid/util/SparseArray;)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 481
    .local p1, "weights":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$smisValidFrequencyWeightArray(Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 482
    if-nez p1, :cond_10

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid frequency weights=null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid frequency weights="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_2d
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmFrequencyWeights(Landroid/net/wifi/WifiNetworkSelectionConfig;Landroid/util/SparseArray;)V

    .line 489
    return-object p0
.end method

.method public whitelist setLastSelectionWeightEnabled(Z)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;
    .registers 3
    .param p1, "enabled"    # Z

    .line 384
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmLastSelectionWeightEnabled(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 385
    return-object p0
.end method

.method public whitelist setRssiThresholds(I[I)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;
    .registers 6
    .param p1, "band"    # I
    .param p2, "thresholds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 438
    invoke-static {p2}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$smisValidRssiThresholdArray([I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 442
    invoke-static {p1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$smisValidBand(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 445
    sparse-switch p1, :sswitch_data_5a

    goto :goto_22

    .line 453
    :sswitch_10
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, p2}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmRssi6Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;[I)V

    goto :goto_22

    .line 450
    :sswitch_16
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, p2}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmRssi5Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;[I)V

    .line 451
    goto :goto_22

    .line 447
    :sswitch_1c
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, p2}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmRssi2Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;[I)V

    .line 448
    nop

    .line 456
    :goto_22
    return-object p0

    .line 443
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid band="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RSSI thresholds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 440
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_16
        0x8 -> :sswitch_10
    .end sparse-switch
.end method

.method public whitelist setSufficiencyCheckEnabledWhenScreenOff(Z)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;
    .registers 3
    .param p1, "enabled"    # Z

    .line 297
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmSufficiencyCheckEnabledWhenScreenOff(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 298
    return-object p0
.end method

.method public whitelist setSufficiencyCheckEnabledWhenScreenOn(Z)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;
    .registers 3
    .param p1, "enabled"    # Z

    .line 323
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmSufficiencyCheckEnabledWhenScreenOn(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 324
    return-object p0
.end method

.method public whitelist setUserConnectChoiceOverrideEnabled(Z)Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;
    .registers 3
    .param p1, "enabled"    # Z

    .line 365
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;->mWifiNetworkSelectionConfig:Landroid/net/wifi/WifiNetworkSelectionConfig;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmUserConnectChoiceOverrideEnabled(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 366
    return-object p0
.end method
