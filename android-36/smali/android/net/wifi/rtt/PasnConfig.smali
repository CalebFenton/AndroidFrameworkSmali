.class public final Landroid/net/wifi/rtt/PasnConfig;
.super Ljava/lang/Object;
.source "PasnConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/PasnConfig$Builder;,
        Landroid/net/wifi/rtt/PasnConfig$Cipher;,
        Landroid/net/wifi/rtt/PasnConfig$AkmType;
    }
.end annotation


# static fields
.field public static final whitelist AKM_FILS_EAP_SHA256:I = 0x40

.field public static final whitelist AKM_FILS_EAP_SHA384:I = 0x80

.field public static final whitelist AKM_FT_EAP_SHA256:I = 0x4

.field public static final whitelist AKM_FT_EAP_SHA384:I = 0x10

.field public static final whitelist AKM_FT_PSK_SHA256:I = 0x8

.field public static final whitelist AKM_FT_PSK_SHA384:I = 0x20

.field public static final whitelist AKM_NONE:I = 0x0

.field public static final whitelist AKM_PASN:I = 0x1

.field public static final whitelist AKM_SAE:I = 0x2

.field public static final whitelist CIPHER_CCMP_128:I = 0x1

.field public static final whitelist CIPHER_CCMP_256:I = 0x2

.field public static final whitelist CIPHER_GCMP_128:I = 0x4

.field public static final whitelist CIPHER_GCMP_256:I = 0x8

.field public static final whitelist CIPHER_NONE:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/PasnConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sStringToAkm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sStringToCipher:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBaseAkms:I

.field private final blacklist mCiphers:I

