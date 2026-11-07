.class Landroid/icu/impl/UCharacterProperty$3;
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

    .line 485
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method blacklist contains(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 489
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 490
    .local v0, "impl":Landroid/icu/impl/Normalizer2Impl;
    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->isCompNo(I)Z

    move-result v1

    return v1
.end method
