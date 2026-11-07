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
.field private final greylist-max-o mKeysAndObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempObserversToSignal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/UEventObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 181
    const-string v0, "UEventObserver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    .line 182
    return-void
.end method

.method private greylist-max-o sendEvent(Ljava/lang/String;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 202
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2c

    .line 203
    iget-object v3, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 204
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 205
    iget-object v4, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    .line 206
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UEventObserver;

    .line 207
    .local v4, "observer":Landroid/os/UEventObserver;
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "observer":Landroid/os/UEventObserver;
    :cond_29
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    .line 210
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_57

    .line 212
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 213
    new-instance v0, Landroid/os/UEventObserver$UEvent;

    invoke-direct {v0, p1}, Landroid/os/UEventObserver$UEvent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "event":Landroid/os/UEventObserver$UEvent;
    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 215
    .restart local v1    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_41
    if-ge v2, v1, :cond_51

    .line 216
    iget-object v3, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UEventObserver;

    .line 217
    .local v3, "observer":Landroid/os/UEventObserver;
    invoke-virtual {v3, v0}, Landroid/os/UEventObserver;->onUEvent(Landroid/os/UEventObserver$UEvent;)V

    .line 215
    .end local v3    # "observer":Landroid/os/UEventObserver;
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 219
    .end local v2    # "i":I
    :cond_51
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 221
    .end local v0    # "event":Landroid/os/UEventObserver$UEvent;
    .end local v1    # "N":I
    :cond_56
    return-void

    .line 210
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method


# virtual methods
.method public greylist-max-o addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V
    .registers 5
    .param p1, "match"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/os/UEventObserver;

    .line 224
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {p1}, Landroid/os/UEventObserver;->-$$Nest$smnativeAddMatch(Ljava/lang/String;)V

    .line 228
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public greylist-max-o removeObserver(Landroid/os/UEventObserver;)V
    .registers 6
    .param p1, "observer"    # Landroid/os/UEventObserver;

    .line 233
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 234
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 235
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_29

    .line 236
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 237
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    .local v2, "match":Ljava/lang/String;
    invoke-static {v2}, Landroid/os/UEventObserver;->-$$Nest$smnativeRemoveMatch(Ljava/lang/String;)V

    .line 239
    .end local v2    # "match":Ljava/lang/String;
    goto :goto_4

    .line 240
    :cond_29
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    .line 243
    .end local v1    # "i":I
    :cond_2c
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 186
    invoke-static {}, Landroid/os/UEventObserver;->-$$Nest$smnativeSetup()V

    .line 189
    :goto_3
    invoke-static {}, Landroid/os/UEventObserver;->-$$Nest$smnativeWaitForNextEvent()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 194
    invoke-direct {p0, v0}, Landroid/os/UEventObserver$UEventThread;->sendEvent(Ljava/lang/String;)V

    .line 196
    .end local v0    # "message":Ljava/lang/String;
    :cond_c
    goto :goto_3
.end method
