.class public Landroid/net/wifi/WifiScanner$PnoSettings;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PnoSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$PnoSettings$1;,
        Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$PnoSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public band5GHzBonus:I

.field public currentConnectionBonus:I

.field public initialScoreMax:I

.field public isConnected:Z

.field public min24GHzRssi:I

.field public min5GHzRssi:I

.field public networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

.field public sameNetworkBonus:I

.field public secureBonus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 611
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$PnoSettings$1;-><init>()V

    #@5
    .line 610
    sput-object v0, Landroid/net/wifi/WifiScanner$PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 500
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 582
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 587
    iget-boolean v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v1, 0x1

    #@6
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 588
    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    #@b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 589
    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    #@10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 590
    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    #@15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 591
    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    #@1a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 592
    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    #@1f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 593
    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    #@24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 594
    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    #@29
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 595
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 596
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@32
    array-length v1, v1

    #@33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 597
    const/4 v0, 0x0

    #@37
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@39
    array-length v1, v1

    #@3a
    if-ge v0, v1, :cond_2

    #@3c
    .line 598
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@3e
    aget-object v1, v1, v0

    #@40
    iget-object v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    #@42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@45
    .line 599
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@47
    aget-object v1, v1, v0

    #@49
    iget v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->networkId:I

    #@4b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    .line 600
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@50
    aget-object v1, v1, v0

    #@52
    iget v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->priority:I

    #@54
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    .line 601
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@59
    aget-object v1, v1, v0

    #@5b
    iget-byte v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    #@5d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@60
    .line 602
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@62
    aget-object v1, v1, v0

    #@64
    iget-byte v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    #@66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@69
    .line 597
    add-int/lit8 v0, v0, 0x1

    #@6b
    goto :goto_1

    #@6c
    .end local v0    # "i":I
    :cond_0
    move v1, v2

    #@6d
    .line 587
    goto :goto_0

    #@6e
    .line 605
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    .line 586
    :cond_2
    return-void
.end method
