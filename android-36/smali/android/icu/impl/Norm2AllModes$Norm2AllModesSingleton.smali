.class final Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
.super Ljava/lang/Object;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Norm2AllModesSingleton"
.end annotation


# instance fields
.field private blacklist allModes:Landroid/icu/impl/Norm2AllModes;

.field private blacklist exception:Ljava/lang/RuntimeException;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetallModes(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->allModes:Landroid/icu/impl/Norm2AllModes;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetexception(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->exception:Ljava/lang/RuntimeException;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    :try_start_3
    new-instance v0, Landroid/icu/impl/Normalizer2Impl;

    invoke-direct {v0}, Landroid/icu/impl/Normalizer2Impl;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".nrm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/lang/String;)Landroid/icu/impl/Normalizer2Impl;

    move-result-object v0

    .line 392
    .local v0, "impl":Landroid/icu/impl/Normalizer2Impl;
    new-instance v1, Landroid/icu/impl/Norm2AllModes;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/icu/impl/Norm2AllModes;-><init>(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/impl/Norm2AllModes-IA;)V

    iput-object v1, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->allModes:Landroid/icu/impl/Norm2AllModes;
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_27} :catch_28

    .line 395
    .end local v0    # "impl":Landroid/icu/impl/Normalizer2Impl;
    goto :goto_2b

    .line 393
    :catch_28
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->exception:Ljava/lang/RuntimeException;

    .line 396
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2b
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/icu/impl/Norm2AllModes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;-><init>(Ljava/lang/String;)V

    return-void
.end method
