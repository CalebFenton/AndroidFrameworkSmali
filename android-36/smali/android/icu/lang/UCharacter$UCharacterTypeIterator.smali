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
.field private static final greylist-max-o MASK_TYPE:Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;


# instance fields
.field private greylist-max-o range:Landroid/icu/impl/Trie2$Range;

.field private greylist-max-o trieIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 5409
    new-instance v0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;-><init>(Landroid/icu/lang/UCharacter-IA;)V

    sput-object v0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->MASK_TYPE:Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 5376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5377
    invoke-virtual {p0}, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->reset()V

    .line 5378
    return-void
.end method


# virtual methods
.method public whitelist test-api next(Landroid/icu/util/RangeValueIterator$Element;)Z
    .registers 4
    .param p1, "element"    # Landroid/icu/util/RangeValueIterator$Element;

    .line 5383
    iget-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->trieIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->trieIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iput-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->range:Landroid/icu/impl/Trie2$Range;

    iget-boolean v0, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v0, :cond_2b

    .line 5384
    iget-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->range:Landroid/icu/impl/Trie2$Range;

    iget v0, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iput v0, p1, Landroid/icu/util/RangeValueIterator$Element;->start:I

    .line 5385
    iget-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->range:Landroid/icu/impl/Trie2$Range;

    iget v0, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/icu/util/RangeValueIterator$Element;->limit:I

    .line 5386
    iget-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->range:Landroid/icu/impl/Trie2$Range;

    iget v0, v0, Landroid/icu/impl/Trie2$Range;->value:I

    iput v0, p1, Landroid/icu/util/RangeValueIterator$Element;->value:I

    .line 5387
    return v1

    .line 5389
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api reset()V
    .registers 3

    .line 5396
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    iget-object v0, v0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    sget-object v1, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->MASK_TYPE:Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;

    invoke-virtual {v0, v1}, Landroid/icu/impl/Trie2_16;->iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;->trieIterator:Ljava/util/Iterator;

    .line 5397
    return-void
.end method
