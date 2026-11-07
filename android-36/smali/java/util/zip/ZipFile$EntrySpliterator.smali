.class Ljava/util/zip/ZipFile$EntrySpliterator;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist fence:I

.field private final blacklist gen:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist index:I

.field final synthetic blacklist this$0:Ljava/util/zip/ZipFile;


# direct methods
.method constructor blacklist <init>(Ljava/util/zip/ZipFile;IILjava/util/function/IntFunction;)V
    .registers 7
    .param p2, "index"    # I
    .param p3, "fence"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/IntFunction<",
            "TT;>;)V"
        }
    .end annotation

    .line 596
    .local p0, "this":Ljava/util/zip/ZipFile$EntrySpliterator;, "Ljava/util/zip/ZipFile$EntrySpliterator<TT;>;"
    .local p4, "gen":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<TT;>;"
    iput-object p1, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->this$0:Ljava/util/zip/ZipFile;

    .line 597
    int-to-long v0, p3

    const/16 p1, 0x511

    invoke-direct {p0, v0, v1, p1}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    .line 600
    iput p2, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->index:I

    .line 601
    iput p3, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->fence:I

    .line 602
    iput-object p4, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->gen:Ljava/util/function/IntFunction;

    .line 603
    return-void
.end method


# virtual methods
.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 607
    .local p0, "this":Ljava/util/zip/ZipFile$EntrySpliterator;, "Ljava/util/zip/ZipFile$EntrySpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_39

    .line 609
    iget v0, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->index:I

    if-ltz v0, :cond_37

    iget v0, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->index:I

    iget v1, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->fence:I

    if-ge v0, v1, :cond_37

    .line 610
    iget-object v0, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v0

    .line 611
    :try_start_f
    iget-object v1, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v1}, Ljava/util/zip/ZipFile;->-$$Nest$mensureOpen(Ljava/util/zip/ZipFile;)V

    .line 612
    iget-object v1, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->gen:Ljava/util/function/IntFunction;

    iget-object v2, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v2}, Ljava/util/zip/ZipFile;->-$$Nest$fgetres(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipFile$CleanableResource;

    move-result-object v2

    iget-object v2, v2, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    iget v3, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/zip/ZipFile$EntrySpliterator;->index:I

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Ljava/util/zip/ZipFile$Source;->-$$Nest$mgetEntryPos(Ljava/util/zip/ZipFile$Source;I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 613
    monitor-exit v0

    .line 614
    const/4 v0, 0x1

    return v0

    .line 613
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_34

    throw v1

    .line 616
    :cond_37
    const/4 v0, 0x0

    return v0

    .line 608
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
