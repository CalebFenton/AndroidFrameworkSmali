.class final Landroid/os/UEventObserver$UEventThread;
.super Ljava/lang/Thread;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UEventThread"
.end annotation


# instance fields
.field private final mKeysAndObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempObserversToSignal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UEventObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 174
    const-string/jumbo v0, "UEventObserver"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@6
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@d
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 170
    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    #@14
    .line 173
    return-void
.end method

.method private sendEvent(Ljava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    iget-object v6, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@2
    monitor-enter v6

    #@3
    .line 194
    :try_start_0
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 195
    .local v0, "N":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@c
    .line 196
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/lang/String;

    #@14
    .line 197
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    .line 199
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@1c
    add-int/lit8 v7, v2, 0x1

    #@1e
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Landroid/os/UEventObserver;

    #@24
    .line 200
    .local v4, "observer":Landroid/os/UEventObserver;
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 195
    .end local v4    # "observer":Landroid/os/UEventObserver;
    :cond_0
    add-int/lit8 v2, v2, 0x2

    #@2b
    goto :goto_0

    #@2c
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    monitor-exit v6

    #@2d
    .line 205
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@32
    move-result v5

    #@33
    if-nez v5, :cond_3

    #@35
    .line 206
    new-instance v1, Landroid/os/UEventObserver$UEvent;

    #@37
    invoke-direct {v1, p1}, Landroid/os/UEventObserver$UEvent;-><init>(Ljava/lang/String;)V

    #@3a
    .line 207
    .local v1, "event":Landroid/os/UEventObserver$UEvent;
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v0

    #@40
    .line 208
    const/4 v2, 0x0

    #@41
    :goto_1
    if-ge v2, v0, :cond_2

    #@43
    .line 209
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    check-cast v4, Landroid/os/UEventObserver;

    #@4b
    .line 210
    .restart local v4    # "observer":Landroid/os/UEventObserver;
    invoke-virtual {v4, v1}, Landroid/os/UEventObserver;->onUEvent(Landroid/os/UEventObserver$UEvent;)V

    #@4e
    .line 208
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_1

    #@51
    .line 193
    .end local v0    # "N":I
    .end local v1    # "event":Landroid/os/UEventObserver$UEvent;
    .end local v2    # "i":I
    .end local v4    # "observer":Landroid/os/UEventObserver;
    :catchall_0
    move-exception v5

    #@52
    monitor-exit v6

    #@53
    throw v5

    #@54
    .line 212
    .restart local v0    # "N":I
    .restart local v1    # "event":Landroid/os/UEventObserver$UEvent;
    .restart local v2    # "i":I
    :cond_2
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@59
    .line 192
    .end local v1    # "event":Landroid/os/UEventObserver$UEvent;
    :cond_3
    return-void
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V
    .locals 2
    .param p1, "match"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/os/UEventObserver;

    #@0
    .prologue
    .line 217
    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8
    .line 219
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    .line 220
    invoke-static {p1}, Landroid/os/UEventObserver;->-wrap1(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 216
    return-void

    #@12
    .line 217
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public removeObserver(Landroid/os/UEventObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/os/UEventObserver;

    #@0
    .prologue
    .line 226
    iget-object v3, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@2
    monitor-enter v3

    #@3
    .line 227
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    if-ge v0, v2, :cond_1

    #@c
    .line 228
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@e
    add-int/lit8 v4, v0, 0x1

    #@10
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 229
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@18
    add-int/lit8 v4, v0, 0x1

    #@1a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1d
    .line 230
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/lang/String;

    #@25
    .line 231
    .local v1, "match":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/UEventObserver;->-wrap2(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 226
    .end local v1    # "match":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit v3

    #@2b
    throw v2

    #@2c
    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@2e
    goto :goto_0

    #@2f
    :cond_1
    monitor-exit v3

    #@30
    .line 225
    return-void
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 179
    invoke-static {}, Landroid/os/UEventObserver;->-wrap3()V

    #@3
    .line 182
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/UEventObserver;->-wrap0()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 183
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    .line 187
    invoke-direct {p0, v0}, Landroid/os/UEventObserver$UEventThread;->sendEvent(Ljava/lang/String;)V

    #@c
    goto :goto_0
.end method
