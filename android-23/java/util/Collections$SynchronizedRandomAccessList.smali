.class Ljava/util/Collections$SynchronizedRandomAccessList;
.super Ljava/util/Collections$SynchronizedList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x153e0c6c865668d2L


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 478
    .local p0, "this":Ljava/util/Collections$SynchronizedRandomAccessList;, "Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    #@3
    .line 477
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 482
    .local p0, "this":Ljava/util/Collections$SynchronizedRandomAccessList;, "Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    #@3
    .line 481
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 503
    .local p0, "this":Ljava/util/Collections$SynchronizedRandomAccessList;, "Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    #@2
    iget-object v1, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->list:Ljava/util/List;

    #@4
    invoke-direct {v0, v1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    #@7
    return-object v0
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 486
    .local p0, "this":Ljava/util/Collections$SynchronizedRandomAccessList;, "Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 487
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    #@5
    iget-object v2, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->list:Ljava/util/List;

    #@7
    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@a
    move-result-object v2

    #@b
    iget-object v3, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    #@d
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 486
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
