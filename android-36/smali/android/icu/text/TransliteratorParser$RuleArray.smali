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
.field blacklist array:[Ljava/lang/String;

.field blacklist i:I


# direct methods
.method public constructor blacklist <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "array"    # [Ljava/lang/String;

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/TransliteratorParser$RuleBody;-><init>(Landroid/icu/text/TransliteratorParser-IA;)V

    iput-object p1, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->array:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    return-void
.end method


# virtual methods
.method public blacklist handleNextLine()Ljava/lang/String;
    .registers 4

    .line 338
    iget v0, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->array:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->array:[Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    aget-object v0, v0, v1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    .line 343
    return-void
.end method
