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
.field blacklist column:I

.field blacklist mask:I

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

    .line 337
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    .line 339
    const/4 p1, 0x0

    iput p1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    .line 340
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;II)V
    .registers 4
    .param p2, "column"    # I
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 333
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    .line 335
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    .line 336
    return-void
.end method


# virtual methods
.method blacklist contains(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 346
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method final blacklist getSource()I
    .registers 2

    .line 342
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    if-nez v0, :cond_7

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x2

    :goto_8
    return v0
.end method
