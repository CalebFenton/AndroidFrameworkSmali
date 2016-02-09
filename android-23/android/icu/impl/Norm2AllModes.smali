.class public final Landroid/icu/impl/Norm2AllModes;
.super Ljava/lang/Object;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;,
        Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;,
        Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;,
        Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;,
        Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;,
        Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;,
        Landroid/icu/impl/Norm2AllModes$NFCSingleton;,
        Landroid/icu/impl/Norm2AllModes$NFKCSingleton;,
        Landroid/icu/impl/Norm2AllModes$NFKC_CFSingleton;,
        Landroid/icu/impl/Norm2AllModes$1;
    }
.end annotation


# static fields
.field public static final NOOP_NORMALIZER2:Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;

.field private static cache:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/Norm2AllModes;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

.field public final decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

.field public final fcc:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

.field public final fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

.field public final impl:Landroid/icu/impl/Normalizer2Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 344
    new-instance v0, Landroid/icu/impl/Norm2AllModes$1;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/Norm2AllModes$1;-><init>()V

    #@5
    .line 343
    sput-object v0, Landroid/icu/impl/Norm2AllModes;->cache:Landroid/icu/impl/CacheBase;

    #@7
    .line 356
    new-instance v0, Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;

    #@9
    invoke-direct {v0}, Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;-><init>()V

    #@c
    sput-object v0, Landroid/icu/impl/Norm2AllModes;->NOOP_NORMALIZER2:Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;

    #@e
    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .locals 2
    .param p1, "ni"    # Landroid/icu/impl/Normalizer2Impl;

    #@0
    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 284
    iput-object p1, p0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@5
    .line 285
    new-instance v0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, p1, v1}, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;Z)V

    #@b
    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    #@d
    .line 286
    new-instance v0, Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    #@f
    invoke-direct {v0, p1}, Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    #@12
    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    #@14
    .line 287
    new-instance v0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    #@16
    invoke-direct {v0, p1}, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    #@19
    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    #@1b
    .line 288
    new-instance v0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    #@1d
    const/4 v1, 0x1

    #@1e
    invoke-direct {v0, p1, v1}, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;Z)V

    #@21
    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->fcc:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    #@23
    .line 283
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/impl/Norm2AllModes;)V
    .locals 0
    .param p1, "ni"    # Landroid/icu/impl/Normalizer2Impl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    #@3
    return-void
.end method

.method public static getFCDNormalizer2()Landroid/icu/text/Normalizer2;
    .locals 1

    #@0
    .prologue
    .line 362
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    #@6
    return-object v0
.end method

.method public static getInstance(Ljava/nio/ByteBuffer;Ljava/lang/String;)Landroid/icu/impl/Norm2AllModes;
    .locals 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 323
    if-nez p0, :cond_4

    #@2
    .line 325
    const-string/jumbo v1, "nfc"

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 326
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFCSingleton;->-get0()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    #@e
    move-result-object v0

    #@f
    .line 334
    :goto_0
    if-eqz v0, :cond_4

    #@11
    .line 335
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-get1(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    if-eqz v1, :cond_3

    #@17
    .line 336
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-get1(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    #@1a
    move-result-object v1

    #@1b
    throw v1

    #@1c
    .line 327
    :cond_0
    const-string/jumbo v1, "nfkc"

    #@1f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 328
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKCSingleton;->-get0()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    #@28
    move-result-object v0

    #@29
    .local v0, "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    goto :goto_0

    #@2a
    .line 329
    .end local v0    # "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    :cond_1
    const-string/jumbo v1, "nfkc_cf"

    #@2d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 330
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKC_CFSingleton;->-get0()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    #@36
    move-result-object v0

    #@37
    .restart local v0    # "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    goto :goto_0

    #@38
    .line 332
    .end local v0    # "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    :cond_2
    const/4 v0, 0x0

    #@39
    .local v0, "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    goto :goto_0

    #@3a
    .line 338
    .end local v0    # "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    :cond_3
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-get0(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    #@3d
    move-result-object v1

    #@3e
    return-object v1

    #@3f
    .line 341
    :cond_4
    sget-object v1, Landroid/icu/impl/Norm2AllModes;->cache:Landroid/icu/impl/CacheBase;

    #@41
    invoke-virtual {v1, p1, p0}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    check-cast v1, Landroid/icu/impl/Norm2AllModes;

    #@47
    return-object v1
.end method

.method private static getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;
    .locals 1
    .param p0, "singleton"    # Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    #@0
    .prologue
    .line 298
    invoke-static {p0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-get1(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 299
    invoke-static {p0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-get1(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 301
    :cond_0
    invoke-static {p0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-get0(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static getN2WithImpl(I)Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;
    .locals 1
    .param p0, "index"    # I

    #@0
    .prologue
    .line 314
    packed-switch p0, :pswitch_data_0

    #@3
    .line 319
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 315
    :pswitch_0
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@8
    move-result-object v0

    #@9
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    #@b
    return-object v0

    #@c
    .line 316
    :pswitch_1
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    #@f
    move-result-object v0

    #@10
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    #@12
    return-object v0

    #@13
    .line 317
    :pswitch_2
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@16
    move-result-object v0

    #@17
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    #@19
    return-object v0

    #@1a
    .line 318
    :pswitch_3
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    #@1d
    move-result-object v0

    #@1e
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    #@20
    return-object v0

    #@21
    .line 314
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getNFCInstance()Landroid/icu/impl/Norm2AllModes;
    .locals 1

    #@0
    .prologue
    .line 304
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFCSingleton;->-get0()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getNFKCInstance()Landroid/icu/impl/Norm2AllModes;
    .locals 1

    #@0
    .prologue
    .line 307
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKCSingleton;->-get0()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;
    .locals 1

    #@0
    .prologue
    .line 310
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKC_CFSingleton;->-get0()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
