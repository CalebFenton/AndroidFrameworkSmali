.class public final Landroid/icu/impl/Norm2AllModes;
.super Ljava/lang/Object;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;,
        Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;,
        Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;,
        Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;,
        Landroid/icu/impl/Norm2AllModes$NFCSingleton;,
        Landroid/icu/impl/Norm2AllModes$NFKCSingleton;,
        Landroid/icu/impl/Norm2AllModes$NFKC_CFSingleton;,
        Landroid/icu/impl/Norm2AllModes$NFKC_SCFSingleton;,
        Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;,
        Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;
    }
.end annotation


# static fields
.field public static final blacklist NOOP_NORMALIZER2:Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;

.field private static blacklist cache:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/Norm2AllModes;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

.field public final blacklist decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

.field public final blacklist fcc:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

.field public final blacklist fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

.field public final blacklist impl:Landroid/icu/impl/Normalizer2Impl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 365
    new-instance v0, Landroid/icu/impl/Norm2AllModes$1;

    invoke-direct {v0}, Landroid/icu/impl/Norm2AllModes$1;-><init>()V

    sput-object v0, Landroid/icu/impl/Norm2AllModes;->cache:Landroid/icu/impl/CacheBase;

    .line 379
    new-instance v0, Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;

    invoke-direct {v0}, Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;-><init>()V

    sput-object v0, Landroid/icu/impl/Norm2AllModes;->NOOP_NORMALIZER2:Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .registers 4
    .param p1, "ni"    # Landroid/icu/impl/Normalizer2Impl;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 304
    new-instance v0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;Z)V

    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    .line 305
    new-instance v0, Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    invoke-direct {v0, p1}, Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    .line 306
    new-instance v0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    invoke-direct {v0, p1}, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    .line 307
    new-instance v0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;Z)V

    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->fcc:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    .line 308
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/impl/Norm2AllModes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    return-void
.end method

.method public static blacklist getFCDNormalizer2()Landroid/icu/text/Normalizer2;
    .registers 1

    .line 385
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/nio/ByteBuffer;Ljava/lang/String;)Landroid/icu/impl/Norm2AllModes;
    .registers 4
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "name"    # Ljava/lang/String;

    .line 345
    if-nez p0, :cond_3c

    .line 347
    const-string v0, "nfc"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 348
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFCSingleton;->-$$Nest$sfgetINSTANCE()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    .local v0, "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    goto :goto_2a

    .line 349
    .end local v0    # "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    :cond_f
    const-string v0, "nfkc"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 350
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKCSingleton;->-$$Nest$sfgetINSTANCE()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    .restart local v0    # "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    goto :goto_2a

    .line 351
    .end local v0    # "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    :cond_1c
    const-string v0, "nfkc_cf"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 352
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKC_CFSingleton;->-$$Nest$sfgetINSTANCE()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    .restart local v0    # "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    goto :goto_2a

    .line 354
    .end local v0    # "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    :cond_29
    const/4 v0, 0x0

    .line 356
    .restart local v0    # "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    :goto_2a
    if-eqz v0, :cond_3c

    .line 357
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-$$Nest$fgetexception(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    move-result-object v1

    if-nez v1, :cond_37

    .line 360
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-$$Nest$fgetallModes(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    return-object v1

    .line 358
    :cond_37
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-$$Nest$fgetexception(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 363
    .end local v0    # "singleton":Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    :cond_3c
    sget-object v0, Landroid/icu/impl/Norm2AllModes;->cache:Landroid/icu/impl/CacheBase;

    invoke-virtual {v0, p1, p0}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Norm2AllModes;

    return-object v0
.end method

.method private static blacklist getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;
    .registers 2
    .param p0, "singleton"    # Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    .line 317
    invoke-static {p0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-$$Nest$fgetexception(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    move-result-object v0

    if-nez v0, :cond_b

    .line 320
    invoke-static {p0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-$$Nest$fgetallModes(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0

    .line 318
    :cond_b
    invoke-static {p0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->-$$Nest$fgetexception(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist getN2WithImpl(I)Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;
    .registers 2
    .param p0, "index"    # I

    .line 336
    packed-switch p0, :pswitch_data_22

    .line 341
    const/4 v0, 0x0

    return-object v0

    .line 340
    :pswitch_5
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object v0

    .line 339
    :pswitch_c
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object v0

    .line 338
    :pswitch_13
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    return-object v0

    .line 337
    :pswitch_1a
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_13
        :pswitch_c
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist getNFCInstance()Landroid/icu/impl/Norm2AllModes;
    .registers 1

    .line 323
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFCSingleton;->-$$Nest$sfgetINSTANCE()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNFKCInstance()Landroid/icu/impl/Norm2AllModes;
    .registers 1

    .line 326
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKCSingleton;->-$$Nest$sfgetINSTANCE()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;
    .registers 1

    .line 329
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKC_CFSingleton;->-$$Nest$sfgetINSTANCE()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNFKC_SCFInstance()Landroid/icu/impl/Norm2AllModes;
    .registers 1

    .line 332
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKC_SCFSingleton;->-$$Nest$sfgetINSTANCE()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method
