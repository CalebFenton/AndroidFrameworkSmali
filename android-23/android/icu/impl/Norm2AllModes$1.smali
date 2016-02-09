.class final Landroid/icu/impl/Norm2AllModes$1;
.super Landroid/icu/impl/SoftCache;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/Norm2AllModes;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 344
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroid/icu/impl/Norm2AllModes;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 347
    if-nez p2, :cond_0

    #@3
    .line 348
    new-instance v1, Landroid/icu/impl/Normalizer2Impl;

    #@5
    invoke-direct {v1}, Landroid/icu/impl/Normalizer2Impl;-><init>()V

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, ".nrm"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/lang/String;)Landroid/icu/impl/Normalizer2Impl;

    #@1f
    move-result-object v0

    #@20
    .line 352
    .local v0, "impl":Landroid/icu/impl/Normalizer2Impl;
    :goto_0
    new-instance v1, Landroid/icu/impl/Norm2AllModes;

    #@22
    invoke-direct {v1, v0, v4}, Landroid/icu/impl/Norm2AllModes;-><init>(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/impl/Norm2AllModes;)V

    #@25
    return-object v1

    #@26
    .line 350
    .end local v0    # "impl":Landroid/icu/impl/Normalizer2Impl;
    :cond_0
    new-instance v1, Landroid/icu/impl/Normalizer2Impl;

    #@28
    invoke-direct {v1}, Landroid/icu/impl/Normalizer2Impl;-><init>()V

    #@2b
    invoke-virtual {v1, p2}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;

    #@2e
    move-result-object v0

    #@2f
    .restart local v0    # "impl":Landroid/icu/impl/Normalizer2Impl;
    goto :goto_0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bytes"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 345
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/nio/ByteBuffer;

    #@4
    .end local p2    # "bytes":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/Norm2AllModes$1;->createInstance(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroid/icu/impl/Norm2AllModes;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
