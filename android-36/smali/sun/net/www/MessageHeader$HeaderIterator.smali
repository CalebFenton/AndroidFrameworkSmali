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
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist haveNext:Z

.field blacklist index:I

.field blacklist key:Ljava/lang/String;

.field blacklist lock:Ljava/lang/Object;

.field blacklist next:I

.field final synthetic blacklist this$0:Lsun/net/www/MessageHeader;


# direct methods
.method public constructor blacklist <init>(Lsun/net/www/MessageHeader;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "this$0"    # Lsun/net/www/MessageHeader;
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    .line 185
    const/4 v1, -0x1

    iput v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->next:I

    .line 187
    iput-boolean v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    .line 191
    iput-object p2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->key:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lsun/net/www/MessageHeader$HeaderIterator;->lock:Ljava/lang/Object;

    .line 193
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 6

    .line 195
    iget-object v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-boolean v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 197
    monitor-exit v0

    return v2

    .line 199
    :cond_a
    :goto_a
    iget v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    iget-object v3, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    invoke-static {v3}, Lsun/net/www/MessageHeader;->-$$Nest$fgetnkeys(Lsun/net/www/MessageHeader;)I

    move-result v3

    if-ge v1, v3, :cond_38

    .line 200
    iget-object v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->key:Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    invoke-static {v3}, Lsun/net/www/MessageHeader;->-$$Nest$fgetkeys(Lsun/net/www/MessageHeader;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 201
    iput-boolean v2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    .line 202
    iget v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    iput v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->next:I

    .line 203
    monitor-exit v0

    return v2

    .line 205
    :cond_32
    iget v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    add-int/2addr v1, v2

    iput v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    goto :goto_a

    .line 207
    :cond_38
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 208
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 183
    invoke-virtual {p0}, Lsun/net/www/MessageHeader$HeaderIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/lang/String;
    .registers 4

    .line 211
    iget-object v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    iget-boolean v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    if-eqz v1, :cond_16

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    .line 214
    iget-object v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    invoke-static {v1}, Lsun/net/www/MessageHeader;->-$$Nest$fgetvalues(Lsun/net/www/MessageHeader;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->next:I

    aget-object v1, v1, v2

    monitor-exit v0

    return-object v1

    .line 216
    :cond_16
    invoke-virtual {p0}, Lsun/net/www/MessageHeader$HeaderIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 217
    invoke-virtual {p0}, Lsun/net/www/MessageHeader$HeaderIterator;->next()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 219
    :cond_22
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more elements"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/net/www/MessageHeader$HeaderIterator;
    throw v1

    .line 221
    .restart local p0    # "this":Lsun/net/www/MessageHeader$HeaderIterator;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove not allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
