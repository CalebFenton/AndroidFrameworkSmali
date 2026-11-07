.class Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
.super Ljava/lang/Object;
.source "ElemNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/ElemNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NumberFormatStringTokenizer"
.end annotation


# instance fields
.field private greylist currentPosition:I

.field private greylist maxPosition:I

.field private greylist str:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/ElemNumber;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2026
    iput-object p2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    .line 2027
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    return-void
.end method


# virtual methods
.method public greylist countTokens()I
    .registers 5

    .line 2130
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    const/4 v1, 0x0

    .line 2132
    :goto_3
    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v0, v2, :cond_2f

    move v2, v0

    .line 2136
    :goto_8
    iget v3, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v2, v3, :cond_1b

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    .line 2137
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    if-ne v0, v2, :cond_2b

    .line 2142
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    .line 2143
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_2b

    add-int/lit8 v2, v2, 0x1

    :cond_2b
    move v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2f
    return v1
.end method

.method public greylist hasMoreTokens()Z
    .registers 2

    .line 2114
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    iget p0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-lt v0, p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isLetterOrDigitAhead()Z
    .registers 3

    .line 2078
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    .line 2080
    :goto_2
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_17

    .line 2082
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public greylist nextIsSep()Z
    .registers 2

    .line 2099
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    iget p0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public greylist nextToken()Ljava/lang/String;
    .registers 4

    .line 2048
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_3e

    .line 2055
    :goto_6
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    .line 2056
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2058
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    goto :goto_6

    .line 2061
    :cond_1f
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    if-ne v0, v1, :cond_35

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    .line 2062
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_35

    .line 2064
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    .line 2067
    :cond_35
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    iget p0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2050
    :cond_3e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public greylist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 2035
    iput v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    return-void
.end method
