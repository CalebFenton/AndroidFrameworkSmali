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
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 539
    sget v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@5
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@7
    .line 540
    sget v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@9
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@b
    .line 538
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration$Visibility;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration$Visibility;

    #@0
    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 544
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@5
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@7
    .line 545
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@9
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@b
    .line 546
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    #@d
    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    #@f
    .line 547
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    #@11
    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    #@13
    .line 548
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    #@15
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    #@17
    .line 549
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    #@19
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    #@1b
    .line 550
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    #@1d
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    #@1f
    .line 551
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    #@21
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    #@23
    .line 543
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 557
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 558
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@d
    sget v2, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@f
    if-le v1, v2, :cond_0

    #@11
    .line 559
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 560
    const-string/jumbo v1, ","

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 561
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    #@22
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 562
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
    .line 564
    :cond_0
    const-string/jumbo v1, "; "

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 565
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@41
    sget v2, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@43
    if-le v1, v2, :cond_1

    #@45
    .line 566
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@47
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 567
    const-string/jumbo v1, ","

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 568
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    #@56
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 569
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
    .line 571
    :cond_1
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    #@6f
    if-eqz v1, :cond_2

    #@71
    .line 572
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
    .line 573
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
    .line 574
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
    .line 575
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    #@97
    if-eqz v1, :cond_2

    #@99
    .line 576
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
    .line 577
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
    .line 580
    :cond_2
    const-string/jumbo v1, "]"

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v1

    #@bb
    return-object v1
.end method
