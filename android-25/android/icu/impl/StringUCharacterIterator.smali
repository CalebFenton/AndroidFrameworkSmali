.class public final Landroid/icu/impl/StringUCharacterIterator;
.super Landroid/icu/text/UCharacterIterator;
.source "StringUCharacterIterator.java"


# instance fields
.field private m_currentIndex_:I

.field private m_text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    #@3
    .line 43
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@8
    .line 44
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@b
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    #@3
    .line 31
    if-nez p1, :cond_0

    #@5
    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v0

    #@b
    .line 34
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@d
    .line 35
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@10
    .line 29
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 58
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 59
    :catch_0
    move-exception v0

    #@6
    .line 60
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    #@7
    return-object v1
.end method

.method public current()I
    .locals 2

    #@0
    .prologue
    .line 70
    iget v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 71
    iget-object v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@c
    iget v1, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 73
    :cond_0
    const/4 v0, -0x1

    #@14
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@2
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getText([CI)I
    .locals 4
    .param p1, "fillIn"    # [C
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 183
    iget-object v1, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    .line 184
    .local v0, "length":I
    if-ltz p2, :cond_0

    #@9
    add-int v1, p2, v0

    #@b
    array-length v2, p1

    #@c
    if-le v1, v2, :cond_1

    #@e
    .line 185
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 187
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v3, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    #@1d
    .line 188
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public next()I
    .locals 3

    #@0
    .prologue
    .line 106
    iget v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 108
    iget-object v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@c
    iget v1, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@e
    add-int/lit8 v2, v1, 0x1

    #@10
    iput v2, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 110
    :cond_0
    const/4 v0, -0x1

    #@18
    return v0
.end method

.method public previous()I
    .locals 2

    #@0
    .prologue
    .line 124
    iget v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 125
    iget-object v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@6
    iget v1, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 127
    :cond_0
    const/4 v0, -0x1

    #@12
    return v0
.end method

.method public setIndex(I)V
    .locals 1
    .param p1, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-le p1, v0, :cond_1

    #@a
    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@c
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@f
    throw v0

    #@10
    .line 143
    :cond_1
    iput p1, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@12
    .line 138
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 210
    if-nez p1, :cond_0

    #@2
    .line 211
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 213
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/StringUCharacterIterator;->m_text_:Ljava/lang/String;

    #@a
    .line 214
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/icu/impl/StringUCharacterIterator;->m_currentIndex_:I

    #@d
    .line 208
    return-void
.end method
