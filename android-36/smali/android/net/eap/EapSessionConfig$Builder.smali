.class public final Landroid/net/eap/EapSessionConfig$Builder;
.super Ljava/lang/Object;
.source "EapSessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/eap/EapSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEapConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/eap/EapSessionConfig$EapMethodConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEapIdentity:[B


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapConfigs:Ljava/util/Map;

    .line 225
    invoke-static {}, Landroid/net/eap/EapSessionConfig;->-$$Nest$sfgetDEFAULT_IDENTITY()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapIdentity:[B

    .line 226
    return-void
.end method


# virtual methods
.method public blacklist addEapMethodConfig(Landroid/net/eap/EapSessionConfig$EapMethodConfig;)Landroid/net/eap/EapSessionConfig$Builder;
    .registers 4
    .param p1, "config"    # Landroid/net/eap/EapSessionConfig$EapMethodConfig;

    .line 355
    const-string v0, "EapMethodConfig is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapConfigs:Ljava/util/Map;

    invoke-static {p1}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->-$$Nest$fgetmMethodType(Landroid/net/eap/EapSessionConfig$EapMethodConfig;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-object p0
.end method

.method public whitelist build()Landroid/net/eap/EapSessionConfig;
    .registers 4

    .line 368
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 372
    new-instance v0, Landroid/net/eap/EapSessionConfig;

    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapConfigs:Ljava/util/Map;

    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapIdentity:[B

    invoke-direct {v0, v1, v2}, Landroid/net/eap/EapSessionConfig;-><init>(Ljava/util/Map;[B)V

    return-object v0

    .line 369
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have at least one EAP method configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEapAkaConfig(II)Landroid/net/eap/EapSessionConfig$Builder;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "apptype"    # I

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/eap/EapSessionConfig$Builder;->setEapAkaConfig(IILandroid/net/eap/EapSessionConfig$EapAkaOption;)Landroid/net/eap/EapSessionConfig$Builder;

    .line 264
    return-object p0
.end method

.method public whitelist setEapAkaConfig(IILandroid/net/eap/EapSessionConfig$EapAkaOption;)Landroid/net/eap/EapSessionConfig$Builder;
    .registers 7
    .param p1, "subId"    # I
    .param p2, "apptype"    # I
    .param p3, "options"    # Landroid/net/eap/EapSessionConfig$EapAkaOption;

    .line 278
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapConfigs:Ljava/util/Map;

    .line 279
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;-><init>(IILandroid/net/eap/EapSessionConfig$EapAkaOption;)V

    .line 278
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-object p0
.end method

.method public whitelist setEapAkaPrimeConfig(IILjava/lang/String;Z)Landroid/net/eap/EapSessionConfig$Builder;
    .registers 8
    .param p1, "subId"    # I
    .param p2, "apptype"    # I
    .param p3, "networkName"    # Ljava/lang/String;
    .param p4, "allowMismatchedNetworkNames"    # Z

    .line 301
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapConfigs:Ljava/util/Map;

    .line 302
    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;-><init>(IILjava/lang/String;Z)V

    .line 301
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-object p0
.end method

.method public whitelist setEapIdentity([B)Landroid/net/eap/EapSessionConfig$Builder;
    .registers 3
    .param p1, "eapIdentity"    # [B

    .line 236
    const-string v0, "eapIdentity must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapIdentity:[B

    .line 238
    return-object p0
.end method

.method public whitelist setEapMsChapV2Config(Ljava/lang/String;Ljava/lang/String;)Landroid/net/eap/EapSessionConfig$Builder;
    .registers 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapConfigs:Ljava/util/Map;

    .line 318
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    invoke-direct {v2, p1, p2}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-object p0
.end method

.method public whitelist setEapSimConfig(II)Landroid/net/eap/EapSessionConfig$Builder;
    .registers 6
    .param p1, "subId"    # I
    .param p2, "apptype"    # I

    .line 250
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapConfigs:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/net/eap/EapSessionConfig$EapSimConfig;

    invoke-direct {v2, p1, p2}, Landroid/net/eap/EapSessionConfig$EapSimConfig;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-object p0
.end method

.method public whitelist setEapTtlsConfig(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/eap/EapSessionConfig$Builder;
    .registers 6
    .param p1, "serverCaCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "innerEapSessionConfig"    # Landroid/net/eap/EapSessionConfig;

    .line 340
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$Builder;->mEapConfigs:Ljava/util/Map;

    .line 341
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    invoke-direct {v2, p1, p2}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;-><init>(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)V

    .line 340
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-object p0
.end method
