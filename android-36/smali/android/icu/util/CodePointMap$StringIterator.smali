.class public Landroid/icu/util/CodePointMap$StringIterator;
.super Ljava/lang/Object;
.source "CodePointMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StringIterator"
.end annotation


# instance fields
.field protected blacklist c:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected blacklist s:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected blacklist sIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/icu/util/CodePointMap;

.field protected blacklist value:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/icu/util/CodePointMap;Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/icu/util/CodePointMap;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "sIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    iput-object p1, p0, Landroid/icu/util/CodePointMap$StringIterator;->this$0:Landroid/icu/util/CodePointMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Landroid/icu/util/CodePointMap$StringIterator;->s:Ljava/lang/CharSequence;

    .line 212
    iput p3, p0, Landroid/icu/util/CodePointMap$StringIterator;->sIndex:I

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->c:I

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->value:I

    .line 215
    return-void
.end method


# virtual methods
.method public final blacklist getCodePoint()I
    .registers 2

    .line 272
    iget v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->c:I

    return v0
.end method

.method public final blacklist getIndex()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->sIndex:I

    return v0
.end method

.method public final blacklist getValue()I
    .registers 2

    .line 278
    iget v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->value:I

    return v0
.end method

.method public blacklist next()Z
    .registers 3

    .line 239
    iget v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->sIndex:I

    iget-object v1, p0, Landroid/icu/util/CodePointMap$StringIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 240
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_c
    iget-object v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/util/CodePointMap$StringIterator;->sIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->c:I

    .line 243
    iget v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->sIndex:I

    iget v1, p0, Landroid/icu/util/CodePointMap$StringIterator;->c:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->sIndex:I

    .line 244
    iget-object v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->this$0:Landroid/icu/util/CodePointMap;

    iget v1, p0, Landroid/icu/util/CodePointMap$StringIterator;->c:I

    invoke-virtual {v0, v1}, Landroid/icu/util/CodePointMap;->get(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->value:I

    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist previous()Z
    .registers 3

    .line 257
    iget v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->sIndex:I

    if-gtz v0, :cond_6

    .line 258
    const/4 v0, 0x0

    return v0

    .line 260
    :cond_6
    iget-object v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/util/CodePointMap$StringIterator;->sIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->c:I

    .line 261
    iget v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->sIndex:I

    iget v1, p0, Landroid/icu/util/CodePointMap$StringIterator;->c:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->sIndex:I

    .line 262
    iget-object v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->this$0:Landroid/icu/util/CodePointMap;

    iget v1, p0, Landroid/icu/util/CodePointMap$StringIterator;->c:I

    invoke-virtual {v0, v1}, Landroid/icu/util/CodePointMap;->get(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->value:I

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist reset(Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "sIndex"    # I

    .line 224
    iput-object p1, p0, Landroid/icu/util/CodePointMap$StringIterator;->s:Ljava/lang/CharSequence;

    .line 225
    iput p2, p0, Landroid/icu/util/CodePointMap$StringIterator;->sIndex:I

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->c:I

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/CodePointMap$StringIterator;->value:I

    .line 228
    return-void
.end method
