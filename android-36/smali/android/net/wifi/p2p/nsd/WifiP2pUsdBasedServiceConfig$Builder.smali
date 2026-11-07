.class public final Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;
.super Ljava/lang/Object;
.source "WifiP2pUsdBasedServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist SERVICE_NAME_MAXIMUM_LENGTH:I = 0x64


# instance fields
.field private blacklist mServiceName:Ljava/lang/String;

.field private blacklist mServiceProtocolType:I

.field blacklist mServiceSpecificInfo:[B


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;->mServiceProtocolType:I

    .line 183
    const-string v0, "Service name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1c

    .line 191
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;->mServiceName:Ljava/lang/String;

    .line 192
    return-void

    .line 188
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service name length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be less than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Service name cannot be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    .registers 3

    .line 248
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 252
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;-><init>()V

    .line 253
    .local v0, "config":Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->-$$Nest$fputmServiceName(Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;Ljava/lang/String;)V

    .line 254
    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;->mServiceProtocolType:I

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->-$$Nest$fputmServiceProtocolType(Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;I)V

    .line 255
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;->mServiceSpecificInfo:[B

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->-$$Nest$fputmServiceSpecificInfo(Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;[B)V

    .line 256
    return-object v0

    .line 249
    .end local v0    # "config":Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service name must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceProtocolType(I)Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;
    .registers 4
    .param p1, "serviceProtocolType"    # I

    .line 208
    if-ltz p1, :cond_9

    const/16 v0, 0xff

    if-gt p1, v0, :cond_9

    .line 212
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;->mServiceProtocolType:I

    .line 213
    return-object p0

    .line 209
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceProtocolType must be between 0-255 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceSpecificInfo([B)Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;
    .registers 5
    .param p1, "serviceSpecificInfo"    # [B

    .line 231
    if-eqz p1, :cond_32

    array-length v0, p1

    .line 232
    invoke-static {}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->getMaxAllowedServiceSpecificInfoLength()I

    move-result v1

    if-gt v0, v1, :cond_a

    goto :goto_32

    .line 233
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service specific info length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    invoke-static {}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->getMaxAllowedServiceSpecificInfoLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_32
    :goto_32
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;->mServiceSpecificInfo:[B

    .line 238
    return-object p0
.end method
