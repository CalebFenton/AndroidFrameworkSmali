.class Landroid/icu/impl/UCharacterProperty$28;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
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

    .line 903
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method blacklist getMaxValue(I)I
    .registers 3
    .param p1, "which"    # I

    .line 911
    sget-object v0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->INSTANCE:Landroid/icu/impl/UCharacterProperty$LayoutProps;

    iget v0, v0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->maxInscValue:I

    return v0
.end method

.method blacklist getValue(I)I
    .registers 4
    .param p1, "c"    # I

    .line 906
    sget-object v0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->INSTANCE:Landroid/icu/impl/UCharacterProperty$LayoutProps;

    iget-object v0, v0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->inscTrie:Landroid/icu/util/CodePointTrie;

    .line 907
    .local v0, "trie":Landroid/icu/util/CodePointTrie;
    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/icu/util/CodePointTrie;->get(I)I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method
