.class Landroid/icu/impl/UCharacterProperty$10;
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

    .line 574
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method blacklist contains(I)Z
    .registers 5
    .param p1, "c"    # I

    .line 578
    const/16 v0, 0x66

    const/4 v1, 0x1

    if-gt p1, v0, :cond_11

    const/16 v0, 0x41

    if-lt p1, v0, :cond_11

    const/16 v0, 0x46

    if-le p1, v0, :cond_25

    const/16 v0, 0x61

    if-ge p1, v0, :cond_25

    :cond_11
    const v0, 0xff21

    if-lt p1, v0, :cond_26

    const v0, 0xff46

    if-gt p1, v0, :cond_26

    const v0, 0xff26

    if-le p1, v0, :cond_25

    const v0, 0xff41

    if-lt p1, v0, :cond_26

    .line 582
    :cond_25
    return v1

    .line 584
    :cond_26
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1
.end method
