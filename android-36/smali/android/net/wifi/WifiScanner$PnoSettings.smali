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
        Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$PnoSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o isConnected:Z

.field public greylist-max-o min24GHzRssi:I

.field public greylist-max-o min5GHzRssi:I

.field public blacklist min6GHzRssi:I

.field public greylist-max-o networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

.field public blacklist scanIntervalMultiplier:I

.field public blacklist scanIterations:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1269
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$PnoSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1244
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1249
    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    iget v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    iget v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    iget v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min6GHzRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    iget v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->scanIterations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    iget v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->scanIntervalMultiplier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    if-eqz v0, :cond_56

    .line 1256
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    array-length v1, v1

    if-ge v0, v1, :cond_55

    .line 1258
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1259
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v1, v1, v0

    iget-byte v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1260
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v1, v1, v0

    iget-byte v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1261
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1257
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .end local v0    # "i":I
    :cond_55
    goto :goto_5a

    .line 1264
    :cond_56
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    :goto_5a
    return-void
.end method
