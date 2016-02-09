.class Lcom/android/server/notification/NotificationManagerService$Archive;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Archive"
.end annotation


# instance fields
.field final mBuffer:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field final mBufferSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    #@0
    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 300
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    #@5
    .line 301
    new-instance v0, Ljava/util/ArrayDeque;

    #@7
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    #@9
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    #@c
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    #@e
    .line 299
    return-void
.end method


# virtual methods
.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getArray(I)[Landroid/service/notification/StatusBarNotification;
    .locals 5
    .param p1, "count"    # I

    #@0
    .prologue
    .line 330
    if-nez p1, :cond_0

    #@2
    iget p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    #@4
    .line 332
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    #@9
    move-result v4

    #@a
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v4

    #@e
    new-array v0, v4, [Landroid/service/notification/StatusBarNotification;

    #@10
    .line 333
    .local v0, "a":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    .line 334
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v1, 0x0

    #@15
    .line 335
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    if-ge v1, p1, :cond_1

    #@1d
    .line 336
    add-int/lit8 v2, v1, 0x1

    #@1f
    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Landroid/service/notification/StatusBarNotification;

    #@25
    aput-object v4, v0, v1

    #@27
    move v1, v2

    #@28
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@29
    .line 338
    :cond_1
    return-object v0
.end method

.method public record(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "nr"    # Landroid/service/notification/StatusBarNotification;

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 316
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    #@c
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    #@f
    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    #@11
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@18
    .line 314
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 306
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/ArrayDeque;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    #@a
    move-result v0

    #@b
    .line 307
    .local v0, "N":I
    const-string/jumbo v2, "Archive ("

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 308
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    .line 309
    const-string/jumbo v2, " notification"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 310
    const/4 v2, 0x1

    #@1b
    if-ne v0, v2, :cond_0

    #@1d
    const-string/jumbo v2, ")"

    #@20
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2

    #@28
    .line 310
    :cond_0
    const-string/jumbo v2, "s)"

    #@2b
    goto :goto_0
.end method
