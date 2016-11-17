.class public final Landroid/net/wifi/WifiConfiguration$Visibility;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Visibility"
.end annotation


# instance fields
.field public BSSID24:Ljava/lang/String;

.field public BSSID5:Ljava/lang/String;

.field public age24:J

.field public age5:J

.field public bandPreferenceBoost:I

.field public currentNetworkBoost:I

.field public lastChoiceBoost:I

.field public lastChoiceConfig:Ljava/lang/String;

.field public num24:I

.field public num5:I

.field public rssi24:I

.field public rssi5:I

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 489
    sget v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@5
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@7
    .line 490
    sget v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@9
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@b
    .line 488
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration$Visibility;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration$Visibility;

    #@0
    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 494
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@5
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@7
    .line 495
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@9
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@b
    .line 496
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    #@d
    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    #@f
    .line 497
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    #@11
    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    #@13
    .line 498
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    #@15
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    #@17
    .line 499
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    #@19
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    #@1b
    .line 500
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    #@1d
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    #@1f
    .line 501
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    #@21
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    #@23
    .line 493
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 507
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 508
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@d
    sget v2, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@f
    if-le v1, v2, :cond_0

    #@11
    .line 509
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 510
    const-string/jumbo v1, ","

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 511
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    #@22
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 512
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    #@2b
    if-eqz v1, :cond_0

    #@2d
    const-string/jumbo v1, ","

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 514
    :cond_0
    const-string/jumbo v1, "; "

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 515
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@41
    sget v2, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@43
    if-le v1, v2, :cond_1

    #@45
    .line 516
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@47
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 517
    const-string/jumbo v1, ","

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 518
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    #@56
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 519
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    #@5f
    if-eqz v1, :cond_1

    #@61
    const-string/jumbo v1, ","

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 521
    :cond_1
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    #@6f
    if-eqz v1, :cond_2

    #@71
    .line 522
    const-string/jumbo v1, "; "

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    .line 523
    const-string/jumbo v1, ", "

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->currentNetworkBoost:I

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    .line 524
    const-string/jumbo v1, ", "

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->bandPreferenceBoost:I

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    .line 525
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    #@97
    if-eqz v1, :cond_2

    #@99
    .line 526
    const-string/jumbo v1, ", "

    #@9c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceBoost:I

    #@a2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    .line 527
    const-string/jumbo v1, ", "

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    #@ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    .line 530
    :cond_2
    const-string/jumbo v1, "]"

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v1

    #@bb
    return-object v1
.end method
