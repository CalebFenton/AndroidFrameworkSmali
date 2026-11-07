.class Landroid/icu/impl/breakiter/LSTMBreakEngine$GraphemeClusterVectorizer;
.super Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;
.source "LSTMBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/breakiter/LSTMBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GraphemeClusterVectorizer"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/breakiter/LSTMBreakEngine;Ljava/util/Map;)V
    .registers 3
    .param p1, "this$0"    # Landroid/icu/impl/breakiter/LSTMBreakEngine;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p2, "dict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;-><init>(Landroid/icu/impl/breakiter/LSTMBreakEngine;Ljava/util/Map;)V

    .line 191
    return-void
.end method

.method private blacklist substring(Ljava/text/CharacterIterator;II)Ljava/lang/String;
    .registers 8
    .param p1, "text"    # Ljava/text/CharacterIterator;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I

    .line 194
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 195
    .local v0, "saved":I
    invoke-interface {p1, p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v2

    .line 198
    .local v2, "c":C
    :goto_10
    const v3, 0xffff

    if-eq v2, v3, :cond_23

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    if-ge v3, p3, :cond_23

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    goto :goto_10

    .line 202
    .end local v2    # "c":C
    :cond_23
    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist vectorize(Ljava/text/CharacterIterator;IILjava/util/List;Ljava/util/List;)V
    .registers 12
    .param p1, "text"    # Ljava/text/CharacterIterator;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/CharacterIterator;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p4, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "indicies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/icu/text/BreakIterator;->getCharacterInstance()Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 209
    .local v0, "iter":Landroid/icu/text/BreakIterator;
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 210
    invoke-virtual {v0, p2}, Landroid/icu/text/BreakIterator;->next(I)I

    move-result v1

    .line 211
    .local v1, "last":I
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->next()I

    move-result v2

    .local v2, "curr":I
    :goto_f
    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    if-gt v2, p3, :cond_30

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-direct {p0, p1, v1, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine$GraphemeClusterVectorizer;->substring(Ljava/text/CharacterIterator;II)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "segment":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/icu/impl/breakiter/LSTMBreakEngine$GraphemeClusterVectorizer;->getIndex(Ljava/lang/String;)I

    move-result v4

    .line 215
    .local v4, "index":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    move v1, v2

    .line 211
    .end local v3    # "segment":Ljava/lang/String;
    .end local v4    # "index":I
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->next()I

    move-result v2

    goto :goto_f

    .line 218
    .end local v2    # "curr":I
    :cond_30
    return-void
.end method
