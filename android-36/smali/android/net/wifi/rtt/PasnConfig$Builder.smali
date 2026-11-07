.class public final Landroid/net/wifi/rtt/PasnConfig$Builder;
.super Ljava/lang/Object;
.source "PasnConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/PasnConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBaseAkms:I

.field private final blacklist mCiphers:I

.field blacklist mPasnComebackCookie:[B

.field private blacklist mPassword:Ljava/lang/String;

.field private blacklist mWifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBaseAkms(Landroid/net/wifi/rtt/PasnConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mBaseAkms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCiphers(Landroid/net/wifi/rtt/PasnConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mCiphers:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPassword(Landroid/net/wifi/rtt/PasnConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiSsid(Landroid/net/wifi/rtt/PasnConfig$Builder;)Landroid/net/wifi/WifiSsid;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object p0
.end method

.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "baseAkms"    # I
    .param p2, "ciphers"    # I

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mPassword:Ljava/lang/String;

    .line 331
    iput-object v0, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 332
    iput-object v0, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mPasnComebackCookie:[B

    .line 343
    iput p1, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mBaseAkms:I

    .line 344
    iput p2, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mCiphers:I

    .line 345
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/rtt/PasnConfig;
    .registers 3

    .line 411
    new-instance v0, Landroid/net/wifi/rtt/PasnConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/rtt/PasnConfig;-><init>(Landroid/net/wifi/rtt/PasnConfig$Builder;Landroid/net/wifi/rtt/PasnConfig-IA;)V

    return-object v0
.end method

.method public whitelist setPasnComebackCookie([B)Landroid/net/wifi/rtt/PasnConfig$Builder;
    .registers 5
    .param p1, "pasnComebackCookie"    # [B

    .line 397
    const-string v0, "PASN comeback cookie must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 398
    array-length v0, p1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_10

    array-length v0, p1

    if-eqz v0, :cond_10

    .line 402
    iput-object p1, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mPasnComebackCookie:[B

    .line 403
    return-object p0

    .line 399
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cookie with invalid length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPassword(Ljava/lang/String;)Landroid/net/wifi/rtt/PasnConfig$Builder;
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 359
    const-string v0, "Password must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    iput-object p1, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mPassword:Ljava/lang/String;

    .line 361
    return-object p0
.end method

.method public whitelist setWifiSsid(Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/rtt/PasnConfig$Builder;
    .registers 3
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;

    .line 375
    const-string v0, "SSID must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    iput-object p1, p0, Landroid/net/wifi/rtt/PasnConfig$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 377
    return-object p0
.end method
