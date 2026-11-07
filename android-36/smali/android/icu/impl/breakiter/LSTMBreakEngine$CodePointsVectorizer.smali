.class Landroid/icu/impl/breakiter/LSTMBreakEngine$CodePointsVectorizer;
.super Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;
.source "LSTMBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/breakiter/LSTMBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CodePointsVectorizer"
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

    .line 173
    .local p2, "dict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;-><init>(Landroid/icu/impl/breakiter/LSTMBreakEngine;Ljava/util/Map;)V

    .line 174
    return-void
.end method


# virtual methods
.method public blacklist vectorize(Ljava/text/CharacterIterator;IILjava/util/List;Ljava/util/List;)V
    .registers 8
    .param p1, "fIter"    # Ljava/text/CharacterIterator;
    .param p2, "rangeStart"    # I
    .param p3, "rangeEnd"    # I
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

    .line 178
    .local p4, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "indicies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1, p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 179
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    .line 180
    .local v0, "c":C
    :goto_7
    const v1, 0xffff

    if-eq v0, v1, :cond_31

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-ge v1, p3, :cond_31

    .line 182
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/icu/impl/breakiter/LSTMBreakEngine$CodePointsVectorizer;->getIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_7

    .line 185
    .end local v0    # "c":C
    :cond_31
    return-void
.end method
