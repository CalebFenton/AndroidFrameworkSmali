.class public Landroid/net/NetworkKey;
.super Ljava/lang/Object;
.source "NetworkKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkKey$NetworkType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkKey"

.field public static final whitelist TYPE_WIFI:I = 0x1


# instance fields
.field public final whitelist type:I

.field public final whitelist wifiKey:Landroid/net/WifiKey;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 196
    new-instance v0, Landroid/net/NetworkKey$1;

    invoke-direct {v0}, Landroid/net/NetworkKey$1;-><init>()V

    sput-object v0, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/WifiKey;)V
    .registers 3
    .param p1, "wifiKey"    # Landroid/net/WifiKey;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/NetworkKey;->type:I

    .line 137
    iput-object p1, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    .line 138
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkKey;->type:I

    .line 142
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    packed-switch v0, :pswitch_data_36

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel has unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_29
    sget-object v0, Landroid/net/WifiKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/WifiKey;

    iput-object v0, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    .line 145
    nop

    .line 149
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_29
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/NetworkKey-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/NetworkKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;
    .registers 7
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 84
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 86
    .local v0, "ssid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3c

    const-string v1, "<unknown ssid>"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3c

    .line 89
    :cond_15
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 90
    .local v1, "bssid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 91
    return-object v2

    .line 95
    :cond_1e
    :try_start_1e
    new-instance v3, Landroid/net/WifiKey;

    const-string v4, "\"%s\""

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v3, "wifiKey":Landroid/net/WifiKey;
    new-instance v4, Landroid/net/NetworkKey;

    invoke-direct {v4, v3}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_32} :catch_33

    return-object v4

    .line 97
    .end local v3    # "wifiKey":Landroid/net/WifiKey;
    :catch_33
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "NetworkKey"

    const-string v5, "Unable to create WifiKey."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    return-object v2

    .line 87
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3c
    :goto_3c
    return-object v2
.end method

.method public static greylist-max-o createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;
    .registers 7
    .param p0, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .line 113
    const/4 v0, 0x0

    if-eqz p0, :cond_34

    .line 114
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "ssid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "bssid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "<unknown ssid>"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 120
    :try_start_1f
    new-instance v3, Landroid/net/WifiKey;

    invoke-direct {v3, v1, v2}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_24} :catch_2b

    .line 124
    .local v3, "wifiKey":Landroid/net/WifiKey;
    nop

    .line 125
    new-instance v0, Landroid/net/NetworkKey;

    invoke-direct {v0, v3}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    return-object v0

    .line 121
    .end local v3    # "wifiKey":Landroid/net/WifiKey;
    :catch_2b
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "NetworkKey"

    const-string v5, "Unable to create WifiKey."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    return-object v0

    .line 128
    .end local v1    # "ssid":Ljava/lang/String;
    .end local v2    # "bssid":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_34
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 170
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 171
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 173
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/NetworkKey;

    .line 175
    .local v2, "that":Landroid/net/NetworkKey;
    iget v3, p0, Landroid/net/NetworkKey;->type:I

    iget v4, v2, Landroid/net/NetworkKey;->type:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v4, v2, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 171
    .end local v2    # "that":Landroid/net/NetworkKey;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 180
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 186
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    packed-switch v0, :pswitch_data_10

    .line 192
    const-string v0, "InvalidKey"

    return-object v0

    .line 188
    :pswitch_8
    iget-object v0, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-virtual {v0}, Landroid/net/WifiKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    packed-switch v0, :pswitch_data_2c

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkKey has unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_25
    iget-object v0, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-virtual {v0, p1, p2}, Landroid/net/WifiKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    nop

    .line 166
    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_25
    .end packed-switch
.end method
