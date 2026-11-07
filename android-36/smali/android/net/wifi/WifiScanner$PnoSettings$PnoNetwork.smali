.class public Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$PnoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PnoNetwork"
.end annotation


# static fields
.field public static final greylist-max-o AUTH_CODE_EAPOL:B = 0x4t

.field public static final greylist-max-o AUTH_CODE_OPEN:B = 0x1t

.field public static final greylist-max-o AUTH_CODE_PSK:B = 0x2t

.field public static final greylist-max-o FLAG_A_BAND:B = 0x2t

.field public static final greylist-max-o FLAG_DIRECTED_SCAN:B = 0x1t

.field public static final greylist-max-o FLAG_G_BAND:B = 0x4t

.field public static final greylist-max-o FLAG_SAME_NETWORK:B = 0x10t

.field public static final greylist-max-o FLAG_STRICT_MATCH:B = 0x8t


# instance fields
.field public greylist-max-o authBitField:B

.field public greylist-max-o flags:B

.field public blacklist frequencies:[I

.field public greylist-max-o ssid:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "ssid"    # Ljava/lang/String;

    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 1196
    iput-byte v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 1198
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    .line 1204
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    .line 1205
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1214
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1215
    return v0

    .line 1217
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1218
    return v2

    .line 1220
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 1221
    .local v1, "lhs":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-byte v3, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    iget-byte v4, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    if-ne v3, v4, :cond_24

    iget-byte v3, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    iget-byte v4, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1209
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    iget-byte v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-byte v2, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
