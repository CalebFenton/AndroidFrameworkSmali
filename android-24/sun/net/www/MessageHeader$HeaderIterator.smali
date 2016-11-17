.class Lsun/net/www/MessageHeader$HeaderIterator;
.super Ljava/lang/Object;
.source "MessageHeader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/MessageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field haveNext:Z

.field index:I

.field key:Ljava/lang/String;

.field lock:Ljava/lang/Object;

.field next:I

.field final synthetic this$0:Lsun/net/www/MessageHeader;


# direct methods
.method public constructor <init>(Lsun/net/www/MessageHeader;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "this$0"    # Lsun/net/www/MessageHeader;
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 185
    iput-object p1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 179
    iput v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    #@8
    .line 180
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->next:I

    #@b
    .line 182
    iput-boolean v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    #@d
    .line 186
    iput-object p2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->key:Ljava/lang/String;

    #@f
    .line 187
    iput-object p3, p0, Lsun/net/www/MessageHeader$HeaderIterator;->lock:Ljava/lang/Object;

    #@11
    .line 185
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 190
    iget-object v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 191
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v0, :cond_1

    #@8
    monitor-exit v1

    #@9
    .line 192
    return v4

    #@a
    .line 200
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    #@10
    .line 194
    :cond_1
    iget v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    #@12
    iget-object v2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    #@14
    invoke-static {v2}, Lsun/net/www/MessageHeader;->-get1(Lsun/net/www/MessageHeader;)I

    #@17
    move-result v2

    #@18
    if-ge v0, v2, :cond_2

    #@1a
    .line 195
    iget-object v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->key:Ljava/lang/String;

    #@1c
    iget-object v2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    #@1e
    invoke-static {v2}, Lsun/net/www/MessageHeader;->-get0(Lsun/net/www/MessageHeader;)[Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    iget v3, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    #@24
    aget-object v2, v2, v3

    #@26
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_0

    #@2c
    .line 196
    const/4 v0, 0x1

    #@2d
    iput-boolean v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    #@2f
    .line 197
    iget v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    #@31
    add-int/lit8 v2, v0, 0x1

    #@33
    iput v2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    #@35
    iput v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->next:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit v1

    #@38
    .line 198
    return v4

    #@39
    .line 202
    :cond_2
    const/4 v0, 0x0

    #@3a
    monitor-exit v1

    #@3b
    return v0

    #@3c
    .line 190
    :catchall_0
    move-exception v0

    #@3d
    monitor-exit v1

    #@3e
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 205
    invoke-virtual {p0}, Lsun/net/www/MessageHeader$HeaderIterator;->next()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 206
    iget-object v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 207
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 208
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    #@a
    .line 209
    iget-object v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    #@c
    invoke-static {v0}, Lsun/net/www/MessageHeader;->-get2(Lsun/net/www/MessageHeader;)[Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iget v2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->next:I

    #@12
    aget-object v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 211
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/MessageHeader$HeaderIterator;->hasNext()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 212
    invoke-virtual {p0}, Lsun/net/www/MessageHeader$HeaderIterator;->next()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result-object v0

    #@20
    monitor-exit v1

    #@21
    return-object v0

    #@22
    .line 214
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/NoSuchElementException;

    #@24
    const-string/jumbo v2, "No more elements"

    #@27
    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    .line 206
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    throw v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "remove not allowed"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
