.class public final Landroid/net/wifi/UriParserResults;
.super Ljava/lang/Object;
.source "UriParserResults.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/UriParserResults;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist URI_SCHEME_DPP:I = 0x2

.field public static final whitelist URI_SCHEME_ZXING_WIFI_NETWORK_CONFIG:I = 0x1


# instance fields
.field private blacklist mInformation:Ljava/lang/String;

.field private blacklist mPublicKey:Ljava/lang/String;

.field private blacklist mScheme:I

.field private blacklist mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 163
    new-instance v0, Landroid/net/wifi/UriParserResults$1;

    invoke-direct {v0}, Landroid/net/wifi/UriParserResults$1;-><init>()V

    sput-object v0, Landroid/net/wifi/UriParserResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .registers 6
    .param p1, "scheme"    # I
    .param p2, "publicKey"    # Ljava/lang/String;
    .param p3, "information"    # Ljava/lang/String;
    .param p4, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Landroid/net/wifi/UriParserResults;->mScheme:I

    .line 82
    iput-object p2, p0, Landroid/net/wifi/UriParserResults;->mPublicKey:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Landroid/net/wifi/UriParserResults;->mInformation:Ljava/lang/String;

    .line 84
    if-eqz p4, :cond_12

    .line 85
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p4}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Landroid/net/wifi/UriParserResults;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 87
    :cond_12
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 194
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/UriParserResults;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 195
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/UriParserResults;

    .line 196
    .local v1, "results":Landroid/net/wifi/UriParserResults;
    iget v3, p0, Landroid/net/wifi/UriParserResults;->mScheme:I

    iget v4, v1, Landroid/net/wifi/UriParserResults;->mScheme:I

    if-ne v3, v4, :cond_45

    iget-object v3, p0, Landroid/net/wifi/UriParserResults;->mPublicKey:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/UriParserResults;->mPublicKey:Ljava/lang/String;

    .line 197
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Landroid/net/wifi/UriParserResults;->mInformation:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/UriParserResults;->mInformation:Ljava/lang/String;

    .line 198
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 200
    iget-object v3, p0, Landroid/net/wifi/UriParserResults;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x0

    if-eqz v3, :cond_33

    iget-object v3, p0, Landroid/net/wifi/UriParserResults;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :cond_33
    move-object v3, v4

    .line 201
    :goto_34
    iget-object v5, v1, Landroid/net/wifi/UriParserResults;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v5, :cond_3e

    iget-object v4, v1, Landroid/net/wifi/UriParserResults;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    :cond_3e
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_46

    :cond_45
    move v0, v2

    .line 196
    :goto_46
    return v0
.end method

.method public whitelist getInformation()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/net/wifi/UriParserResults;->mInformation:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPublicKey()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/net/wifi/UriParserResults;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUriScheme()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/net/wifi/UriParserResults;->mScheme:I

    return v0
.end method

.method public whitelist getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/net/wifi/UriParserResults;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 206
    iget v0, p0, Landroid/net/wifi/UriParserResults;->mScheme:I

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/UriParserResults;->mPublicKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/UriParserResults;->mInformation:Ljava/lang/String;

    .line 210
    iget-object v3, p0, Landroid/net/wifi/UriParserResults;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_15

    iget-object v3, p0, Landroid/net/wifi/UriParserResults;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 206
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "UriParserResults{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", mScheme= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/UriParserResults;->mScheme:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ", mPublicKey= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/UriParserResults;->mPublicKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", mInformation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/UriParserResults;->mInformation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Landroid/net/wifi/UriParserResults;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_3e

    const-string v1, ", mWifiConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/UriParserResults;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_3e
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    iget v0, p0, Landroid/net/wifi/UriParserResults;->mScheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Landroid/net/wifi/UriParserResults;->mPublicKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Landroid/net/wifi/UriParserResults;->mInformation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Landroid/net/wifi/UriParserResults;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 156
    return-void
.end method
