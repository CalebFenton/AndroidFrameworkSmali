.class Landroid/icu/impl/UCharacterProperty$23;
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

    .line 843
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$23;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method blacklist getMaxValue(I)I
    .registers 3
    .param p1, "which"    # I

    .line 862
    const/4 v0, 0x5

    return v0
.end method

.method blacklist getValue(I)I
    .registers 5
    .param p1, "c"    # I

    .line 849
    const v0, 0xffff

    const/4 v1, 0x0

    if-le p1, v0, :cond_7

    .line 850
    return v1

    .line 853
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$23;->this$0:Landroid/icu/impl/UCharacterProperty;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x3e0

    ushr-int/lit8 v0, v0, 0x5

    .line 854
    .local v0, "gcb":I
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-$$Nest$sfgetgcbToHst()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_20

    .line 855
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-$$Nest$sfgetgcbToHst()[I

    move-result-object v1

    aget v1, v1, v0

    return v1

    .line 857
    :cond_20
    return v1
.end method
