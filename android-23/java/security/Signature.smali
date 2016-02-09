.class public abstract Ljava/security/Signature;
.super Ljava/security/SignatureSpi;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Signature$SignatureImpl;
    }
.end annotation


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final SERVICE:Ljava/lang/String; = "Signature"

.field protected static final SIGN:I = 0x2

.field protected static final UNINITIALIZED:I = 0x0

.field protected static final VERIFY:I = 0x3


# instance fields
.field final algorithm:Ljava/lang/String;

.field provider:Ljava/security/Provider;

.field protected state:I


# direct methods
.method static synthetic -wrap0(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 1
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Ljava/security/Signature;->tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 43
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "Signature"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/security/Signature;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 37
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 74
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/security/Signature;->state:I

    #@6
    .line 84
    iput-object p1, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    #@8
    .line 83
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/Signature;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 102
    if-nez p0, :cond_0

    #@3
    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "algorithm == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 105
    :cond_0
    invoke-static {p0, v0}, Ljava/security/Signature;->getSignature(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    if-nez p0, :cond_0

    #@2
    .line 129
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "algorithm == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 131
    :cond_0
    if-eqz p1, :cond_1

    #@d
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 132
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@15
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@18
    throw v1

    #@19
    .line 134
    :cond_2
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@1c
    move-result-object v0

    #@1d
    .line 135
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_3

    #@1f
    .line 136
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@21
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 138
    :cond_3
    invoke-static {p0, v0}, Ljava/security/Signature;->getSignature(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    if-nez p0, :cond_0

    #@2
    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "algorithm == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 163
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "provider == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 166
    :cond_1
    invoke-static {p0, p1}, Ljava/security/Signature;->getSignature(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method private static getSignature(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 172
    :cond_0
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Unknown algorithm: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 177
    :cond_1
    const/4 v2, 0x0

    #@23
    :try_start_0
    invoke-static {v2, p1, p0}, Ljava/security/Signature;->tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v1

    #@27
    .line 181
    .local v1, "spiAndProvider":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-nez v1, :cond_3

    #@29
    .line 182
    if-nez p1, :cond_2

    #@2b
    .line 183
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "No provider found for "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2

    #@45
    .line 178
    .end local v1    # "spiAndProvider":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_0
    move-exception v0

    #@46
    .line 179
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@48
    const-string/jumbo v3, "InvalidKeyException thrown when key == null"

    #@4b
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4e
    throw v2

    #@4f
    .line 185
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .restart local v1    # "spiAndProvider":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_2
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    #@51
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, "Provider "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    .line 186
    const-string/jumbo v4, " does not provide "

    #@68
    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@77
    throw v2

    #@78
    .line 189
    :cond_3
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@7a
    instance-of v2, v2, Ljava/security/Signature;

    #@7c
    if-eqz v2, :cond_4

    #@7e
    .line 190
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@80
    check-cast v2, Ljava/security/Signature;

    #@82
    return-object v2

    #@83
    .line 192
    :cond_4
    new-instance v2, Ljava/security/Signature$SignatureImpl;

    #@85
    invoke-direct {v2, p0, p1}, Ljava/security/Signature$SignatureImpl;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    #@88
    return-object v2
.end method

.method private stateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 581
    packed-switch p1, :pswitch_data_0

    #@3
    .line 589
    :pswitch_0
    const-string/jumbo v0, ""

    #@6
    return-object v0

    #@7
    .line 583
    :pswitch_1
    const-string/jumbo v0, "UNINITIALIZED"

    #@a
    return-object v0

    #@b
    .line 585
    :pswitch_2
    const-string/jumbo v0, "SIGN"

    #@e
    return-object v0

    #@f
    .line 587
    :pswitch_3
    const-string/jumbo v0, "VERIFY"

    #@12
    return-object v0

    #@13
    .line 581
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 7
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 201
    if-eqz p1, :cond_1

    #@3
    .line 202
    const-string/jumbo v5, "Signature"

    #@6
    invoke-virtual {p1, v5, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@9
    move-result-object v2

    #@a
    .line 203
    .local v2, "service":Ljava/security/Provider$Service;
    if-nez v2, :cond_0

    #@c
    .line 204
    return-object v6

    #@d
    .line 206
    :cond_0
    invoke-static {v6, v2}, Ljava/security/Signature;->tryAlgorithmWithProvider(Ljava/security/Key;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@10
    move-result-object v5

    #@11
    return-object v5

    #@12
    .line 208
    .end local v2    # "service":Ljava/security/Provider$Service;
    :cond_1
    sget-object v5, Ljava/security/Signature;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@14
    invoke-virtual {v5, p2}, Lorg/apache/harmony/security/fortress/Engine;->getServices(Ljava/lang/String;)Ljava/util/ArrayList;

    #@17
    move-result-object v4

    #@18
    .line 209
    .local v4, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    if-eqz v4, :cond_2

    #@1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_3

    #@20
    .line 210
    :cond_2
    return-object v6

    #@21
    .line 212
    :cond_3
    const/4 v0, 0x0

    #@22
    .line 213
    .local v0, "keySupported":Z
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v3

    #@26
    .local v3, "service$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_6

    #@2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Ljava/security/Provider$Service;

    #@32
    .line 214
    .restart local v2    # "service":Ljava/security/Provider$Service;
    if-eqz p0, :cond_5

    #@34
    invoke-virtual {v2, p0}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_4

    #@3a
    .line 215
    :cond_5
    const/4 v0, 0x1

    #@3b
    .line 216
    invoke-static {p0, v2}, Ljava/security/Signature;->tryAlgorithmWithProvider(Ljava/security/Key;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@3e
    move-result-object v1

    #@3f
    .line 217
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-eqz v1, :cond_4

    #@41
    .line 218
    return-object v1

    #@42
    .line 222
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .end local v2    # "service":Ljava/security/Provider$Service;
    :cond_6
    if-nez v0, :cond_7

    #@44
    .line 223
    new-instance v5, Ljava/security/InvalidKeyException;

    #@46
    const-string/jumbo v6, "No provider supports the provided key"

    #@49
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v5

    #@4d
    .line 225
    :cond_7
    return-object v6
.end method

.method private static tryAlgorithmWithProvider(Ljava/security/Key;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 5
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "service"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 230
    if-eqz p0, :cond_0

    #@3
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_2

    #@9
    .line 234
    :cond_0
    sget-object v2, Ljava/security/Signature;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-virtual {v2, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/security/Provider$Service;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@f
    move-result-object v1

    #@10
    .line 235
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@12
    if-eqz v2, :cond_1

    #@14
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@16
    if-nez v2, :cond_3

    #@18
    .line 236
    :cond_1
    return-object v4

    #@19
    .line 231
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_2
    return-object v4

    #@1a
    .line 238
    .restart local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_3
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@1c
    instance-of v2, v2, Ljava/security/SignatureSpi;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    if-nez v2, :cond_4

    #@20
    .line 239
    return-object v4

    #@21
    .line 241
    :cond_4
    return-object v1

    #@22
    .line 242
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_0
    move-exception v0

    #@23
    .line 244
    .local v0, "ignored":Ljava/security/NoSuchAlgorithmException;
    return-object v4
.end method


# virtual methods
.method ensureProviderChosen()V
    .locals 0

    #@0
    .prologue
    .line 261
    return-void
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCurrentSpi()Ljava/security/SignatureSpi;
    .locals 1

    #@0
    .prologue
    .line 271
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 651
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 633
    invoke-virtual {p0}, Ljava/security/Signature;->engineGetParameters()Ljava/security/AlgorithmParameters;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 253
    invoke-virtual {p0}, Ljava/security/Signature;->ensureProviderChosen()V

    #@3
    .line 254
    iget-object v0, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    #@5
    return-object v0
.end method

.method public final initSign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 357
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;)V

    #@3
    .line 358
    const/4 v0, 0x2

    #@4
    iput v0, p0, Ljava/security/Signature;->state:I

    #@6
    .line 356
    return-void
.end method

.method public final initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 375
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@3
    .line 376
    const/4 v0, 0x2

    #@4
    iput v0, p0, Ljava/security/Signature;->state:I

    #@6
    .line 374
    return-void
.end method

.method public final initVerify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    #@3
    .line 296
    const/4 v0, 0x3

    #@4
    iput v0, p0, Ljava/security/Signature;->state:I

    #@6
    .line 294
    return-void
.end method

.method public final initVerify(Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 316
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    #@2
    if-eqz v4, :cond_0

    #@4
    move-object v4, p1

    #@5
    .line 317
    check-cast v4, Ljava/security/cert/X509Certificate;

    #@7
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    .line 318
    .local v0, "ce":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@c
    .line 319
    .local v1, "critical":Z
    if-eqz v0, :cond_0

    #@e
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 342
    .end local v0    # "ce":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "critical":Z
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {p0, v4}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    #@1b
    .line 343
    const/4 v4, 0x3

    #@1c
    iput v4, p0, Ljava/security/Signature;->state:I

    #@1e
    .line 315
    return-void

    #@1f
    .line 320
    .restart local v0    # "ce":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "critical":Z
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v2

    #@23
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_3

    #@29
    .line 321
    const-string/jumbo v4, "2.5.29.15"

    #@2c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_2

    #@36
    .line 323
    const/4 v1, 0x1

    #@37
    .line 327
    :cond_3
    if-eqz v1, :cond_0

    #@39
    move-object v4, p1

    #@3a
    .line 328
    check-cast v4, Ljava/security/cert/X509Certificate;

    #@3c
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@3f
    move-result-object v3

    #@40
    .line 336
    .local v3, "keyUsage":[Z
    if-eqz v3, :cond_0

    #@42
    const/4 v4, 0x0

    #@43
    aget-boolean v4, v3, v4

    #@45
    if-nez v4, :cond_0

    #@47
    .line 337
    new-instance v4, Ljava/security/InvalidKeyException;

    #@49
    const-string/jumbo v5, "The public key in the certificate cannot be used for digital signature purposes"

    #@4c
    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v4
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 608
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    #@3
    .line 607
    return-void
.end method

.method public final setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 622
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@3
    .line 621
    return-void
.end method

.method public final sign([BII)I
    .locals 2
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 422
    if-eqz p1, :cond_0

    #@2
    if-gez p2, :cond_1

    #@4
    .line 424
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v0

    #@a
    .line 422
    :cond_1
    if-ltz p3, :cond_0

    #@c
    .line 423
    add-int v0, p2, p3

    #@e
    array-length v1, p1

    #@f
    if-gt v0, v1, :cond_0

    #@11
    .line 426
    iget v0, p0, Ljava/security/Signature;->state:I

    #@13
    const/4 v1, 0x2

    #@14
    if-eq v0, v1, :cond_2

    #@16
    .line 427
    new-instance v0, Ljava/security/SignatureException;

    #@18
    const-string/jumbo v1, "Signature object is not initialized properly"

    #@1b
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 429
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineSign([BII)I

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public final sign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 392
    iget v0, p0, Ljava/security/Signature;->state:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 393
    new-instance v0, Ljava/security/SignatureException;

    #@7
    const-string/jumbo v1, "Signature object is not initialized properly"

    #@a
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 395
    :cond_0
    invoke-virtual {p0}, Ljava/security/Signature;->engineSign()[B

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SIGNATURE "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " state: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Ljava/security/Signature;->state:I

    #@1b
    invoke-direct {p0, v1}, Ljava/security/Signature;->stateToString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public final update(B)V
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 502
    iget v0, p0, Ljava/security/Signature;->state:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 503
    new-instance v0, Ljava/security/SignatureException;

    #@6
    const-string/jumbo v1, "Signature object is not initialized properly"

    #@9
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 505
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(B)V

    #@10
    .line 501
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    iget v0, p0, Ljava/security/Signature;->state:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 563
    new-instance v0, Ljava/security/SignatureException;

    #@6
    const-string/jumbo v1, "Signature object is not initialized properly"

    #@9
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 565
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@10
    .line 561
    return-void
.end method

.method public final update([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 519
    iget v0, p0, Ljava/security/Signature;->state:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 520
    new-instance v0, Ljava/security/SignatureException;

    #@7
    const-string/jumbo v1, "Signature object is not initialized properly"

    #@a
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 522
    :cond_0
    array-length v0, p1

    #@f
    invoke-virtual {p0, p1, v1, v0}, Ljava/security/Signature;->engineUpdate([BII)V

    #@12
    .line 518
    return-void
.end method

.method public final update([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 541
    iget v0, p0, Ljava/security/Signature;->state:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 542
    new-instance v0, Ljava/security/SignatureException;

    #@6
    const-string/jumbo v1, "Signature object is not initialized properly"

    #@9
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 544
    :cond_0
    if-eqz p1, :cond_1

    #@f
    if-gez p2, :cond_2

    #@11
    .line 546
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@16
    throw v0

    #@17
    .line 544
    :cond_2
    if-ltz p3, :cond_1

    #@19
    .line 545
    add-int v0, p2, p3

    #@1b
    array-length v1, p1

    #@1c
    if-gt v0, v1, :cond_1

    #@1e
    .line 548
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineUpdate([BII)V

    #@21
    .line 540
    return-void
.end method

.method public final verify([B)Z
    .locals 2
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 449
    iget v0, p0, Ljava/security/Signature;->state:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 450
    new-instance v0, Ljava/security/SignatureException;

    #@7
    const-string/jumbo v1, "Signature object is not initialized properly"

    #@a
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 452
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineVerify([B)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public final verify([BII)Z
    .locals 2
    .param p1, "signature"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 481
    iget v0, p0, Ljava/security/Signature;->state:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 482
    new-instance v0, Ljava/security/SignatureException;

    #@7
    const-string/jumbo v1, "Signature object is not initialized properly"

    #@a
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 484
    :cond_0
    if-eqz p1, :cond_1

    #@10
    if-gez p2, :cond_2

    #@12
    .line 486
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@17
    throw v0

    #@18
    .line 484
    :cond_2
    if-ltz p3, :cond_1

    #@1a
    .line 485
    add-int v0, p2, p3

    #@1c
    array-length v1, p1

    #@1d
    if-gt v0, v1, :cond_1

    #@1f
    .line 488
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineVerify([BII)Z

    #@22
    move-result v0

    #@23
    return v0
.end method
