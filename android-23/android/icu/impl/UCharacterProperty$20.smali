.class Landroid/icu/impl/UCharacterProperty$20;
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
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "this$0_1"    # Landroid/icu/impl/UCharacterProperty;
    .param p3, "$anonymous0"    # I

    #@0
    .prologue
    .line 530
    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$20;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0, p1, p3}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@5
    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 541
    const/4 v0, 0x5

    #@1
    return v0
.end method

.method getValue(I)I
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    .line 533
    iget-object v1, p0, Landroid/icu/impl/UCharacterProperty$20;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    const/4 v2, 0x2

    #@3
    invoke-virtual {v1, p1, v2}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    #@6
    move-result v1

    #@7
    and-int/lit16 v1, v1, 0x3e0

    #@9
    ushr-int/lit8 v0, v1, 0x5

    #@b
    .line 534
    .local v0, "gcb":I
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-get0()[I

    #@e
    move-result-object v1

    #@f
    array-length v1, v1

    #@10
    if-ge v0, v1, :cond_0

    #@12
    .line 535
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-get0()[I

    #@15
    move-result-object v1

    #@16
    aget v1, v1, v0

    #@18
    return v1

    #@19
    .line 537
    :cond_0
    const/4 v1, 0x0

    #@1a
    return v1
.end method
