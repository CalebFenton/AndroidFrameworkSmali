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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected hasValue:Z

.field protected value:I


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/StringTrieBuilder$ValueNode;I)V
    .locals 0
    .param p1, "v"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setFinalValue(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->-assertionsDisabled:Z

    #@b
    .line 262
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 263
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$Node;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "v"    # I

    #@0
    .prologue
    .line 264
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$Node;-><init>()V

    #@3
    .line 265
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@6
    .line 266
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@8
    .line 264
    return-void
.end method

.method private setFinalValue(I)V
    .locals 1
    .param p1, "v"    # I

    #@0
    .prologue
    .line 274
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@3
    .line 275
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@5
    .line 273
    return-void
.end method


# virtual methods
.method public add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 3
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "sValue"    # I

    #@0
    .prologue
    .line 298
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v1

    #@4
    if-ne p3, v1, :cond_0

    #@6
    .line 299
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Duplicate string."

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 302
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/icu/util/StringTrieBuilder;->-wrap1(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@12
    move-result-object v0

    #@13
    .line 303
    .local v0, "node":Landroid/icu/util/StringTrieBuilder$ValueNode;
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@15
    invoke-virtual {v0, v1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    #@18
    .line 304
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 287
    if-ne p0, p1, :cond_0

    #@4
    .line 288
    return v1

    #@5
    .line 290
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_1

    #@b
    .line 291
    return v2

    #@c
    :cond_1
    move-object v0, p1

    #@d
    .line 293
    check-cast v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@f
    .line 294
    .local v0, "o":Landroid/icu/util/StringTrieBuilder$ValueNode;
    iget-boolean v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@11
    iget-boolean v4, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@13
    if-ne v3, v4, :cond_3

    #@15
    iget-boolean v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@17
    if-eqz v3, :cond_2

    #@19
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@1b
    iget v4, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    :cond_2
    :goto_0
    return v1

    #@20
    :cond_3
    move v1, v2

    #@21
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 279
    const v0, 0x111111

    #@3
    .line 280
    .local v0, "hash":I
    iget-boolean v1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 281
    const v1, 0x2777775

    #@a
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@c
    add-int v0, v1, v2

    #@e
    .line 283
    :cond_0
    return v0
.end method

.method public final setValue(I)V
    .locals 2
    .param p1, "v"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 269
    sget-boolean v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->-assertionsDisabled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    if-nez v0, :cond_1

    #@c
    new-instance v0, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v0

    #@12
    :cond_0
    move v0, v1

    #@13
    goto :goto_0

    #@14
    .line 270
    :cond_1
    iput-boolean v1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    #@16
    .line 271
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@18
    .line 268
    return-void
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 2
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    #@0
    .prologue
    .line 308
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->offset:I

    #@9
    .line 307
    return-void
.end method
