.class Landroid/icu/text/TransliteratorParser$RuleArray;
.super Landroid/icu/text/TransliteratorParser$RuleBody;
.source "TransliteratorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuleArray"
.end annotation


# instance fields
.field array:[Ljava/lang/String;

.field i:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "array"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 330
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/text/TransliteratorParser$RuleBody;-><init>(Landroid/icu/text/TransliteratorParser$RuleBody;)V

    #@4
    iput-object p1, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->array:[Ljava/lang/String;

    #@6
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    #@9
    return-void
.end method


# virtual methods
.method public handleNextLine()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 332
    iget v0, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    #@2
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->array:[Ljava/lang/String;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->array:[Ljava/lang/String;

    #@9
    iget v1, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    #@b
    add-int/lit8 v2, v1, 0x1

    #@d
    iput v2, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    #@f
    aget-object v0, v0, v1

    #@11
    :goto_0
    return-object v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 335
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    #@3
    .line 334
    return-void
.end method
