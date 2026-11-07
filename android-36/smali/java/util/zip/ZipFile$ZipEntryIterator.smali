.class Ljava/util/zip/ZipFile$ZipEntryIterator;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZipEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/util/zip/ZipEntry;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist entryCount:I

.field private greylist-max-o i:I

.field final synthetic blacklist this$0:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor blacklist <init>(Ljava/util/zip/ZipFile;I)V
    .registers 3
    .param p2, "entryCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 529
    .local p0, "this":Ljava/util/zip/ZipFile$ZipEntryIterator;, "Ljava/util/zip/ZipFile$ZipEntryIterator<TT;>;"
    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    const/4 p1, 0x0

    iput p1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    .line 530
    iput p2, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->entryCount:I

    .line 531
    return-void
.end method


# virtual methods
.method public whitelist test-api asIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 568
    .local p0, "this":Ljava/util/zip/ZipFile$ZipEntryIterator;, "Ljava/util/zip/ZipFile$ZipEntryIterator<TT;>;"
    return-object p0
.end method

.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 535
    .local p0, "this":Ljava/util/zip/ZipFile$ZipEntryIterator;, "Ljava/util/zip/ZipFile$ZipEntryIterator<TT;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNext()Z
    .registers 4

    .line 542
    .local p0, "this":Ljava/util/zip/ZipFile$ZipEntryIterator;, "Ljava/util/zip/ZipFile$ZipEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v0

    .line 543
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v1}, Ljava/util/zip/ZipFile;->-$$Nest$mensureOpen(Ljava/util/zip/ZipFile;)V

    .line 544
    iget v1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    iget v2, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->entryCount:I

    if-ge v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0

    return v1

    .line 545
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 523
    .local p0, "this":Ljava/util/zip/ZipFile$ZipEntryIterator;, "Ljava/util/zip/ZipFile$ZipEntryIterator<TT;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->next()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/zip/ZipEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 556
    .local p0, "this":Ljava/util/zip/ZipFile$ZipEntryIterator;, "Ljava/util/zip/ZipFile$ZipEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v0

    .line 557
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v1}, Ljava/util/zip/ZipFile;->-$$Nest$mensureOpen(Ljava/util/zip/ZipFile;)V

    .line 558
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 562
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v2}, Ljava/util/zip/ZipFile;->-$$Nest$fgetres(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipFile$CleanableResource;

    move-result-object v2

    iget-object v2, v2, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    iget v3, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Ljava/util/zip/ZipFile$Source;->-$$Nest$mgetEntryPos(Ljava/util/zip/ZipFile$Source;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/zip/ZipFile;->-$$Nest$mgetZipEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;I)Ljava/util/zip/ZipEntry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 559
    :cond_2b
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/zip/ZipFile$ZipEntryIterator;, "Ljava/util/zip/ZipFile$ZipEntryIterator<TT;>;"
    throw v1

    .line 563
    .restart local p0    # "this":Ljava/util/zip/ZipFile$ZipEntryIterator;, "Ljava/util/zip/ZipFile$ZipEntryIterator<TT;>;"
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 523
    .local p0, "this":Ljava/util/zip/ZipFile$ZipEntryIterator;, "Ljava/util/zip/ZipFile$ZipEntryIterator<TT;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->nextElement()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r nextElement()Ljava/util/zip/ZipEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 550
    .local p0, "this":Ljava/util/zip/ZipFile$ZipEntryIterator;, "Ljava/util/zip/ZipFile$ZipEntryIterator<TT;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->next()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method
