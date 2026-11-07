.class Ljava/nio/file/FileTreeIterator;
.super Ljava/lang/Object;
.source "FileTreeIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/file/FileTreeWalker$Event;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist next:Ljava/nio/file/FileTreeWalker$Event;

.field private final blacklist walker:Ljava/nio/file/FileTreeWalker;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 50
    return-void
.end method

.method varargs constructor blacklist <init>(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)V
    .registers 6
    .param p1, "start"    # Ljava/nio/file/Path;
    .param p2, "maxDepth"    # I
    .param p3, "options"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/nio/file/FileTreeWalker;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/nio/file/FileTreeWalker;-><init>(Ljava/util/Collection;I)V

    iput-object v0, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    .line 71
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v0, p1}, Ljava/nio/file/FileTreeWalker;->walk(Ljava/nio/file/Path;)Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    .line 72
    nop

    .line 76
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v0

    .line 77
    .local v0, "ioe":Ljava/io/IOException;
    if-nez v0, :cond_20

    .line 79
    return-void

    .line 78
    :cond_20
    throw v0
.end method

.method private blacklist fetchNextIfNeeded()V
    .registers 5

    .line 82
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    if-nez v0, :cond_2a

    .line 83
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->next()Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    .line 84
    .local v0, "ev":Ljava/nio/file/FileTreeWalker$Event;
    :goto_a
    if-eqz v0, :cond_2a

    .line 85
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v1

    .line 86
    .local v1, "ioe":Ljava/io/IOException;
    if-nez v1, :cond_24

    .line 90
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->type()Ljava/nio/file/FileTreeWalker$EventType;

    move-result-object v2

    sget-object v3, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    if-eq v2, v3, :cond_1d

    .line 91
    iput-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    .line 92
    return-void

    .line 94
    :cond_1d
    iget-object v2, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v2}, Ljava/nio/file/FileTreeWalker;->next()Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    .line 95
    .end local v1    # "ioe":Ljava/io/IOException;
    goto :goto_a

    .line 87
    .restart local v1    # "ioe":Ljava/io/IOException;
    :cond_24
    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-direct {v2, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 97
    .end local v0    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2a
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 121
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->close()V

    .line 122
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 101
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 103
    invoke-direct {p0}, Ljava/nio/file/FileTreeIterator;->fetchNextIfNeeded()V

    .line 104
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0

    .line 102
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0}, Ljava/nio/file/FileTreeIterator;->next()Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/nio/file/FileTreeWalker$Event;
    .registers 3

    .line 109
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 111
    invoke-direct {p0}, Ljava/nio/file/FileTreeIterator;->fetchNextIfNeeded()V

    .line 112
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    if-eqz v0, :cond_15

    .line 114
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    .line 115
    .local v0, "result":Ljava/nio/file/FileTreeWalker$Event;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    .line 116
    return-object v0

    .line 113
    .end local v0    # "result":Ljava/nio/file/FileTreeWalker$Event;
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 110
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
