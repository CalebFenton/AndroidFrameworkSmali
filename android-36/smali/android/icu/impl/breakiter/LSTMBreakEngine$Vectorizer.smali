.class abstract Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;
.super Ljava/lang/Object;
.source "LSTMBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/breakiter/LSTMBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Vectorizer"
.end annotation


# instance fields
.field private blacklist fDict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


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

    .line 159
    .local p2, "dict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;->fDict:Ljava/util/Map;

    .line 161
    return-void
.end method


# virtual methods
.method protected blacklist getIndex(Ljava/lang/String;)I
    .registers 4
    .param p1, "token"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;->fDict:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 166
    .local v0, "res":Ljava/lang/Integer;
    if-nez v0, :cond_11

    iget-object v1, p0, Landroid/icu/impl/breakiter/LSTMBreakEngine$Vectorizer;->fDict:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_15
    return v1
.end method

.method public abstract blacklist vectorize(Ljava/text/CharacterIterator;IILjava/util/List;Ljava/util/List;)V
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
.end method
