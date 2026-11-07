.class Landroid/icu/impl/Norm2AllModes$1;
.super Landroid/icu/impl/SoftCache;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/Norm2AllModes;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 366
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createInstance(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroid/icu/impl/Norm2AllModes;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;

    .line 370
    if-nez p2, :cond_1f

    .line 371
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

    .local v0, "impl":Landroid/icu/impl/Normalizer2Impl;
    goto :goto_28

    .line 373
    .end local v0    # "impl":Landroid/icu/impl/Normalizer2Impl;
    :cond_1f
    new-instance v0, Landroid/icu/impl/Normalizer2Impl;

    invoke-direct {v0}, Landroid/icu/impl/Normalizer2Impl;-><init>()V

    invoke-virtual {v0, p2}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;

    move-result-object v0

    .line 375
    .restart local v0    # "impl":Landroid/icu/impl/Normalizer2Impl;
    :goto_28
    new-instance v1, Landroid/icu/impl/Norm2AllModes;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/icu/impl/Norm2AllModes;-><init>(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/impl/Norm2AllModes-IA;)V

    return-object v1
.end method

.method protected bridge synthetic blacklist createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 366
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/Norm2AllModes$1;->createInstance(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroid/icu/impl/Norm2AllModes;

    move-result-object p1

    return-object p1
.end method
