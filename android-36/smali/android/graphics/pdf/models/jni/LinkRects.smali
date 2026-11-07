.class public Landroid/graphics/pdf/models/jni/LinkRects;
.super Landroid/graphics/pdf/models/jni/ListOfList;
.source "LinkRects.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/graphics/pdf/models/jni/ListOfList<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist NO_LINKS:Landroid/graphics/pdf/models/jni/LinkRects;


# instance fields
.field private final blacklist mLinkToRect:Ljava/util/List;
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

.field private final blacklist mUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 51
    new-instance v0, Landroid/graphics/pdf/models/jni/LinkRects;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/pdf/models/jni/LinkRects;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Landroid/graphics/pdf/models/jni/LinkRects;->NO_LINKS:Landroid/graphics/pdf/models/jni/LinkRects;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p2, "linkToRect":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/models/jni/ListOfList;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 60
    const-string v0, "rects cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mRects:Ljava/util/List;

    .line 61
    const-string v0, "linkToRect cannot be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mLinkToRect:Ljava/util/List;

    .line 62
    const-string v0, "urls cannot be null"

    invoke-static {p3, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mUrls:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public blacklist getLinkToRect()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mLinkToRect:Ljava/util/List;

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
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mRects:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mUrls:Ljava/util/List;

    return-object v0
.end method

.method public blacklist unflattenToList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageLinkContent;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "boundedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/pdf/content/PdfPageLinkContent;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_6
    iget-object v2, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mLinkToRect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v2, "bounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mLinkToRect:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    iget-object v3, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mLinkToRect:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_32

    .line 117
    :cond_2c
    iget-object v3, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mRects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_32
    nop

    .line 118
    .local v3, "boundsForCurrentLink":I
    iget-object v4, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mLinkToRect:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "boundIndex":I
    :goto_3f
    if-ge v4, v3, :cond_4f

    .line 120
    iget-object v5, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mRects:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 122
    .end local v4    # "boundIndex":I
    :cond_4f
    new-instance v4, Landroid/graphics/pdf/content/PdfPageLinkContent;

    .line 123
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

    iget-object v6, p0, Landroid/graphics/pdf/models/jni/LinkRects;->mUrls:Ljava/util/List;

    .line 124
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/pdf/content/PdfPageLinkContent;-><init>(Ljava/util/List;Landroid/net/Uri;)V

    .line 122
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v2    # "bounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v3    # "boundsForCurrentLink":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 127
    .end local v1    # "index":I
    :cond_7d
    return-object v0
.end method
