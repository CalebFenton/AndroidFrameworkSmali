.class public abstract Landroid/service/search/SearchUiService;
.super Landroid/app/Service;
.source "SearchUiService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/search/SearchUiService$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.search.SearchUiService"

.field private static final blacklist TAG:Ljava/lang/String; = "SearchUiService"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/search/ISearchUiService;

.field private final blacklist mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/search/SearchSessionId;",
            "Ljava/util/ArrayList<",
            "Landroid/service/search/SearchUiService$CallbackWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$uZ1fncm-TW0PiUAG9YxHx76WtkU(Landroid/service/search/SearchUiService;Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/search/SearchUiService;->lambda$doRegisterEmptyQueryResultUpdateCallback$0(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v6utYjsz_EzbcbRTja_xrq4HJLE(Landroid/service/search/SearchUiService;Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/search/SearchUiService;->lambda$doRegisterEmptyQueryResultUpdateCallback$1(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/search/SearchUiService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDestroy(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/search/SearchUiService;->doDestroy(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRegisterEmptyQueryResultUpdateCallback(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/search/SearchUiService;->doRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoUnregisterEmptyQueryResultUpdateCallback(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/search/SearchUiService;->doUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/search/SearchUiService;->mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;

    .line 77
    new-instance v0, Landroid/service/search/SearchUiService$1;

    invoke-direct {v0, p0}, Landroid/service/search/SearchUiService$1;-><init>(Landroid/service/search/SearchUiService;)V

    iput-object v0, p0, Landroid/service/search/SearchUiService;->mInterface:Landroid/service/search/ISearchUiService;

    return-void
.end method

.method private blacklist doDestroy(Landroid/app/search/SearchSessionId;)V
    .registers 2
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;

    .line 263
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 264
    invoke-virtual {p0, p1}, Landroid/service/search/SearchUiService;->onDestroy(Landroid/app/search/SearchSessionId;)V

    .line 265
    return-void
.end method

.method private blacklist doRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 7
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "callback"    # Landroid/app/search/ISearchCallback;

    .line 190
    iget-object v0, p0, Landroid/service/search/SearchUiService;->mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 192
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/search/SearchUiService$CallbackWrapper;>;"
    if-nez v0, :cond_23

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register for updates for unknown session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchUiService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 197
    :cond_23
    invoke-direct {p0, v0, p2}, Landroid/service/search/SearchUiService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/search/ISearchCallback;)Landroid/service/search/SearchUiService$CallbackWrapper;

    move-result-object v1

    .line 198
    .local v1, "wrapper":Landroid/service/search/SearchUiService$CallbackWrapper;
    if-nez v1, :cond_40

    .line 199
    new-instance v2, Landroid/service/search/SearchUiService$CallbackWrapper;

    new-instance v3, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda0;-><init>(Landroid/service/search/SearchUiService;Ljava/util/ArrayList;)V

    invoke-direct {v2, p2, v3}, Landroid/service/search/SearchUiService$CallbackWrapper;-><init>(Landroid/app/search/ISearchCallback;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    .line 204
    invoke-virtual {p0}, Landroid/service/search/SearchUiService;->onStartUpdateEmptyQueryResult()V

    .line 207
    :cond_40
    return-void
.end method

.method private blacklist doUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "callback"    # Landroid/app/search/ISearchCallback;

    .line 219
    iget-object v0, p0, Landroid/service/search/SearchUiService;->mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 221
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/search/SearchUiService$CallbackWrapper;>;"
    if-nez v0, :cond_23

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister for updates for unknown session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchUiService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 226
    :cond_23
    invoke-direct {p0, v0, p2}, Landroid/service/search/SearchUiService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/search/ISearchCallback;)Landroid/service/search/SearchUiService$CallbackWrapper;

    move-result-object v1

    .line 227
    .local v1, "wrapper":Landroid/service/search/SearchUiService$CallbackWrapper;
    invoke-direct {p0, v0, v1}, Landroid/service/search/SearchUiService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V

    .line 228
    return-void
.end method

