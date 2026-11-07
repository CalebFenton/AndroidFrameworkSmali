.class public final Landroid/view/translation/UiTranslationManager;
.super Ljava/lang/Object;
.source "UiTranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;,
        Landroid/view/translation/UiTranslationManager$UiTranslationState;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final blacklist EXTRA_SOURCE_LOCALE:Ljava/lang/String; = "source_locale"

.field public static final blacklist EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final blacklist EXTRA_TARGET_LOCALE:Ljava/lang/String; = "target_locale"

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "UiTranslation"

.field public static final blacklist STATE_UI_TRANSLATION_FINISHED:I = 0x3

.field public static final blacklist STATE_UI_TRANSLATION_PAUSED:I = 0x1

.field public static final blacklist STATE_UI_TRANSLATION_RESUMED:I = 0x2

.field public static final blacklist STATE_UI_TRANSLATION_STARTED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "UiTranslationManager"


# instance fields
.field private final blacklist mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/translation/UiTranslationStateCallback;",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/view/translation/ITranslationManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/ITranslationManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/translation/ITranslationManager;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    .line 159
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 161
    return-void
.end method


# virtual methods
.method public whitelist finishTranslation(Landroid/app/assist/ActivityId;)V
    .registers 12
    .param p1, "activityId"    # Landroid/app/assist/ActivityId;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 229
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 233
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 231
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_24

    .line 237
    nop

    .line 238
    return-void

    .line 235
    :catch_24
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onTranslationFinished(ZLandroid/app/assist/ActivityId;Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "activityDestroyed"    # Z
    .param p2, "activityId"    # Landroid/app/assist/ActivityId;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 370
    :try_start_0
    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    invoke-virtual {p2}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 371
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 370
    invoke-interface {v0, p1, v1, p3, v2}, Landroid/view/translation/ITranslationManager;->onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 374
    nop

    .line 375
    return-void

    .line 372
    :catch_11
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist pauseTranslation(Landroid/app/assist/ActivityId;)V
    .registers 12
    .param p1, "activityId"    # Landroid/app/assist/ActivityId;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 253
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 257
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 255
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_24

    .line 261
    nop

    .line 262
    return-void

    .line 259
    :catch_24
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerUiTranslationStateCallback(Ljava/util/concurrent/Executor;Landroid/view/translation/UiTranslationStateCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/view/translation/UiTranslationStateCallback;

    .line 316
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 319
    :try_start_9
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 320
    const-string v1, "UiTranslationManager"

    const-string/jumbo v2, "registerUiTranslationStateCallback: callback already registered; ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    monitor-exit v0

    return-void

    .line 324
    :cond_1b
    new-instance v1, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;

    invoke-direct {v1, p1, p2}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/view/translation/UiTranslationStateCallback;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_3a

    .line 327
    .local v1, "remoteCallback":Landroid/os/IRemoteCallback;
    :try_start_20
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_34
    .catchall {:try_start_20 .. :try_end_2b} :catchall_3a

    .line 330
    nop

    .line 331
    :try_start_2c
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    nop

    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    monitor-exit v0

    .line 333
    return-void

    .line 328
    .restart local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    :catch_34
    move-exception v2

    .line 329
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/view/translation/UiTranslationManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/view/translation/UiTranslationStateCallback;
    throw v3

    .line 332
    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/translation/UiTranslationManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/view/translation/UiTranslationStateCallback;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public whitelist resumeTranslation(Landroid/app/assist/ActivityId;)V
    .registers 12
    .param p1, "activityId"    # Landroid/app/assist/ActivityId;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 277
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 281
    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 279
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_24

    .line 285
    nop

    .line 286
    return-void

    .line 283
    :catch_24
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist startTranslation(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/app/assist/ActivityId;)V
    .registers 12
    .param p1, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p2, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "activityId"    # Landroid/app/assist/ActivityId;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/app/assist/ActivityId;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    .local p3, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    new-instance v0, Landroid/view/translation/UiTranslationSpec$Builder;

    invoke-direct {v0}, Landroid/view/translation/UiTranslationSpec$Builder;-><init>()V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/translation/UiTranslationSpec$Builder;->setShouldPadContentForCompat(Z)Landroid/view/translation/UiTranslationSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/translation/UiTranslationSpec$Builder;->build()Landroid/view/translation/UiTranslationSpec;

    move-result-object v6

    .line 174
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "sourceSpec":Landroid/view/translation/TranslationSpec;
    .end local p2    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .end local p3    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p4    # "activityId":Landroid/app/assist/ActivityId;
    .local v2, "sourceSpec":Landroid/view/translation/TranslationSpec;
    .local v3, "targetSpec":Landroid/view/translation/TranslationSpec;
    .local v4, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local v5, "activityId":Landroid/app/assist/ActivityId;
    invoke-virtual/range {v1 .. v6}, Landroid/view/translation/UiTranslationManager;->startTranslation(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/app/assist/ActivityId;Landroid/view/translation/UiTranslationSpec;)V

    .line 177
    return-void
.end method

.method public whitelist startTranslation(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/app/assist/ActivityId;Landroid/view/translation/UiTranslationSpec;)V
    .registers 16
    .param p1, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p2, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "activityId"    # Landroid/app/assist/ActivityId;
    .param p5, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/app/assist/ActivityId;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 197
    .local p3, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p4}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_44

    .line 207
    :try_start_1c
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 208
    invoke-virtual {p4}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p4}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2c} :catch_39

    .line 207
    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p5

    .end local p1    # "sourceSpec":Landroid/view/translation/TranslationSpec;
    .end local p2    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .end local p3    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p5    # "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    .local v3, "sourceSpec":Landroid/view/translation/TranslationSpec;
    .local v4, "targetSpec":Landroid/view/translation/TranslationSpec;
    .local v5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local v8, "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    :try_start_31
    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_36

    .line 213
    nop

    .line 214
    return-void

    .line 211
    :catch_36
    move-exception v0

    move-object p1, v0

    goto :goto_3f

    .end local v3    # "sourceSpec":Landroid/view/translation/TranslationSpec;
    .end local v4    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .end local v5    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v8    # "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    .restart local p1    # "sourceSpec":Landroid/view/translation/TranslationSpec;
    .restart local p2    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .restart local p3    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .restart local p5    # "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    :catch_39
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p5

    move-object p1, v0

    .line 212
    .end local p2    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .end local p3    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p5    # "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    .restart local v3    # "sourceSpec":Landroid/view/translation/TranslationSpec;
    .restart local v4    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .restart local v5    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .restart local v8    # "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_3f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 204
    .end local v3    # "sourceSpec":Landroid/view/translation/TranslationSpec;
    .end local v4    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .end local v5    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v8    # "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    .local p1, "sourceSpec":Landroid/view/translation/TranslationSpec;
    .restart local p2    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .restart local p3    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .restart local p5    # "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    :cond_44
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "sourceSpec":Landroid/view/translation/TranslationSpec;
    .end local p2    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .end local p3    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .restart local v3    # "sourceSpec":Landroid/view/translation/TranslationSpec;
    .restart local v4    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .restart local v5    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid empty views: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterUiTranslationStateCallback(Landroid/view/translation/UiTranslationStateCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/view/translation/UiTranslationStateCallback;

    .line 341
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 344
    :try_start_6
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IRemoteCallback;

    .line 345
    .local v1, "remoteCallback":Landroid/os/IRemoteCallback;
    if-nez v1, :cond_1a

    .line 346
    const-string v2, "UiTranslationManager"

    const-string/jumbo v3, "unregisterUiTranslationStateCallback: callback not found; ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_34

    return-void

    .line 350
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_2e
    .catchall {:try_start_1a .. :try_end_25} :catchall_34

    .line 353
    nop

    .line 354
    :try_start_26
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    nop

    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    monitor-exit v0

    .line 356
    return-void

    .line 351
    .restart local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    :catch_2e
    move-exception v2

    .line 352
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/view/translation/UiTranslationManager;
    .end local p1    # "callback":Landroid/view/translation/UiTranslationStateCallback;
    throw v3

    .line 355
    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/translation/UiTranslationManager;
    .restart local p1    # "callback":Landroid/view/translation/UiTranslationStateCallback;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_34

    throw v1
.end method
