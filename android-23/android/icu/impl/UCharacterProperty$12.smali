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


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "this$0_1"    # Landroid/icu/impl/UCharacterProperty;
    .param p3, "$anonymous0"    # I

    #@0
    .prologue
    .line 376
    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$12;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0, p1, p3}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@5
    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 8
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 378
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;

    #@5
    move-result-object v3

    #@6
    iget-object v0, v3, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@8
    .line 379
    .local v0, "kcf":Landroid/icu/impl/Normalizer2Impl;
    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 380
    .local v1, "src":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    .line 382
    .local v7, "dest":Ljava/lang/StringBuilder;
    new-instance v6, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@13
    const/4 v3, 0x5

    #@14
    invoke-direct {v6, v0, v7, v3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    #@17
    .line 383
    .local v6, "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1a
    move-result v3

    #@1b
    move v4, v2

    #@1c
    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    #@1f
    .line 384
    invoke-static {v7, v1}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    :goto_0
    return v2

    #@26
    :cond_0
    move v2, v5

    #@27
    goto :goto_0
.end method
