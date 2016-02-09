.class Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinaryProperty"
.end annotation


# instance fields
.field column:I

.field mask:I

.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "source"    # I

    #@0
    .prologue
    .line 194
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 195
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    #@7
    .line 196
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    #@a
    .line 194
    return-void
.end method

.method constructor <init>(Landroid/icu/impl/UCharacterProperty;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "column"    # I
    .param p3, "mask"    # I

    #@0
    .prologue
    .line 190
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 191
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    #@7
    .line 192
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    #@9
    .line 190
    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 203
    iget-object v1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@3
    iget v2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    #@5
    invoke-virtual {v1, p1, v2}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    #@8
    move-result v1

    #@9
    iget v2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    #@b
    and-int/2addr v1, v2

    #@c
    if-eqz v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method final getSource()I
    .locals 1

    #@0
    .prologue
    .line 199
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    #@2
    if-nez v0, :cond_0

    #@4
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x2

    #@8
    goto :goto_0
.end method
