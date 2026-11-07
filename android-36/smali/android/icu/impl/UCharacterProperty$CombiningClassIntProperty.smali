.class Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CombiningClassIntProperty"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .registers 3
    .param p2, "source"    # I
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

    .line 741
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    .line 742
    return-void
.end method


# virtual methods
.method blacklist getMaxValue(I)I
    .registers 3
    .param p1, "which"    # I

    .line 745
    const/16 v0, 0xff

    return v0
.end method
