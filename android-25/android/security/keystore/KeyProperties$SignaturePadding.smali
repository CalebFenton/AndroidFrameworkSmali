.class abstract Landroid/security/keystore/KeyProperties$SignaturePadding;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SignaturePadding"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static allToKeymaster([Ljava/lang/String;)[I
    .locals 3
    .param p0, "paddings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 485
    if-eqz p0, :cond_0

    #@2
    array-length v2, p0

    #@3
    if-nez v2, :cond_1

    #@5
    .line 486
    :cond_0
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    #@7
    return-object v2

    #@8
    .line 488
    :cond_1
    array-length v2, p0

    #@9
    new-array v1, v2, [I

    #@b
    .line 489
    .local v1, "result":[I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@d
    if-ge v0, v2, :cond_2

    #@f
    .line 490
    aget-object v2, p0, v0

    #@11
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$SignaturePadding;->toKeymaster(Ljava/lang/String;)I

    #@14
    move-result v2

    #@15
    aput v2, v1, v0

    #@17
    .line 489
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 492
    :cond_2
    return-object v1
.end method

.method static fromKeymaster(I)Ljava/lang/String;
    .locals 3
    .param p0, "padding"    # I

    #@0
    .prologue
    .line 473
    packed-switch p0, :pswitch_data_0

    #@3
    .line 479
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported signature padding: "

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
    .line 475
    :pswitch_1
    const-string/jumbo v0, "PKCS1"

    #@20
    return-object v0

    #@21
    .line 477
    :pswitch_2
    const-string/jumbo v0, "PSS"

    #@24
    return-object v0

    #@25
    .line 473
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static toKeymaster(Ljava/lang/String;)I
    .locals 3
    .param p0, "padding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 460
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "PKCS1"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 462
    const/4 v0, 0x5

    #@10
    return v0

    #@11
    .line 460
    :cond_0
    const-string/jumbo v1, "PSS"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 464
    const/4 v0, 0x3

    #@1b
    return v0

    #@1c
    .line 466
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Unsupported signature padding scheme: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 466
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0
.end method
