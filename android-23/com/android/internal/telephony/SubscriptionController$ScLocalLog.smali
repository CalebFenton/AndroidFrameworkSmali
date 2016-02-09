.class Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;
.super Ljava/lang/Object;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScLocalLog"
.end annotation


# instance fields
.field private mLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLines:I

.field private mNow:Landroid/text/format/Time;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxLines"    # I

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 93
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    #@a
    .line 94
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mMaxLines:I

    #@c
    .line 95
    new-instance v0, Landroid/text/format/Time;

    #@e
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mNow:Landroid/text/format/Time;

    #@13
    .line 92
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 109
    const/16 v0, 0xa

    #@3
    .line 110
    .local v0, "LOOPS_PER_FLUSH":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    #@5
    const/4 v5, 0x0

    #@6
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    #@9
    move-result-object v3

    #@a
    .line 111
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    move v2, v1

    #@c
    .line 112
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    add-int/lit8 v1, v2, 0x1

    #@19
    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    const-string/jumbo v5, ": "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Ljava/lang/String;

    #@2e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 115
    rem-int/lit8 v4, v1, 0xa

    #@3b
    if-nez v4, :cond_0

    #@3d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    :cond_0
    move v2, v1

    #@41
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@42
    :cond_1
    monitor-exit p0

    #@43
    .line 108
    return-void

    #@44
    .end local v2    # "i":I
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    #@45
    monitor-exit p0

    #@46
    throw v4
.end method

.method public declared-synchronized log(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 99
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mMaxLines:I

    #@3
    if-lez v2, :cond_0

    #@5
    .line 100
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@8
    move-result v0

    #@9
    .line 101
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myTid()I

    #@c
    move-result v1

    #@d
    .line 102
    .local v1, "tid":I
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mNow:Landroid/text/format/Time;

    #@f
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    #@12
    .line 103
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mNow:Landroid/text/format/Time;

    #@1b
    const-string/jumbo v5, "%m-%d %H:%M:%S"

    #@1e
    invoke-virtual {v4, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, " pid="

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    const-string/jumbo v4, " tid="

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    const-string/jumbo v4, " "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@4e
    .line 104
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    #@50
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    #@53
    move-result v2

    #@54
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mMaxLines:I

    #@56
    if-le v2, v3, :cond_0

    #@58
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    #@5a
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    goto :goto_0

    #@5e
    .end local v0    # "pid":I
    .end local v1    # "tid":I
    :catchall_0
    move-exception v2

    #@5f
    monitor-exit p0

    #@60
    throw v2

    #@61
    :cond_0
    monitor-exit p0

    #@62
    .line 98
    return-void
.end method
