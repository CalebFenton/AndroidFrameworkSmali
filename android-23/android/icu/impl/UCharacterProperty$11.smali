.class Landroid/icu/impl/UCharacterProperty$11;
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
    .line 350
    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$11;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0, p1, p3}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@5
    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 7
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 352
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@5
    move-result-object v5

    #@6
    iget-object v5, v5, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@8
    invoke-virtual {v5, p1}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 353
    .local v2, "nfd":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@e
    .line 355
    invoke-virtual {v2, v4}, Ljava/lang/String;->codePointAt(I)I

    #@11
    move-result p1

    #@12
    .line 356
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    #@15
    move-result v5

    #@16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@19
    move-result v6

    #@1a
    if-eq v5, v6, :cond_0

    #@1c
    .line 358
    const/4 p1, -0x1

    #@1d
    .line 363
    :cond_0
    if-ltz p1, :cond_3

    #@1f
    .line 365
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@21
    .line 366
    .local v0, "csp":Landroid/icu/impl/UCaseProps;
    sget-object v5, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@23
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@26
    .line 367
    sget-object v5, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@28
    invoke-virtual {v0, p1, v5, v4}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    #@2b
    move-result v5

    #@2c
    if-ltz v5, :cond_2

    #@2e
    :goto_0
    return v3

    #@2f
    .line 360
    .end local v0    # "csp":Landroid/icu/impl/UCaseProps;
    :cond_1
    if-gez p1, :cond_0

    #@31
    .line 361
    return v4

    #@32
    .restart local v0    # "csp":Landroid/icu/impl/UCaseProps;
    :cond_2
    move v3, v4

    #@33
    .line 367
    goto :goto_0

    #@34
    .line 370
    .end local v0    # "csp":Landroid/icu/impl/UCaseProps;
    :cond_3
    invoke-static {v2, v3}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 371
    .local v1, "folded":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_4

    #@3e
    :goto_1
    return v4

    #@3f
    :cond_4
    move v4, v3

    #@40
    goto :goto_1
.end method
