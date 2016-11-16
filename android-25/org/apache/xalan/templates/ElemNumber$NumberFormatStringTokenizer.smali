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
.field private currentPosition:I

.field private maxPosition:I

.field private str:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/xalan/templates/ElemNumber;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemNumber;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xalan/templates/ElemNumber;
    .param p2, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2024
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->this$0:Lorg/apache/xalan/templates/ElemNumber;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2026
    iput-object p2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    #@7
    .line 2027
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    #@d
    .line 2024
    return-void
.end method


# virtual methods
.method public countTokens()I
    .locals 4

    #@0
    .prologue
    .line 2129
    const/4 v0, 0x0

    #@1
    .line 2130
    .local v0, "count":I
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@3
    .line 2132
    .local v1, "currpos":I
    :goto_0
    iget v3, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    #@5
    if-ge v1, v3, :cond_2

    #@7
    .line 2134
    move v2, v1

    #@8
    .line 2136
    .local v2, "start":I
    :goto_1
    iget v3, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    #@a
    if-ge v1, v3, :cond_0

    #@c
    .line 2137
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    #@e
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v3

    #@12
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@15
    move-result v3

    #@16
    .line 2136
    if-eqz v3, :cond_0

    #@18
    .line 2139
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_1

    #@1b
    .line 2142
    :cond_0
    if-ne v2, v1, :cond_1

    #@1d
    .line 2143
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    #@1f
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v3

    #@23
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_1

    #@29
    .line 2145
    add-int/lit8 v1, v1, 0x1

    #@2b
    .line 2148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2151
    .end local v2    # "start":I
    :cond_2
    return v0
.end method

.method public hasMoreTokens()Z
    .locals 2

    #@0
    .prologue
    .line 2114
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@2
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public isLetterOrDigitAhead()Z
    .locals 2

    #@0
    .prologue
    .line 2078
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@2
    .line 2080
    .local v0, "pos":I
    :goto_0
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 2082
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v1

    #@c
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 2083
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 2085
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 2088
    :cond_1
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public nextIsSep()Z
    .locals 2

    #@0
    .prologue
    .line 2099
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    #@2
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 2100
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 2102
    :cond_0
    const/4 v0, 0x1

    #@11
    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2048
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@2
    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 2050
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 2053
    :cond_0
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@e
    .line 2055
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@10
    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    #@12
    if-ge v1, v2, :cond_1

    #@14
    .line 2056
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    #@16
    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v1

    #@1c
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@1f
    move-result v1

    #@20
    .line 2055
    if-eqz v1, :cond_1

    #@22
    .line 2058
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    iput v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@28
    goto :goto_0

    #@29
    .line 2061
    :cond_1
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@2b
    if-ne v0, v1, :cond_2

    #@2d
    .line 2062
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    #@2f
    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_3

    #@3b
    .line 2067
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    #@3d
    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@3f
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    return-object v1

    #@44
    .line 2064
    :cond_3
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@46
    add-int/lit8 v1, v1, 0x1

    #@48
    iput v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@4a
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 2035
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    #@3
    .line 2033
    return-void
.end method