.field private final blacklist mPasnComebackCookie:[B

.field private blacklist mPassword:Ljava/lang/String;

.field private final blacklist mWifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    .line 122
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "None"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PASN"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "SAE"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    const/16 v5, 0x40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "EAP-FILS-SHA256"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "EAP-FILS-SHA384"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "FT/EAP"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "FT/PSK"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "EAP-FT-SHA384"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "FT/PSK-SHA384"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToCipher:Ljava/util/Map;

    .line 173
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToCipher:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToCipher:Ljava/util/Map;

    const-string v1, "CCMP-128"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToCipher:Ljava/util/Map;

    const-string v1, "CCMP-256"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToCipher:Ljava/util/Map;

    const-string v1, "GCMP-128"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Landroid/net/wifi/rtt/PasnConfig;->sStringToCipher:Ljava/util/Map;

    const-string v1, "GCMP-256"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Landroid/net/wifi/rtt/PasnConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/PasnConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/PasnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/rtt/PasnConfig$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/net/wifi/rtt/PasnConfig$Builder;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    invoke-static {p1}, Landroid/net/wifi/rtt/PasnConfig$Builder;->-$$Nest$fgetmBaseAkms(Landroid/net/wifi/rtt/PasnConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mBaseAkms:I

    .line 310
    invoke-static {p1}, Landroid/net/wifi/rtt/PasnConfig$Builder;->-$$Nest$fgetmCiphers(Landroid/net/wifi/rtt/PasnConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mCiphers:I

    .line 311
    invoke-static {p1}, Landroid/net/wifi/rtt/PasnConfig$Builder;->-$$Nest$fgetmPassword(Landroid/net/wifi/rtt/PasnConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mPassword:Ljava/lang/String;

    .line 312
    invoke-static {p1}, Landroid/net/wifi/rtt/PasnConfig$Builder;->-$$Nest$fgetmWifiSsid(Landroid/net/wifi/rtt/PasnConfig$Builder;)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 313
    iget-object v0, p1, Landroid/net/wifi/rtt/PasnConfig$Builder;->mPasnComebackCookie:[B

    iput-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mPasnComebackCookie:[B

    .line 314
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/rtt/PasnConfig$Builder;Landroid/net/wifi/rtt/PasnConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/PasnConfig;-><init>(Landroid/net/wifi/rtt/PasnConfig$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mBaseAkms:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mCiphers:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mPassword:Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-class v0, Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiSsid;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiSsid;

    goto :goto_36

    .line 244
    :cond_2a
    const-class v0, Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiSsid;

    :goto_36
    iput-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mPasnComebackCookie:[B

    .line 246
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/rtt/PasnConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/PasnConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist getBaseAkmsFromCapabilities(Ljava/lang/String;)I
    .registers 5
    .param p0, "capabilities"    # Ljava/lang/String;

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "akms":I
    if-nez p0, :cond_4

    return v0

    .line 283
    :cond_4
    sget-object v1, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 284
    .local v2, "akm":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 285
    sget-object v3, Landroid/net/wifi/rtt/PasnConfig;->sStringToAkm:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v0, v3

    .line 287
    .end local v2    # "akm":Ljava/lang/String;
    :cond_2d
    goto :goto_e

    .line 288
    :cond_2e
    return v0
.end method

.method public static blacklist getCiphersFromCapabilities(Ljava/lang/String;)I
    .registers 5
    .param p0, "capabilities"    # Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "ciphers":I
    if-nez p0, :cond_4

    return v0

    .line 300
    :cond_4
    sget-object v1, Landroid/net/wifi/rtt/PasnConfig;->sStringToCipher:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 301
    .local v2, "cipher":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 302
    sget-object v3, Landroid/net/wifi/rtt/PasnConfig;->sStringToCipher:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v0, v3

    .line 304
    .end local v2    # "cipher":Ljava/lang/String;
    :cond_2d
    goto :goto_e

    .line 305
    :cond_2e
    return v0
.end method

.method public static blacklist isAkmRequiresPassword(I)Z
    .registers 2
    .param p0, "akms"    # I

    .line 320
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 417
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 418
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/rtt/PasnConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/rtt/PasnConfig;

    .line 419
    .local v1, "that":Landroid/net/wifi/rtt/PasnConfig;
    iget v3, p0, Landroid/net/wifi/rtt/PasnConfig;->mBaseAkms:I

    iget v4, v1, Landroid/net/wifi/rtt/PasnConfig;->mBaseAkms:I

    if-ne v3, v4, :cond_37

    iget v3, p0, Landroid/net/wifi/rtt/PasnConfig;->mCiphers:I

    iget v4, v1, Landroid/net/wifi/rtt/PasnConfig;->mCiphers:I

    if-ne v3, v4, :cond_37

    iget-object v3, p0, Landroid/net/wifi/rtt/PasnConfig;->mPassword:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/rtt/PasnConfig;->mPassword:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Landroid/net/wifi/rtt/PasnConfig;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iget-object v4, v1, Landroid/net/wifi/rtt/PasnConfig;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 420
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Landroid/net/wifi/rtt/PasnConfig;->mPasnComebackCookie:[B

    iget-object v4, v1, Landroid/net/wifi/rtt/PasnConfig;->mPasnComebackCookie:[B

    .line 421
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_38

    :cond_37
    move v0, v2

    .line 419
    :goto_38
    return v0

    .line 418
    .end local v1    # "that":Landroid/net/wifi/rtt/PasnConfig;
    :cond_39
    return v2
.end method

.method public whitelist getBaseAkms()I
    .registers 2

    .line 192
    iget v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mBaseAkms:I

    return v0
.end method

.method public whitelist getCiphers()I
    .registers 2

    .line 199
    iget v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mCiphers:I

    return v0
.end method

.method public whitelist getPasnComebackCookie()[B
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mPasnComebackCookie:[B

    return-object v0
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWifiSsid()Landroid/net/wifi/WifiSsid;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 426
    iget v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mBaseAkms:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/PasnConfig;->mCiphers:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/rtt/PasnConfig;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/rtt/PasnConfig;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 427
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/rtt/PasnConfig;->mPasnComebackCookie:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 428
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public blacklist setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Landroid/net/wifi/rtt/PasnConfig;->mPassword:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 433
    iget-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "*"

    goto :goto_9

    :cond_7
    const-string v0, "null"

    .line 434
    .local v0, "password":Ljava/lang/String;
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PasnConfig{mBaseAkms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/PasnConfig;->mBaseAkms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCiphers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/PasnConfig;->mCiphers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPassword=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWifiSsid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/rtt/PasnConfig;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPasnComebackCookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/rtt/PasnConfig;->mPasnComebackCookie:[B

    .line 436
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 267
    iget v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mBaseAkms:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mCiphers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 271
    iget-object v0, p0, Landroid/net/wifi/rtt/PasnConfig;->mPasnComebackCookie:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 272
    return-void
.end method
