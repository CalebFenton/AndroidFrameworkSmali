.class Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormQuickCheckIntProperty"
.end annotation


# instance fields
.field blacklist max:I

.field blacklist which:I


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;III)V
    .registers 5
    .param p2, "source"    # I
    .param p3, "which"    # I
    .param p4, "max"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 753
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    .line 754
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    .line 755
    iput p4, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->max:I

    .line 756
    return-void
.end method


# virtual methods
.method blacklist getMaxValue(I)I
    .registers 3
    .param p1, "which"    # I

    .line 763
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->max:I

    return v0
.end method

.method blacklist getValue(I)I
    .registers 3
    .param p1, "c"    # I

    .line 759
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    add-int/lit16 v0, v0, -0x100c

    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getN2WithImpl(I)Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->getQuickCheck(I)I

    move-result v0

    return v0
.end method
