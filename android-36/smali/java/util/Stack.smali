.class public Ljava/util/Stack;
.super Ljava/util/Vector;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x10fe2ac2bb09861dL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 54
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api empty()Z
    .registers 2

    .line 114
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public declared-synchronized whitelist test-api peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 102
    .local v0, "len":I
    if-eqz v0, :cond_f

    .line 104
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    monitor-exit p0

    return-object v1

    .line 103
    .end local p0    # "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    :cond_f
    :try_start_f
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1

    .line 99
    .end local v0    # "len":I
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_15

    throw v0
.end method

.method public declared-synchronized whitelist test-api pop()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    .line 83
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 85
    .local v0, "len":I
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 86
    .local v1, "obj":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 88
    monitor-exit p0

    return-object v1

    .line 82
    .end local v0    # "len":I
    .end local v1    # "obj":Ljava/lang/Object;, "TE;"
    .end local p0    # "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public whitelist test-api push(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 68
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 70
    return-object p1
.end method

.method public declared-synchronized whitelist test-api search(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    .line 132
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Stack;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 134
    .local v0, "i":I
    if-ltz v0, :cond_e

    .line 135
    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    sub-int/2addr v1, v0

    monitor-exit p0

    return v1

    .line 137
    .end local p0    # "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    :cond_e
    monitor-exit p0

    const/4 v1, -0x1

    return v1

    .line 131
    .end local v0    # "i":I
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method
