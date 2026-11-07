.class public final Landroid/view/textservice/TextServicesManager;
.super Ljava/lang/Object;
.source "TextServicesManager.java"


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static greylist-max-o sInstance:Landroid/view/textservice/TextServicesManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final blacklist mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final greylist-max-o mService:Lcom/android/internal/textservice/ITextServicesManager;

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    const-class v0, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/view/inputmethod/InputMethodManager;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    nop

    .line 105
    const-string/jumbo v0, "textservices"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    .line 106
    iput p1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    .line 107
    iput-object p2, p0, Landroid/view/textservice/TextServicesManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 108
    return-void
.end method

.method public static blacklist createInstance(Landroid/content/Context;)Landroid/view/textservice/TextServicesManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 122
    new-instance v0, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/TextServicesManager;-><init>(ILandroid/view/inputmethod/InputMethodManager;)V

    return-object v0
.end method

.method public static greylist getInstance()Landroid/view/textservice/TextServicesManager;
    .registers 4

    .line 133
    const-class v0, Landroid/view/textservice/TextServicesManager;

    monitor-enter v0

    .line 134
    :try_start_3
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1f

    if-nez v1, :cond_1b

    .line 136
    :try_start_7
    new-instance v1, Landroid/view/textservice/TextServicesManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/textservice/TextServicesManager;-><init>(ILandroid/view/inputmethod/InputMethodManager;)V

    sput-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_13
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_13} :catch_14
    .catchall {:try_start_7 .. :try_end_13} :catchall_1f

    .line 139
    goto :goto_1b

    .line 137
    :catch_14
    move-exception v1

    .line 138
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_15
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 141
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_1b
    :goto_1b
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;

    monitor-exit v0

    return-object v1

    .line 142
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private static greylist-max-o parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/lang/String;

    .line 155
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 156
    .local v0, "idx":I
    if-gez v0, :cond_9

    .line 157
    return-object p0

    .line 159
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method blacklist finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 386
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/textservice/ITextServicesManager;->finishSpellCheckerService(ILcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 389
    nop

    .line 390
    return-void

    .line 387
    :catch_9
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .registers 2

    .line 345
    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;
    .registers 4

    .line 330
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 331
    :catch_a
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;
    .registers 4
    .param p1, "allowImplicitlySelectedSubtype"    # Z

    .line 363
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellCheckerSubtype(IZ)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 364
    :catch_9
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getEnabledSpellCheckerInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 316
    .local v0, "enabledSpellCheckers":[Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v0, :cond_b

    .line 317
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 316
    :goto_f
    return-object v1
.end method

.method public greylist-max-r getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesManager;->getEnabledSpellCheckers(I)[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 297
    .local v0, "retval":[Landroid/view/textservice/SpellCheckerInfo;
    return-object v0

    .line 298
    .end local v0    # "retval":[Landroid/view/textservice/SpellCheckerInfo;
    :catch_9
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public whitelist isSpellCheckerEnabled()Z
    .registers 3

    .line 377
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesManager;->isSpellCheckerEnabled(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 378
    :catch_9
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "listener"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;
    .param p4, "referToSpellCheckerLanguageSettings"    # Z

    .line 191
    const/4 v0, 0x7

    .line 194
    .local v0, "supportedAttributes":I
    new-instance v1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    invoke-direct {v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;-><init>()V

    .line 195
    invoke-virtual {v1, p2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setLocale(Ljava/util/Locale;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    .line 196
    invoke-virtual {v1, p4}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setShouldReferToSpellCheckerLanguageSettings(Z)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    .line 197
    invoke-virtual {v1, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setSupportedAttributes(I)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    .line 198
    .local v1, "paramsBuilder":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    if-eqz p1, :cond_17

    .line 199
    invoke-virtual {v1, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    .line 202
    :cond_17
    new-instance v2, Landroid/os/HandlerExecutor;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 203
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->build()Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;

    move-result-object v3

    invoke-virtual {p0, v3, v2, p3}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;Ljava/util/concurrent/Executor;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v3

    return-object v3
.end method

.method public whitelist newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;Ljava/util/concurrent/Executor;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;
    .registers 20
    .param p1, "params"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    .line 220
    move-object/from16 v1, p0

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 223
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->shouldReferToSpellCheckerLanguageSettings()Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz v2, :cond_15

    goto :goto_1d

    .line 224
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Locale should not be null if you don\'t refer settings."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1d
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->shouldReferToSpellCheckerLanguageSettings()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 229
    return-object v3

    .line 234
    :cond_2b
    :try_start_2b
    iget-object v0, v1, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v4, v1, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v4, v3}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_33} :catch_d0

    move-object v4, v0

    .line 237
    .local v4, "sci":Landroid/view/textservice/SpellCheckerInfo;
    nop

    .line 238
    if-nez v4, :cond_38

    .line 239
    return-object v3

    .line 241
    :cond_38
    const/4 v0, 0x0

    .line 242
    .local v0, "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->shouldReferToSpellCheckerLanguageSettings()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_67

    .line 243
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    .line 244
    if-nez v0, :cond_48

    .line 245
    return-object v3

    .line 247
    :cond_48
    if-eqz v2, :cond_65

    .line 248
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "subtypeLocale":Ljava/lang/String;
    invoke-static {v5}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "subtypeLanguage":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v6, :cond_64

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    goto :goto_64

    .line 253
    .end local v5    # "subtypeLocale":Ljava/lang/String;
    .end local v7    # "subtypeLanguage":Ljava/lang/String;
    :cond_63
    goto :goto_65

    .line 251
    .restart local v5    # "subtypeLocale":Ljava/lang/String;
    .restart local v7    # "subtypeLanguage":Ljava/lang/String;
    :cond_64
    :goto_64
    return-object v3

    .line 269
    .end local v5    # "subtypeLocale":Ljava/lang/String;
    .end local v7    # "subtypeLanguage":Ljava/lang/String;
    :cond_65
    :goto_65
    move-object v5, v0

    goto :goto_9c

    .line 255
    :cond_67
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "localeStr":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6c
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v8

    if-ge v7, v8, :cond_9b

    .line 257
    invoke-virtual {v4, v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    .line 258
    .local v8, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, "tempSubtypeLocale":Ljava/lang/String;
    invoke-static {v9}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 260
    .local v10, "tempSubtypeLanguage":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_87

    .line 261
    move-object v0, v8

    .line 262
    move-object v5, v0

    goto :goto_9c

    .line 263
    :cond_87
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v6, :cond_98

    .line 264
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_98

    .line 265
    move-object v0, v8

    .line 256
    .end local v8    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v9    # "tempSubtypeLocale":Ljava/lang/String;
    .end local v10    # "tempSubtypeLanguage":Ljava/lang/String;
    :cond_98
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    :cond_9b
    move-object v5, v0

    .line 269
    .end local v0    # "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v7    # "i":I
    .local v5, "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    :goto_9c
    if-nez v5, :cond_9f

    .line 270
    return-object v3

    .line 272
    :cond_9f
    new-instance v0, Landroid/view/textservice/SpellCheckerSession;

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct {v0, v4, v1, v7, v6}, Landroid/view/textservice/SpellCheckerSession;-><init>(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Ljava/util/concurrent/Executor;)V

    move-object v3, v0

    .line 274
    .local v3, "session":Landroid/view/textservice/SpellCheckerSession;
    :try_start_a9
    iget-object v8, v1, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v9, v1, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    .line 275
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerSession;->getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v12

    .line 276
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerSession;->getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v13

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->getSupportedAttributes()I

    move-result v15

    .line 274
    invoke-interface/range {v8 .. v15}, Lcom/android/internal/textservice/ITextServicesManager;->getSpellCheckerService(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_c8} :catch_ca

    .line 280
    nop

    .line 281
    return-object v3

    .line 278
    :catch_ca
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 235
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "session":Landroid/view/textservice/SpellCheckerSession;
    .end local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v5    # "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    :catch_d0
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 236
    .restart local v0    # "e":Landroid/os/RemoteException;
    return-object v3
.end method
