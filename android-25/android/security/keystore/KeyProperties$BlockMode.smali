.class public abstract Landroid/security/keystore/KeyProperties$BlockMode;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BlockMode"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 329
    .local p0, "blockModes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    #@2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 330
    :cond_0
    sget-object v4, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@a
    return-object v4

    #@b
    .line 332
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@e
    move-result v4

    #@f
    new-array v3, v4, [Ljava/lang/String;

    #@11
    .line 333
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    #@12
    .line 334
    .local v2, "offset":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "blockMode$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_2

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Ljava/lang/Integer;

    #@22
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@25
    move-result v0

    #@26
    .line 335
    .local v0, "blockMode":I
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    aput-object v4, v3, v2

    #@2c
    .line 336
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 338
    .end local v0    # "blockMode":I
    :cond_2
    return-object v3
.end method

.method public static allToKeymaster([Ljava/lang/String;)[I
    .locals 3
    .param p0, "blockModes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 342
    if-eqz p0, :cond_0

    #@2
    array-length v2, p0

    #@3
    if-nez v2, :cond_1

    #@5
    .line 343
    :cond_0
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    #@7
    return-object v2

    #@8
    .line 345
    :cond_1
    array-length v2, p0

    #@9
    new-array v1, v2, [I

    #@b
    .line 346
    .local v1, "result":[I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@d
    if-ge v0, v2, :cond_2

    #@f
    .line 347
    aget-object v2, p0, v0

    #@11
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    #@14
    move-result v2

    #@15
    aput v2, v1, v0

    #@17
    .line 346
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 349
    :cond_2
    return-object v1
.end method

.method public static fromKeymaster(I)Ljava/lang/String;
    .locals 3
    .param p0, "blockMode"    # I

    #@0
    .prologue
    .line 312
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported block mode: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 314
    :sswitch_0
    const-string/jumbo v0, "ECB"

    #@20
    return-object v0

    #@21
    .line 316
    :sswitch_1
    const-string/jumbo v0, "CBC"

    #@24
    return-object v0

    #@25
    .line 318
    :sswitch_2
    const-string/jumbo v0, "CTR"

    #@28
    return-object v0

    #@29
    .line 320
    :sswitch_3
    const-string/jumbo v0, "GCM"

    #@2c
    return-object v0

    #@2d
    .line 312
    nop

    #@2e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public static toKeymaster(Ljava/lang/String;)I
    .locals 3
    .param p0, "blockMode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 297
    const-string/jumbo v0, "ECB"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 298
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 299
    :cond_0
    const-string/jumbo v0, "CBC"

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 300
    const/4 v0, 0x2

    #@15
    return v0

    #@16
    .line 301
    :cond_1
    const-string/jumbo v0, "CTR"

    #@19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 302
    const/4 v0, 0x3

    #@20
    return v0

    #@21
    .line 303
    :cond_2
    const-string/jumbo v0, "GCM"

    #@24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 304
    const/16 v0, 0x20

    #@2c
    return v0

    #@2d
    .line 306
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v2, "Unsupported block mode: "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0
.end method
