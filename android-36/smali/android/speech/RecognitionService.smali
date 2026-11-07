.class public abstract Landroid/speech/RecognitionService;
.super Landroid/app/Service;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/RecognitionService$RecognitionServiceBinder;,
        Landroid/speech/RecognitionService$SessionState;,
        Landroid/speech/RecognitionService$Callback;,
        Landroid/speech/RecognitionService$SupportCallback;,
        Landroid/speech/RecognitionService$ModelDownloadArgs;,
        Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;,
        Landroid/speech/RecognitionService$StartListeningArgs;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist DEFAULT_MAX_CONCURRENT_SESSIONS_COUNT:I = 0x1

.field private static final greylist-max-o MSG_CANCEL:I = 0x3

.field private static final blacklist MSG_CHECK_RECOGNITION_SUPPORT:I = 0x5

.field private static final greylist-max-o MSG_RESET:I = 0x4

.field private static final greylist-max-o MSG_START_LISTENING:I = 0x1

.field private static final greylist-max-o MSG_STOP_LISTENING:I = 0x2

.field private static final blacklist MSG_TRIGGER_MODEL_DOWNLOAD:I = 0x6

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.speech.RecognitionService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.speech"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecognitionService"


# instance fields
.field private final greylist-max-o mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final blacklist mSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/speech/RecognitionService$SessionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$pi72R5se-QW6gl4Z1BYAcvnKibs(Landroid/speech/RecognitionService;Landroid/content/AttributionSource;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->handleAttributionContextCreation(Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchCancel(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchCancel(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchCheckRecognitionSupport(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService;->dispatchCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchClearCallback(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchClearCallback(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchStartListening(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService;->dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchStopListening(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchStopListening(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchTriggerModelDownload(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService;->dispatchTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    .line 82
    new-instance v0, Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    .line 96
    new-instance v0, Landroid/speech/RecognitionService$1;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$1;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist checkPermissionAndStartDataDelivery(Landroid/speech/RecognitionService$SessionState;)Z
    .registers 6
    .param p1, "sessionState"    # Landroid/speech/RecognitionService$SessionState;

    .line 855
    invoke-static {p1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/RecognitionService$Callback;->-$$Nest$fgetmAttributionContextCreated(Landroid/speech/RecognitionService$Callback;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 856
    return v1

    .line 859
    :cond_c
    invoke-static {p1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Landroid/speech/RecognitionService$Callback;->getAttributionContextForCaller()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 859
    const-string v2, "android.permission.RECORD_AUDIO"

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/content/PermissionChecker;->checkPermissionAndStartDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_24

    .line 865
    invoke-static {p1, v1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fputmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;Z)V

    .line 868
    :cond_24
    invoke-static {p1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;)Z

    move-result v0

    return v0
.end method

.method private blacklist checkPermissionForPreflightNotHardDenied(Landroid/content/AttributionSource;)Z
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 872
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    .line 874
    .local v0, "result":I
    const/4 v1, 0x1

    if-eqz v0, :cond_d

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method private greylist-max-o dispatchCancel(Landroid/speech/IRecognitionListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .line 195
    iget-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService$SessionState;

    .line 196
    .local v0, "sessionState":Landroid/speech/RecognitionService$SessionState;
    if-nez v0, :cond_16

    .line 197
    const-string v1, "RecognitionService"

    const-string v2, "#cancel received for a listener which has not started a session - ignoring this call."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 200
    :cond_16
    invoke-static {v0}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/speech/RecognitionService;->onCancel(Landroid/speech/RecognitionService$Callback;)V

    .line 201
    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchClearCallback(Landroid/speech/IRecognitionListener;)V

    .line 203
    :goto_20
    return-void
.end method

.method private blacklist dispatchCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Landroid/speech/IRecognitionSupportCallback;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 220
    new-instance v0, Landroid/speech/RecognitionService$SupportCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/speech/RecognitionService$SupportCallback;-><init>(Landroid/speech/IRecognitionSupportCallback;Landroid/speech/RecognitionService-IA;)V

    invoke-virtual {p0, p1, p3, v0}, Landroid/speech/RecognitionService;->onCheckRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/RecognitionService$SupportCallback;)V

    .line 224
    return-void
.end method

.method private blacklist dispatchClearCallback(Landroid/speech/IRecognitionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .line 206
    iget-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService$SessionState;

    .line 207
    .local v0, "sessionState":Landroid/speech/RecognitionService$SessionState;
    if-eqz v0, :cond_14

    .line 212
    invoke-virtual {p0, v0}, Landroid/speech/RecognitionService;->finishDataDelivery(Landroid/speech/RecognitionService$SessionState;)V

    .line 213
    invoke-virtual {v0}, Landroid/speech/RecognitionService$SessionState;->reset()V

    .line 215
    :cond_14
    return-void
.end method

.method private blacklist dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "currentCallback":Landroid/speech/RecognitionService$Callback;
    iget-object v1, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/RecognitionService$SessionState;

    .line 135
    .local v1, "sessionState":Landroid/speech/RecognitionService$SessionState;
    const-string v2, "RecognitionService"

    if-nez v1, :cond_7c

    .line 136
    :try_start_11
    iget-object v3, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p0}, Landroid/speech/RecognitionService;->getMaxConcurrentSessionsCount()I

    move-result v4

    if-lt v3, v4, :cond_28

    .line 137
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 138
    const-string v3, "#startListening received when the service\'s capacity is full - ignoring this call."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 143
    :cond_28
    const-string v3, "android.speech.extra.AUDIO_SOURCE"

    .line 144
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 145
    invoke-direct {p0, p3}, Landroid/speech/RecognitionService;->checkPermissionForPreflightNotHardDenied(Landroid/content/AttributionSource;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_39

    :cond_37
    const/4 v3, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v3, 0x1

    .line 146
    .local v3, "preflightPermissionCheckPassed":Z
    :goto_3a
    if-eqz v3, :cond_55

    .line 147
    new-instance v4, Landroid/speech/RecognitionService$Callback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p2, p3, v5}, Landroid/speech/RecognitionService$Callback;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;Landroid/speech/RecognitionService-IA;)V

    move-object v0, v4

    .line 148
    new-instance v4, Landroid/speech/RecognitionService$SessionState;

    invoke-direct {v4, v0}, Landroid/speech/RecognitionService$SessionState;-><init>(Landroid/speech/RecognitionService$Callback;)V

    move-object v1, v4

    .line 149
    iget-object v4, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0, p1, v0}, Landroid/speech/RecognitionService;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V

    .line 156
    :cond_55
    if-eqz v3, :cond_5d

    .line 157
    invoke-direct {p0, v1}, Landroid/speech/RecognitionService;->checkPermissionAndStartDataDelivery(Landroid/speech/RecognitionService$SessionState;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 158
    :cond_5d
    const/16 v4, 0x9

    invoke-interface {p2, v4}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 159
    if-eqz v3, :cond_76

    .line 161
    invoke-virtual {p0, v0}, Landroid/speech/RecognitionService;->onCancel(Landroid/speech/RecognitionService$Callback;)V

    .line 162
    iget-object v4, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p0, v1}, Landroid/speech/RecognitionService;->finishDataDelivery(Landroid/speech/RecognitionService$SessionState;)V

    .line 164
    invoke-virtual {v1}, Landroid/speech/RecognitionService$SessionState;->reset()V

    .line 166
    :cond_76
    const-string v4, "#startListening received from a caller without permission android.permission.RECORD_AUDIO."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v3    # "preflightPermissionCheckPassed":Z
    :cond_7b
    goto :goto_85

    .line 170
    :cond_7c
    const/4 v3, 0x5

    invoke-interface {p2, v3}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 171
    const-string v3, "#startListening received for a listener which is already in session - ignoring this call."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_85} :catch_86

    .line 176
    :goto_85
    goto :goto_8c

    .line 174
    :catch_86
    move-exception v3

    .line 175
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "#onError call from #startListening failed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_8c
    return-void
.end method

.method private greylist-max-o dispatchStopListening(Landroid/speech/IRecognitionListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .line 180
    const-string v0, "RecognitionService"

    iget-object v1, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/RecognitionService$SessionState;

    .line 181
    .local v1, "sessionState":Landroid/speech/RecognitionService$SessionState;
    if-nez v1, :cond_21

    .line 183
    const/4 v2, 0x5

    :try_start_11
    invoke-interface {p1, v2}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 186
    goto :goto_1b

    .line 184
    :catch_15
    move-exception v2

    .line 185
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "#onError call from #stopListening failed."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    const-string v2, "#stopListening received for a listener which has not started a session - ignoring this call."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 190
    :cond_21
    invoke-static {v1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionService;->onStopListening(Landroid/speech/RecognitionService$Callback;)V

    .line 192
    :goto_28
    return-void
.end method

.method private blacklist dispatchTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "listener"    # Landroid/speech/IModelDownloadListener;

    .line 230
    if-nez p3, :cond_6

    .line 231
    invoke-virtual {p0, p1, p2}, Landroid/speech/RecognitionService;->onTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;)V

    goto :goto_e

    .line 233
    :cond_6
    new-instance v0, Landroid/speech/RecognitionService$2;

    invoke-direct {v0, p0, p3}, Landroid/speech/RecognitionService$2;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IModelDownloadListener;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/speech/RecognitionService;->onTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/ModelDownloadListener;)V

    .line 303
    :goto_e
    return-void
.end method

.method private blacklist handleAttributionContextCreation(Landroid/content/AttributionSource;)V
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 506
    iget-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/RecognitionService$SessionState;

    .line 507
    .local v1, "sessionState":Landroid/speech/RecognitionService$SessionState;
    invoke-static {v1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object v2

    .line 508
    .local v2, "currentCallback":Landroid/speech/RecognitionService$Callback;
    if-eqz v2, :cond_2a

    invoke-static {v2}, Landroid/speech/RecognitionService$Callback;->-$$Nest$fgetmCallingAttributionSource(Landroid/speech/RecognitionService$Callback;)Landroid/content/AttributionSource;

    move-result-object v3

    .line 509
    invoke-virtual {v3, p1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 510
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/speech/RecognitionService$Callback;->-$$Nest$fputmAttributionContextCreated(Landroid/speech/RecognitionService$Callback;Z)V

    .line 512
    .end local v1    # "sessionState":Landroid/speech/RecognitionService$SessionState;
    .end local v2    # "currentCallback":Landroid/speech/RecognitionService$Callback;
    :cond_2a
    goto :goto_a

    .line 513
    :cond_2b
    return-void
.end method


# virtual methods
.method public whitelist createContext(Landroid/content/ContextParams;)Landroid/content/Context;
    .registers 5
    .param p1, "contextParams"    # Landroid/content/ContextParams;

    .line 493
    invoke-virtual {p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 494
    iget-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 495
    invoke-virtual {p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/RecognitionService;->handleAttributionContextCreation(Landroid/content/AttributionSource;)V

    goto :goto_30

    .line 497
    :cond_1e
    iget-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;-><init>(Landroid/speech/RecognitionService;)V

    .line 499
    invoke-virtual {p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 498
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 497
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 502
    :cond_30
    :goto_30
    invoke-super {p0, p1}, Landroid/app/Service;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method blacklist finishDataDelivery(Landroid/speech/RecognitionService$SessionState;)V
    .registers 4
    .param p1, "sessionState"    # Landroid/speech/RecognitionService$SessionState;

    .line 879
    invoke-static {p1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 880
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fputmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;Z)V

    .line 881
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "op":Ljava/lang/String;
    invoke-static {p1}, Landroid/speech/RecognitionService$SessionState;->-$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    .line 883
    invoke-virtual {v1}, Landroid/speech/RecognitionService$Callback;->getAttributionContextForCaller()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 882
    invoke-static {p0, v0, v1}, Landroid/content/PermissionChecker;->finishDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 885
    .end local v0    # "op":Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method public whitelist getMaxConcurrentSessionsCount()I
    .registers 2

    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 518
    invoke-virtual {p0}, Landroid/speech/RecognitionService;->onBindInternal()V

    .line 519
    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    return-object v0
.end method

.method public blacklist onBindInternal()V
    .registers 1

    .line 525
    return-void
.end method

.method protected abstract whitelist onCancel(Landroid/speech/RecognitionService$Callback;)V
.end method

.method public whitelist onCheckRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/RecognitionService$SupportCallback;)V
    .registers 4
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "supportCallback"    # Landroid/speech/RecognitionService$SupportCallback;

    .line 430
    invoke-virtual {p0, p1, p3}, Landroid/speech/RecognitionService;->onCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/RecognitionService$SupportCallback;)V

    .line 431
    return-void
.end method

.method public whitelist onCheckRecognitionSupport(Landroid/content/Intent;Landroid/speech/RecognitionService$SupportCallback;)V
    .registers 4
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "supportCallback"    # Landroid/speech/RecognitionService$SupportCallback;

    .line 410
    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/speech/RecognitionService$SupportCallback;->onError(I)V

    .line 411
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 3

    .line 530
    iget-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/RecognitionService$SessionState;

    .line 531
    .local v1, "sessionState":Landroid/speech/RecognitionService$SessionState;
    invoke-virtual {p0, v1}, Landroid/speech/RecognitionService;->finishDataDelivery(Landroid/speech/RecognitionService$SessionState;)V

    .line 532
    invoke-virtual {v1}, Landroid/speech/RecognitionService$SessionState;->reset()V

    .line 533
    .end local v1    # "sessionState":Landroid/speech/RecognitionService$SessionState;
    goto :goto_a

    .line 534
    :cond_1d
    iget-object v0, p0, Landroid/speech/RecognitionService;->mSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 535
    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-virtual {v0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;->clearReference()V

    .line 536
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 537
    return-void
.end method

.method protected abstract whitelist onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
.end method

.method protected abstract whitelist onStopListening(Landroid/speech/RecognitionService$Callback;)V
.end method

.method public whitelist onTriggerModelDownload(Landroid/content/Intent;)V
    .registers 2
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 440
    return-void
.end method

.method public whitelist onTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;)V
    .registers 3
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 451
    invoke-virtual {p0, p1}, Landroid/speech/RecognitionService;->onTriggerModelDownload(Landroid/content/Intent;)V

    .line 452
    return-void
.end method

.method public whitelist onTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/ModelDownloadListener;)V
    .registers 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "listener"    # Landroid/speech/ModelDownloadListener;

    .line 487
    const/16 v0, 0xf

    invoke-interface {p3, v0}, Landroid/speech/ModelDownloadListener;->onError(I)V

    .line 488
    return-void
.end method
