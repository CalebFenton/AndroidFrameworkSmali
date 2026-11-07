.class Landroid/icu/impl/UCharacterProperty$MCMBinaryProperty;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MCMBinaryProperty"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 449
    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    .line 450
    return-void
.end method


# virtual methods
.method blacklist contains(I)Z
    .registers 5
    .param p1, "c"    # I

    .line 453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-$$Nest$sfgetMODIFIER_COMBINING_MARK()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_21

    .line 454
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-$$Nest$sfgetMODIFIER_COMBINING_MARK()[I

    move-result-object v1

    aget v1, v1, v0

    if-ge p1, v1, :cond_12

    return v2

    .line 455
    :cond_12
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-$$Nest$sfgetMODIFIER_COMBINING_MARK()[I

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ge p1, v1, :cond_1e

    const/4 v1, 0x1

    return v1

    .line 453
    :cond_1e
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 457
    .end local v0    # "i":I
    :cond_21
    return v2
.end method