.method private blacklist findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/search/ISearchCallback;)Landroid/service/search/SearchUiService$CallbackWrapper;
    .registers 5
    .param p2, "callback"    # Landroid/app/search/ISearchCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/search/SearchUiService$CallbackWrapper;",
            ">;",
            "Landroid/app/search/ISearchCallback;",
            ")",
            "Landroid/service/search/SearchUiService$CallbackWrapper;"
        }
    .end annotation

    .line 235
    .local p1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/search/SearchUiService$CallbackWrapper;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 236
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/search/SearchUiService$CallbackWrapper;

    invoke-virtual {v1, p2}, Landroid/service/search/SearchUiService$CallbackWrapper;->isCallback(Landroid/app/search/ISearchCallback;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 237
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/search/SearchUiService$CallbackWrapper;

    return-object v1

    .line 235
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 240
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic blacklist lambda$doRegisterEmptyQueryResultUpdateCallback$0(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V
    .registers 3
    .param p1, "callbacks"    # Ljava/util/ArrayList;
    .param p2, "callbackWrapper"    # Landroid/service/search/SearchUiService$CallbackWrapper;

    .line 202
    invoke-direct {p0, p1, p2}, Landroid/service/search/SearchUiService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V

    return-void
.end method

.method private synthetic blacklist lambda$doRegisterEmptyQueryResultUpdateCallback$1(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V
    .registers 5
    .param p1, "callbacks"    # Ljava/util/ArrayList;
    .param p2, "callbackWrapper"    # Landroid/service/search/SearchUiService$CallbackWrapper;

    .line 201
    iget-object v0, p0, Landroid/service/search/SearchUiService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda1;-><init>(Landroid/service/search/SearchUiService;Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V
    .registers 4
    .param p2, "wrapper"    # Landroid/service/search/SearchUiService$CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/search/SearchUiService$CallbackWrapper;",
            ">;",
            "Landroid/service/search/SearchUiService$CallbackWrapper;",
            ")V"
        }
    .end annotation

    .line 245
    .local p1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/search/SearchUiService$CallbackWrapper;>;"
    if-eqz p1, :cond_15

    if-nez p2, :cond_5

    goto :goto_15

    .line 248
    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {p2}, Landroid/service/search/SearchUiService$CallbackWrapper;->destroy()V

    .line 250
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 251
    invoke-virtual {p0}, Landroid/service/search/SearchUiService;->onStopUpdateEmptyQueryResult()V

    .line 253
    :cond_14
    return-void

    .line 246
    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 140
    const-string v0, "android.service.search.SearchUiService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 141
    iget-object v0, p0, Landroid/service/search/SearchUiService;->mInterface:Landroid/service/search/ISearchUiService;

    invoke-interface {v0}, Landroid/service/search/ISearchUiService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 143
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.search.SearchUiService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchUiService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 133
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/search/SearchUiService;->mHandler:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method public greylist onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .registers 3
    .param p1, "context"    # Landroid/app/search/SearchContext;
    .param p2, "sessionId"    # Landroid/app/search/SearchSessionId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    return-void
.end method

.method public abstract whitelist onDestroy(Landroid/app/search/SearchSessionId;)V
.end method

.method public abstract whitelist onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
.end method

.method public abstract whitelist onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/search/SearchSessionId;",
            "Landroid/app/search/Query;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/search/SearchTarget;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public whitelist onSearchSessionCreated(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .registers 5
    .param p1, "context"    # Landroid/app/search/SearchContext;
    .param p2, "sessionId"    # Landroid/app/search/SearchSessionId;

    .line 166
    iget-object v0, p0, Landroid/service/search/SearchUiService;->mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public whitelist onStartUpdateEmptyQueryResult()V
    .registers 1

    .line 215
    return-void
.end method

.method public whitelist onStopUpdateEmptyQueryResult()V
    .registers 1

    .line 260
    return-void
.end method

.method public final whitelist updateEmptyQueryResult(Landroid/app/search/SearchSessionId;Ljava/util/List;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/search/SearchSessionId;",
            "Ljava/util/List<",
            "Landroid/app/search/SearchTarget;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/search/SearchTarget;>;"
    iget-object v0, p0, Landroid/service/search/SearchUiService;->mSessionEmptyQueryResultCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 281
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/service/search/SearchUiService$CallbackWrapper;>;"
    if-eqz v0, :cond_1e

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/search/SearchUiService$CallbackWrapper;

    .line 283
    .local v2, "callback":Landroid/service/search/SearchUiService$CallbackWrapper;
    invoke-virtual {v2, p2}, Landroid/service/search/SearchUiService$CallbackWrapper;->accept(Ljava/util/List;)V

    .line 284
    .end local v2    # "callback":Landroid/service/search/SearchUiService$CallbackWrapper;
    goto :goto_e

    .line 286
    :cond_1e
    return-void
.end method
