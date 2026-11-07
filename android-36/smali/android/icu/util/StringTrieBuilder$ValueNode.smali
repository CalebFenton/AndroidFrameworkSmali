.class Landroid/icu/util/StringTrieBuilder$ValueNode;
.super Landroid/icu/util/StringTrieBuilder$Node;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueNode"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field protected greylist-max-o hasValue:Z

.field protected greylist-max-o value:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetFinalValue(Landroid/icu/util/StringTrieBuilder$ValueNode;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setFinalValue(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 263
    const-class v0, Landroid/icu/util/StringTrieBuilder;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 264
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$Node;-><init>()V

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "v"    # I

    .line 265
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$Node;-><init>()V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    .line 267
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    .line 268
    return-void
.end method

.method private greylist-max-o setFinalValue(I)V
    .registers 3
    .param p1, "v"    # I

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    .line 276
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    .line 277
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .registers 7
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "sValue"    # I

    .line 299
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p3, v0, :cond_10

    .line 303
    invoke-static {p1, p2, p3, p4}, Landroid/icu/util/StringTrieBuilder;->-$$Nest$mcreateSuffixNode(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object v0

    .line 304
    .local v0, "node":Landroid/icu/util/StringTrieBuilder$ValueNode;
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-virtual {v0, v1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    .line 305
    return-object v0

    .line 300
    .end local v0    # "node":Landroid/icu/util/StringTrieBuilder$ValueNode;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicate string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 288
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 289
    return v0

    .line 291
    :cond_4
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 292
    return v2

    .line 294
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/icu/util/StringTrieBuilder$ValueNode;

    .line 295
    .local v1, "o":Landroid/icu/util/StringTrieBuilder$ValueNode;
    iget-boolean v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    iget-boolean v4, v1, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-ne v3, v4, :cond_20

    iget-boolean v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v3, :cond_1f

    iget v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    iget v4, v1, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    if-ne v3, v4, :cond_20

    :cond_1f
    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 280
    const v0, 0x111111

    .line 281
    .local v0, "hash":I
    iget-boolean v1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v1, :cond_d

    .line 282
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    add-int v0, v1, v2

    .line 284
    :cond_d
    return v0
.end method

.method public final greylist-max-o setValue(I)V
    .registers 3
    .param p1, "v"    # I

    .line 270
    nop

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    .line 272
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    .line 273
    return-void
.end method

.method public greylist-max-o write(Landroid/icu/util/StringTrieBuilder;)V
    .registers 4
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    .line 309
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->offset:I

    .line 310
    return-void
.end method
