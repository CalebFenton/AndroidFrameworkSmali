.class Landroid/icu/impl/UCharacterProperty$IntProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntProperty"
.end annotation


# instance fields
.field blacklist column:I

.field blacklist mask:I

.field blacklist shift:I

.field final synthetic blacklist this$0:Landroid/icu/impl/UCharacterProperty;


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

    .line 713
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    .line 715
    const/4 p1, 0x0

    iput p1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    .line 716
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;III)V
    .registers 5
    .param p2, "column"    # I
    .param p3, "mask"    # I
    .param p4, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 708
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    .line 710
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    .line 711
    iput p4, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    .line 712
    return-void
.end method


# virtual methods
.method blacklist getMaxValue(I)I
    .registers 4
    .param p1, "which"    # I

    .line 725
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result v0

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    and-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    ushr-int/2addr v0, v1

    return v0
.end method

.method final blacklist getSource()I
    .registers 2

    .line 718
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    if-nez v0, :cond_7

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x2

    :goto_8
    return v0
.end method

.method blacklist getValue(I)I
    .registers 4
    .param p1, "c"    # I

    .line 722
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    and-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    ushr-int/2addr v0, v1

    return v0
.end method
