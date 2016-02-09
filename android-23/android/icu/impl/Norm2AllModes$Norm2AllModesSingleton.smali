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
.field private allModes:Landroid/icu/impl/Norm2AllModes;

.field private exception:Ljava/lang/RuntimeException;


# direct methods
.method static synthetic -get0(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->allModes:Landroid/icu/impl/Norm2AllModes;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->exception:Ljava/lang/RuntimeException;

    #@2
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 368
    :try_start_0
    new-instance v2, Landroid/icu/impl/Normalizer2Impl;

    #@5
    invoke-direct {v2}, Landroid/icu/impl/Normalizer2Impl;-><init>()V

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    const-string/jumbo v4, ".nrm"

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/lang/String;)Landroid/icu/impl/Normalizer2Impl;

    #@1f
    move-result-object v1

    #@20
    .line 369
    .local v1, "impl":Landroid/icu/impl/Normalizer2Impl;
    new-instance v2, Landroid/icu/impl/Norm2AllModes;

    #@22
    const/4 v3, 0x0

    #@23
    invoke-direct {v2, v1, v3}, Landroid/icu/impl/Norm2AllModes;-><init>(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/impl/Norm2AllModes;)V

    #@26
    iput-object v2, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->allModes:Landroid/icu/impl/Norm2AllModes;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 366
    .end local v1    # "impl":Landroid/icu/impl/Normalizer2Impl;
    :goto_0
    return-void

    #@29
    .line 370
    :catch_0
    move-exception v0

    #@2a
    .line 371
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->exception:Ljava/lang/RuntimeException;

    #@2c
    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method
