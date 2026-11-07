.class public Landroid/graphics/pdf/models/jni/MatchRects;
.super Landroid/graphics/pdf/models/jni/ListOfList;
.source "MatchRects.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/graphics/pdf/models/jni/ListOfList<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist NO_MATCHES:Landroid/graphics/pdf/models/jni/MatchRects;


# instance fields
.field private final blacklist mCharIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMatchToRect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 51
    new-instance v0, Landroid/graphics/pdf/models/jni/MatchRects;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/pdf/models/jni/MatchRects;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Landroid/graphics/pdf/models/jni/MatchRects;->NO_MATCHES:Landroid/graphics/pdf/models/jni/MatchRects;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p2, "matchToRect":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "charIndexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/models/jni/ListOfList;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 61
    const-string v0, "rects cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mRects:Ljava/util/List;

    .line 62
    const-string v0, "matchToRect cannot be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mMatchToRect:Ljava/util/List;

    .line 63
    const-string v0, "charIndexes cannot be null"

    invoke-static {p3, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mCharIndexes:Ljava/util/List;

    .line 64
    return-void
.end method


# virtual methods
.method public blacklist getCharIndexes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mCharIndexes:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getMatchToRect()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mMatchToRect:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mRects:Ljava/util/List;

    return-object v0
.end method

.method public blacklist unflattenToList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/PageMatchBounds;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/pdf/models/PageMatchBounds;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_6
    iget-object v2, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mMatchToRect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, "bounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mMatchToRect:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    iget-object v3, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mMatchToRect:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_32

    .line 111
    :cond_2c
    iget-object v3, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mRects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_32
    nop

    .line 112
    .local v3, "boundsForCurrentMatch":I
    iget-object v4, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mMatchToRect:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "boundIndex":I
    :goto_3f
    if-ge v4, v3, :cond_4f

    .line 114
    iget-object v5, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mRects:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 116
    .end local v4    # "boundIndex":I
    :cond_4f
    new-instance v4, Landroid/graphics/pdf/models/PageMatchBounds;

    .line 117
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Landroid/graphics/pdf/models/jni/LinkRects$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Landroid/graphics/pdf/models/jni/LinkRects$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Landroid/graphics/pdf/models/jni/MatchRects;->mCharIndexes:Ljava/util/List;

    .line 118
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/pdf/models/PageMatchBounds;-><init>(Ljava/util/List;I)V

    .line 116
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v2    # "bounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v3    # "boundsForCurrentMatch":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 121
    .end local v1    # "index":I
    :cond_7d
    return-object v0
.end method
