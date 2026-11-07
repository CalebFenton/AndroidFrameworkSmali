.class Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormInertBinaryProperty"
.end annotation


# instance fields
.field blacklist which:I


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;II)V
    .registers 4
    .param p2, "source"    # I
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    .line 378
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;->which:I

    .line 379
    return-void
.end method


# virtual methods
.method blacklist contains(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 382
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;->which:I

    add-int/lit8 v0, v0, -0x25

    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getN2WithImpl(I)Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->isInert(I)Z

    move-result v0

    return v0
.end method
