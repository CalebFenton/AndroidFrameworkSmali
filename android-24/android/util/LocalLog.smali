.class public final Landroid/util/LocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LocalLog$ReadOnlyLocalLog;
    }
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

.field private mNow:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxLines"    # I

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/util/LocalLog;->mLog:Ljava/util/LinkedList;

    #@a
    .line 36
    iput p1, p0, Landroid/util/LocalLog;->mMaxLines:I

    #@c
    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 52
    :try_start_0
    iget-object v1, p0, Landroid/util/LocalLog;->mLog:Ljava/util/LinkedList;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    #@7
    move-result-object v0

    #@8
    .line 53
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    goto :goto_0

    #@18
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    #@19
    monitor-exit p0

    #@1a
    throw v1

    #@1b
    .restart local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    #@1c
    .line 51
    return-void
.end method

.method public declared-synchronized log(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 40
    :try_start_0
    iget v2, p0, Landroid/util/LocalLog;->mMaxLines:I

    #@3
    if-lez v2, :cond_0

    #@5
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v2

    #@9
    iput-wide v2, p0, Landroid/util/LocalLog;->mNow:J

    #@b
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 43
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@13
    move-result-object v0

    #@14
    .line 44
    .local v0, "c":Ljava/util/Calendar;
    iget-wide v2, p0, Landroid/util/LocalLog;->mNow:J

    #@16
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@19
    .line 45
    const-string/jumbo v2, "%tm-%td %tH:%tM:%tS.%tL"

    #@1c
    const/4 v3, 0x6

    #@1d
    new-array v3, v3, [Ljava/lang/Object;

    #@1f
    const/4 v4, 0x0

    #@20
    aput-object v0, v3, v4

    #@22
    const/4 v4, 0x1

    #@23
    aput-object v0, v3, v4

    #@25
    const/4 v4, 0x2

    #@26
    aput-object v0, v3, v4

    #@28
    const/4 v4, 0x3

    #@29
    aput-object v0, v3, v4

    #@2b
    const/4 v4, 0x4

    #@2c
    aput-object v0, v3, v4

    #@2e
    const/4 v4, 0x5

    #@2f
    aput-object v0, v3, v4

    #@31
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 46
    iget-object v2, p0, Landroid/util/LocalLog;->mLog:Ljava/util/LinkedList;

    #@3a
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    const-string/jumbo v4, " - "

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@59
    .line 47
    :goto_0
    iget-object v2, p0, Landroid/util/LocalLog;->mLog:Ljava/util/LinkedList;

    #@5b
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    #@5e
    move-result v2

    #@5f
    iget v3, p0, Landroid/util/LocalLog;->mMaxLines:I

    #@61
    if-le v2, v3, :cond_0

    #@63
    iget-object v2, p0, Landroid/util/LocalLog;->mLog:Ljava/util/LinkedList;

    #@65
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    goto :goto_0

    #@69
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    #@6a
    monitor-exit p0

    #@6b
    throw v2

    #@6c
    :cond_0
    monitor-exit p0

    #@6d
    .line 39
    return-void
.end method

.method public readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    #@0
    .prologue
    .line 75
    new-instance v0, Landroid/util/LocalLog$ReadOnlyLocalLog;

    #@2
    invoke-direct {v0, p0}, Landroid/util/LocalLog$ReadOnlyLocalLog;-><init>(Landroid/util/LocalLog;)V

    #@5
    return-object v0
.end method

.method public declared-synchronized reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 59
    :try_start_0
    iget-object v1, p0, Landroid/util/LocalLog;->mLog:Ljava/util/LinkedList;

    #@3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@b
    .line 60
    iget-object v1, p0, Landroid/util/LocalLog;->mLog:Ljava/util/LinkedList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/lang/String;

    #@13
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 59
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    :cond_0
    monitor-exit p0

    #@1a
    .line 58
    return-void

    #@1b
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit p0

    #@1d
    throw v1
.end method
