.class public final Landroid/media/internal/guava_common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/base/Splitter$Strategy;,
        Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;
    }
.end annotation


# instance fields
.field private final blacklist limit:I

.field private final blacklist omitEmptyStrings:Z

.field private final blacklist strategy:Landroid/media/internal/guava_common/base/Splitter$Strategy;

.field private final blacklist trimmer:Landroid/media/internal/guava_common/base/CharMatcher;


# direct methods
.method private constructor blacklist <init>(Landroid/media/internal/guava_common/base/Splitter$Strategy;)V
    .registers 5

    .line 108
    invoke-static {}, Landroid/media/internal/guava_common/base/CharMatcher;->none()Landroid/media/internal/guava_common/base/CharMatcher;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/media/internal/guava_common/base/Splitter;-><init>(Landroid/media/internal/guava_common/base/Splitter$Strategy;ZLandroid/media/internal/guava_common/base/CharMatcher;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/internal/guava_common/base/Splitter$Strategy;ZLandroid/media/internal/guava_common/base/CharMatcher;I)V
    .registers 5

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/media/internal/guava_common/base/Splitter;->strategy:Landroid/media/internal/guava_common/base/Splitter$Strategy;

    .line 113
    iput-boolean p2, p0, Landroid/media/internal/guava_common/base/Splitter;->omitEmptyStrings:Z

    .line 114
    iput-object p3, p0, Landroid/media/internal/guava_common/base/Splitter;->trimmer:Landroid/media/internal/guava_common/base/CharMatcher;

    .line 115
    iput p4, p0, Landroid/media/internal/guava_common/base/Splitter;->limit:I

    return-void
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/guava_common/base/Splitter;)Landroid/media/internal/guava_common/base/CharMatcher;
    .registers 1

    .line 101
    iget-object p0, p0, Landroid/media/internal/guava_common/base/Splitter;->trimmer:Landroid/media/internal/guava_common/base/CharMatcher;

    return-object p0
.end method

.method static synthetic blacklist access$300(Landroid/media/internal/guava_common/base/Splitter;)Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Landroid/media/internal/guava_common/base/Splitter;->omitEmptyStrings:Z

    return p0
.end method

.method static synthetic blacklist access$400(Landroid/media/internal/guava_common/base/Splitter;)I
    .registers 1

    .line 101
    iget p0, p0, Landroid/media/internal/guava_common/base/Splitter;->limit:I

    return p0
.end method

.method public static blacklist on(C)Landroid/media/internal/guava_common/base/Splitter;
    .registers 1

    .line 126
    invoke-static {p0}, Landroid/media/internal/guava_common/base/CharMatcher;->is(C)Landroid/media/internal/guava_common/base/CharMatcher;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/base/Splitter;->on(Landroid/media/internal/guava_common/base/CharMatcher;)Landroid/media/internal/guava_common/base/Splitter;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist on(Landroid/media/internal/guava_common/base/CharMatcher;)Landroid/media/internal/guava_common/base/Splitter;
    .registers 3

    .line 140
    invoke-static {p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Landroid/media/internal/guava_common/base/Splitter;

    new-instance v1, Landroid/media/internal/guava_common/base/Splitter$1;

    invoke-direct {v1, p0}, Landroid/media/internal/guava_common/base/Splitter$1;-><init>(Landroid/media/internal/guava_common/base/CharMatcher;)V

    invoke-direct {v0, v1}, Landroid/media/internal/guava_common/base/Splitter;-><init>(Landroid/media/internal/guava_common/base/Splitter$Strategy;)V

    return-object v0
.end method

.method private blacklist splittingIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Landroid/media/internal/guava_common/base/Splitter;->strategy:Landroid/media/internal/guava_common/base/Splitter$Strategy;

    invoke-interface {v0, p0, p1}, Landroid/media/internal/guava_common/base/Splitter$Strategy;->iterator(Landroid/media/internal/guava_common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist splitToList(Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 414
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/base/Splitter;->splittingIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    .line 417
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 420
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 423
    :cond_1c
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
