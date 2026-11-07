.class Landroid/icu/impl/UCharacterProperty$30;
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

    .line 925
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$30;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method blacklist getMaxValue(I)I
    .registers 3
    .param p1, "which"    # I

    .line 934
    sget-object v0, Landroid/icu/lang/UCharacter$IdentifierStatus;->ALLOWED:Landroid/icu/lang/UCharacter$IdentifierStatus;

    invoke-virtual {v0}, Landroid/icu/lang/UCharacter$IdentifierStatus;->ordinal()I

    move-result v0

    return v0
.end method

.method blacklist getValue(I)I
    .registers 4
    .param p1, "c"    # I

    .line 928
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$30;->this$0:Landroid/icu/impl/UCharacterProperty;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1a

    .line 929
    .local v0, "value":I
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_10

    .line 930
    sget-object v1, Landroid/icu/lang/UCharacter$IdentifierStatus;->ALLOWED:Landroid/icu/lang/UCharacter$IdentifierStatus;

    goto :goto_12

    :cond_10
    sget-object v1, Landroid/icu/lang/UCharacter$IdentifierStatus;->RESTRICTED:Landroid/icu/lang/UCharacter$IdentifierStatus;

    :goto_12
    invoke-virtual {v1}, Landroid/icu/lang/UCharacter$IdentifierStatus;->ordinal()I

    move-result v1

    .line 929
    return v1
.end method
