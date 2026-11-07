.class Landroid/icu/impl/UCharacterProperty$16;
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


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/impl/UCharacterProperty;


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

    .line 774
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$16;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method blacklist getMaxValue(I)I
    .registers 3
    .param p1, "which"    # I

    .line 789
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$16;->this$0:Landroid/icu/impl/UCharacterProperty;

    iget v0, v0, Landroid/icu/impl/UCharacterProperty;->m_maxValuesOther_:I

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method blacklist getValue(I)I
    .registers 4
    .param p1, "c"    # I

    .line 780
    move v0, p1

    .line 782
    .local v0, "c4":I
    const v1, 0x10ffff

    if-gt v0, v1, :cond_8

    .line 783
    shr-int/lit8 v0, v0, 0x4

    .line 785
    :cond_8
    iget-object v1, p0, Landroid/icu/impl/UCharacterProperty$16;->this$0:Landroid/icu/impl/UCharacterProperty;

    iget-object v1, v1, Landroid/icu/impl/UCharacterProperty;->m_blockTrie_:Landroid/icu/util/CodePointTrie;

    invoke-virtual {v1, v0}, Landroid/icu/util/CodePointTrie;->get(I)I

    move-result v1

    return v1
.end method
