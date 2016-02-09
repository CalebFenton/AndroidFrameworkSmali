.class final Landroid/icu/lang/UCharacter$UCharacterTypeIterator;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Landroid/icu/util/RangeValueIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UCharacter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UCharacterTypeIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;
    }
.end annotation


# static fields
.field private static final MASK_TYPE:Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;


# instance fields
.field private range:Landroid/icu/impl/Trie2$Range;

.field private trieIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 5519
    new-instance v0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;-><init>(Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;)V

    #@6
    sput-object v0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->MASK_TYPE:Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;

    #@8
    .line 5488
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 5490
    invoke-virtual {p0}, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->reset()V

    #@6
    .line 5489
    return-void
.end method


# virtual methods
.method public next(Landroid/icu/util/RangeValueIterator$Element;)Z
    .locals 1
    .param p1, "element"    # Landroid/icu/util/RangeValueIterator$Element;

    #@0
    .prologue
    .line 5495
    iget-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->trieIterator:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->trieIterator:Ljava/util/Iterator;

    #@a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/icu/impl/Trie2$Range;

    #@10
    iput-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->range:Landroid/icu/impl/Trie2$Range;

    #@12
    iget-boolean v0, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 5501
    :cond_0
    const/4 v0, 0x0

    #@17
    return v0

    #@18
    .line 5496
    :cond_1
    iget-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->range:Landroid/icu/impl/Trie2$Range;

    #@1a
    iget v0, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@1c
    iput v0, p1, Landroid/icu/util/RangeValueIterator$Element;->start:I

    #@1e
    .line 5497
    iget-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->range:Landroid/icu/impl/Trie2$Range;

    #@20
    iget v0, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    iput v0, p1, Landroid/icu/util/RangeValueIterator$Element;->limit:I

    #@26
    .line 5498
    iget-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->range:Landroid/icu/impl/Trie2$Range;

    #@28
    iget v0, v0, Landroid/icu/impl/Trie2$Range;->value:I

    #@2a
    iput v0, p1, Landroid/icu/util/RangeValueIterator$Element;->value:I

    #@2c
    .line 5499
    const/4 v0, 0x1

    #@2d
    return v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 5507
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@2
    iget-object v0, v0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    #@4
    sget-object v1, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->MASK_TYPE:Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;

    #@6
    invoke-virtual {v0, v1}, Landroid/icu/impl/Trie2_16;->iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->trieIterator:Ljava/util/Iterator;

    #@c
    .line 5506
    return-void
.end method
