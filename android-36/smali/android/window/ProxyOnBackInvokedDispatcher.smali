.class public Landroid/window/ProxyOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "ProxyOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;


# instance fields
.field private blacklist mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/window/OnBackInvokedCallback;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

.field private blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 60
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    .line 61
    return-void
.end method

.method private blacklist clearCallbacksOnDispatcher()V
    .registers 5

    .line 148
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_5

    .line 149
    return-void

    .line 151
    :cond_5
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 152
    .local v1, "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v2, v3}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 153
    .end local v1    # "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;>;"
    goto :goto_b

    .line 154
    :cond_21
    return-void
.end method

.method static synthetic blacklist lambda$unregisterOnBackInvokedCallback$0(Landroid/window/OnBackInvokedCallback;Landroid/util/Pair;)Z
    .registers 3
    .param p0, "callback"    # Landroid/window/OnBackInvokedCallback;
    .param p1, "p"    # Landroid/util/Pair;

    .line 88
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, p0}, Landroid/window/OnBackInvokedCallback;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V
    .registers 6
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;
    .param p2, "priority"    # I

    .line 97
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_22

    .line 100
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1d

    .line 101
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v1, p1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_22

    .line 103
    :cond_1d
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v1, p2, p1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 106
    :cond_22
    :goto_22
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private blacklist transferCallbacksToDispatcher()V
    .registers 6

    .line 116
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_5

    .line 117
    return-void

    .line 123
    :cond_5
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v0, :cond_10

    .line 124
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    .line 126
    :cond_10
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 127
    .local v1, "callbackPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 128
    .local v2, "priority":I
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackPrioritySystemNavigationObserver()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 129
    if-gez v2, :cond_40

    const/4 v3, -0x2

    if-ne v2, v3, :cond_36

    goto :goto_40

    .line 133
    :cond_36
    iget-object v3, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v3, v4}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_5f

    .line 131
    :cond_40
    :goto_40
    iget-object v3, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v3, v2, v4}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    goto :goto_5f

    .line 136
    :cond_4a
    if-ltz v2, :cond_56

    .line 137
    iget-object v3, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v3, v2, v4}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    goto :goto_5f

    .line 139
    :cond_56
    iget-object v3, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v3, v4}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 142
    .end local v1    # "callbackPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;>;"
    .end local v2    # "priority":I
    :goto_5f
    goto :goto_16

    .line 143
    :cond_60
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 145
    return-void
.end method


# virtual methods
.method public whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .registers 4
    .param p1, "priority"    # I
    .param p2, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 70
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 71
    invoke-direct {p0, p2, p1}, Landroid/window/ProxyOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 73
    :cond_b
    return-void
.end method

.method public blacklist registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 77
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/window/ProxyOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 78
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 168
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_3
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist setActualDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .registers 4
    .param p1, "actualDispatcher"    # Landroid/window/OnBackInvokedDispatcher;

    .line 189
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-ne p1, v1, :cond_9

    .line 191
    monitor-exit v0

    return-void

    .line 193
    :cond_9
    invoke-direct {p0}, Landroid/window/ProxyOnBackInvokedDispatcher;->clearCallbacksOnDispatcher()V

    .line 194
    iput-object p1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 195
    invoke-direct {p0}, Landroid/window/ProxyOnBackInvokedDispatcher;->transferCallbacksToDispatcher()V

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public blacklist setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V
    .registers 3
    .param p1, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 202
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_a

    .line 203
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v0, p1}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    goto :goto_c

    .line 205
    :cond_a
    iput-object p1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 207
    :goto_c
    return-void
.end method

.method public whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 87
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    new-instance v2, Landroid/window/ProxyOnBackInvokedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/window/ProxyOnBackInvokedDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/window/OnBackInvokedCallback;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 89
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_16

    .line 90
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v1, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 92
    :cond_16
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
