.class public Ljava/util/Stack;
.super Ljava/util/Vector;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10fe2ac2bb09861dL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    #@0
    .prologue
    .line 41
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    #@1
    .line 55
    :try_start_0
    iget-object v1, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    #@3
    iget v2, p0, Ljava/util/Stack;->elementCount:I

    #@5
    add-int/lit8 v2, v2, -0x1

    #@7
    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v1

    #@b
    .line 56
    :catch_0
    move-exception v0

    #@c
    .line 57
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    new-instance v1, Ljava/util/EmptyStackException;

    #@e
    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    #@11
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method

.method public declared-synchronized pop()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    #@1
    .line 72
    :try_start_0
    iget v2, p0, Ljava/util/Stack;->elementCount:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 73
    new-instance v2, Ljava/util/EmptyStackException;

    #@7
    invoke-direct {v2}, Ljava/util/EmptyStackException;-><init>()V

    #@a
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :catchall_0
    move-exception v2

    #@c
    monitor-exit p0

    #@d
    throw v2

    #@e
    .line 75
    :cond_0
    :try_start_1
    iget v2, p0, Ljava/util/Stack;->elementCount:I

    #@10
    add-int/lit8 v0, v2, -0x1

    #@12
    iput v0, p0, Ljava/util/Stack;->elementCount:I

    #@14
    .line 76
    .local v0, "index":I
    iget-object v2, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    #@16
    aget-object v1, v2, v0

    #@18
    .line 77
    .local v1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    #@1a
    const/4 v3, 0x0

    #@1b
    aput-object v3, v2, v0

    #@1d
    .line 78
    iget v2, p0, Ljava/util/Stack;->modCount:I

    #@1f
    add-int/lit8 v2, v2, 0x1

    #@21
    iput v2, p0, Ljava/util/Stack;->modCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 79
    return-object v1
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 92
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    #@3
    .line 93
    return-object p1
.end method

.method public declared-synchronized search(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    #@1
    .line 106
    :try_start_0
    iget-object v0, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    #@3
    .line 107
    .local v0, "dumpArray":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/Stack;->elementCount:I

    #@5
    .line 108
    .local v2, "size":I
    if-eqz p1, :cond_1

    #@7
    .line 109
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@b
    .line 110
    aget-object v3, v0, v1

    #@d
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 111
    sub-int v3, v2, v1

    #@15
    monitor-exit p0

    #@16
    return v3

    #@17
    .line 109
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 115
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v2, -0x1

    #@1c
    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    #@1e
    .line 116
    :try_start_1
    aget-object v3, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    if-nez v3, :cond_2

    #@22
    .line 117
    sub-int v3, v2, v1

    #@24
    monitor-exit p0

    #@25
    return v3

    #@26
    .line 115
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@28
    goto :goto_1

    #@29
    .line 121
    :cond_3
    const/4 v3, -0x1

    #@2a
    monitor-exit p0

    #@2b
    return v3

    #@2c
    .end local v0    # "dumpArray":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit p0

    #@2e
    throw v3
.end method
