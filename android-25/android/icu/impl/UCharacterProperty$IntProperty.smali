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
.field column:I

.field mask:I

.field shift:I

.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "source"    # I

    #@0
    .prologue
    .line 435
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 436
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    #@7
    .line 437
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    #@a
    .line 435
    return-void
.end method

.method constructor <init>(Landroid/icu/impl/UCharacterProperty;III)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "column"    # I
    .param p3, "mask"    # I
    .param p4, "shift"    # I

    #@0
    .prologue
    .line 430
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 431
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    #@7
    .line 432
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    #@9
    .line 433
    iput p4, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    #@b
    .line 430
    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 447
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    #@4
    invoke-virtual {v0, v1}, Landroid/icu/impl/UCharacterProperty;->getMaxValues(I)I

    #@7
    move-result v0

    #@8
    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    #@a
    and-int/2addr v0, v1

    #@b
    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    #@d
    ushr-int/2addr v0, v1

    #@e
    return v0
.end method

.method final getSource()I
    .locals 1

    #@0
    .prologue
    .line 440
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    #@2
    if-nez v0, :cond_0

    #@4
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x2

    #@8
    goto :goto_0
.end method

.method getValue(I)I
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    #@7
    move-result v0

    #@8
    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    #@a
    and-int/2addr v0, v1

    #@b
    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    #@d
    ushr-int/2addr v0, v1

    #@e
    return v0
.end method
