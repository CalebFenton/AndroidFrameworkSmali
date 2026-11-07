.class Landroid/icu/impl/UCharacterProperty$MathCompatBinaryProperty;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MathCompatBinaryProperty"
.end annotation


# instance fields
.field blacklist which:I


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .registers 4
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 428
    const/16 v0, 0x11

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    .line 429
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$MathCompatBinaryProperty;->which:I

    .line 430
    return-void
.end method


# virtual methods
.method blacklist contains(I)Z
    .registers 8
    .param p1, "c"    # I

    .line 433
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$MathCompatBinaryProperty;->which:I

    const/16 v1, 0x4a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_27

    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-$$Nest$sfgetID_COMPAT_MATH_CONTINUE()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_27

    .line 435
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-$$Nest$sfgetID_COMPAT_MATH_CONTINUE()[I

    move-result-object v1

    aget v1, v1, v0

    if-ge p1, v1, :cond_19

    return v3

    .line 436
    :cond_19
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-$$Nest$sfgetID_COMPAT_MATH_CONTINUE()[I

    move-result-object v1

    add-int/lit8 v4, v0, 0x1

    aget v1, v1, v4

    if-ge p1, v1, :cond_24

    return v2

    .line 434
    :cond_24
    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    .line 439
    .end local v0    # "i":I
    :cond_27
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-$$Nest$sfgetID_COMPAT_MATH_START()[I

    move-result-object v0

    aget v0, v0, v3

    if-ge p1, v0, :cond_30

    return v3

    .line 440
    :cond_30
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-$$Nest$sfgetID_COMPAT_MATH_START()[I

    move-result-object v0

    array-length v1, v0

    move v4, v3

    :goto_36
    if-ge v4, v1, :cond_40

    aget v5, v0, v4

    .line 441
    .local v5, "startChar":I
    if-ne p1, v5, :cond_3d

    return v2

    .line 440
    .end local v5    # "startChar":I
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 443
    :cond_40
    return v3
.end method
