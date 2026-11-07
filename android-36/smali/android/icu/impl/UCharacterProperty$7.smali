.class Landroid/icu/impl/UCharacterProperty$7;
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

    .line 544
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method blacklist contains(I)Z
    .registers 6
    .param p1, "c"    # I

    .line 548
    const/16 v0, 0x9f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_11

    .line 549
    const/16 v0, 0x9

    if-eq p1, v0, :cond_10

    const/16 v0, 0x20

    if-ne p1, v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :cond_10
    :goto_10
    return v1

    .line 552
    :cond_11
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1
.end method
