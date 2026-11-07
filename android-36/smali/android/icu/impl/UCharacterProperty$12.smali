.class Landroid/icu/impl/UCharacterProperty$12;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "source"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 619
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method blacklist contains(I)Z
    .registers 10
    .param p1, "c"    # I

    .line 622
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v1, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 623
    .local v1, "kcf":Landroid/icu/impl/Normalizer2Impl;
    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "src":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    .local v0, "dest":Ljava/lang/StringBuilder;
    new-instance v7, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    const/4 v3, 0x5

    invoke-direct {v7, v1, v0, v3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 627
    .local v7, "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    .line 628
    invoke-static {v0, v2}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method
