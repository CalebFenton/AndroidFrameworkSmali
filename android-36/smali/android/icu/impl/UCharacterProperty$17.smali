.class Landroid/icu/impl/UCharacterProperty$17;
.super Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;
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

    .line 792
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method blacklist getValue(I)I
    .registers 3
    .param p1, "c"    # I

    .line 795
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v0

    return v0
.end method
