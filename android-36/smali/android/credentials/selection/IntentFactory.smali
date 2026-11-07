.class public Landroid/credentials/selection/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredManIntentHelper"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    return-void
.end method

.method public static blacklist createCancelUiIntent(Landroid/content/Context;Landroid/os/IBinder;ZLjava/lang/String;I)Landroid/content/Intent;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestToken"    # Landroid/os/IBinder;
    .param p2, "shouldShowCancellationUi"    # Z
    .param p3, "appPackageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/credentials/selection/IntentCreationResult$Builder;

    invoke-direct {v1, v0}, Landroid/credentials/selection/IntentCreationResult$Builder;-><init>(Landroid/content/Intent;)V

    .line 154
    .local v1, "intentResultBuilder":Landroid/credentials/selection/IntentCreationResult$Builder;
    invoke-static {p0, v0, v1, p4}, Landroid/credentials/selection/IntentFactory;->setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;I)V

    .line 155
    new-instance v2, Landroid/credentials/selection/CancelSelectionRequest;

    new-instance v3, Landroid/credentials/selection/RequestToken;

    invoke-direct {v3, p1}, Landroid/credentials/selection/RequestToken;-><init>(Landroid/os/IBinder;)V

    invoke-direct {v2, v3, p2, p3}, Landroid/credentials/selection/CancelSelectionRequest;-><init>(Landroid/credentials/selection/RequestToken;ZLjava/lang/String;)V

    const-string v3, "android.credentials.selection.extra.CANCEL_UI_REQUEST"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 158
    return-object v0
.end method

.method public static blacklist createCredentialSelectorIntent(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestInfo"    # Landroid/credentials/selection/RequestInfo;
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/ProviderData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 139
    .local p2, "enabledProviderDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/ProviderData;>;"
    .local p3, "disabledProviderDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/DisabledProviderData;>;"
    invoke-static/range {p0 .. p5}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method public static blacklist createCredentialSelectorIntentForAutofill(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestInfo"    # Landroid/credentials/selection/RequestInfo;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    .line 73
    .local p2, "disabledProviderDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/DisabledProviderData;>;"
    invoke-static {p0, p1, p2, p3, p4}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestInfo"    # Landroid/credentials/selection/RequestInfo;
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/ProviderData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    .line 105
    .local p2, "enabledProviderDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/ProviderData;>;"
    .local p3, "disabledProviderDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/DisabledProviderData;>;"
    invoke-static {p0, p1, p3, p4, p5}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object v0

    .line 107
    .local v0, "result":Landroid/credentials/selection/IntentCreationResult;
    invoke-virtual {v0}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.credentials.selection.extra.ENABLED_PROVIDER_DATA_LIST"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 109
    return-object v0
.end method

.method private static blacklist createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestInfo"    # Landroid/credentials/selection/RequestInfo;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    .line 172
    .local p2, "disabledProviderDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/DisabledProviderData;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/credentials/selection/IntentCreationResult$Builder;

    invoke-direct {v1, v0}, Landroid/credentials/selection/IntentCreationResult$Builder;-><init>(Landroid/content/Intent;)V

    .line 174
    .local v1, "intentResultBuilder":Landroid/credentials/selection/IntentCreationResult$Builder;
    invoke-static {p0, v0, v1, p4}, Landroid/credentials/selection/IntentFactory;->setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;I)V

    .line 175
    const-string v2, "android.credentials.selection.extra.DISABLED_PROVIDER_DATA_LIST"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 177
    const-string v2, "android.credentials.selection.extra.REQUEST_INFO"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    nop

    .line 179
    invoke-static {p3}, Landroid/credentials/selection/IntentFactory;->toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 178
    const-string v3, "android.credentials.selection.extra.RESULT_RECEIVER"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    invoke-virtual {v1}, Landroid/credentials/selection/IntentCreationResult$Builder;->build()Landroid/credentials/selection/IntentCreationResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getOemOverrideComponentName(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult$Builder;I)Landroid/content/ComponentName;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentResultBuilder"    # Landroid/credentials/selection/IntentCreationResult$Builder;
    .param p2, "userId"    # I

    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, "result":Landroid/content/ComponentName;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 225
    const v2, 0x10402a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "oemComponentString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "CredManIntentHelper"

    if-nez v2, :cond_d7

    .line 229
    const/4 v2, 0x0

    .line 231
    .local v2, "oemComponentName":Landroid/content/ComponentName;
    :try_start_15
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1b

    move-object v2, v4

    .line 235
    goto :goto_3c

    .line 233
    :catch_1b
    move-exception v4

    .line 234
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse OEM component name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3c
    if-eqz v2, :cond_cc

    .line 238
    :try_start_3e
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 240
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->propagateUserContextForIntentCreation()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 242
    const-wide/32 v5, 0x100000

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v5

    .line 241
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .local v4, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_65

    .line 245
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    :cond_5b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v4, v2, v5, v6, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 248
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    :goto_65
    const/4 v5, 0x0

    .line 249
    .local v5, "oemComponentEnabled":Z
    if-eqz v4, :cond_a8

    .line 250
    iget-boolean v6, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 251
    .end local v5    # "oemComponentEnabled":Z
    .local v6, "oemComponentEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 252
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    .line 253
    .local v5, "runtimeComponentEnabledState":I
    const/4 v7, 0x1

    if-ne v5, v7, :cond_77

    .line 255
    const/4 v6, 0x1

    goto :goto_7b

    .line 256
    :cond_77
    const/4 v7, 0x2

    if-ne v5, v7, :cond_7b

    .line 258
    const/4 v6, 0x0

    .line 260
    :cond_7b
    :goto_7b
    if-eqz v6, :cond_9e

    iget-boolean v7, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v7, :cond_9e

    .line 261
    sget-object v7, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->SUCCESS:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, v7}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found enabled oem CredMan UI component."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move-object v0, v2

    goto :goto_a8

    .line 268
    :cond_9e
    sget-object v7, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_FOUND_BUT_NOT_ENABLED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, v7}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 270
    const-string v7, "Found enabled oem CredMan UI component but it was not enabled."

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_a8} :catch_a9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_a8} :catch_a9

    .line 280
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v5    # "runtimeComponentEnabledState":I
    .end local v6    # "oemComponentEnabled":Z
    :cond_a8
    :goto_a8
    goto :goto_d6

    .line 275
    :catch_a9
    move-exception v4

    .line 276
    .local v4, "e":Landroid/util/AndroidException;
    sget-object v5, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, v5}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find oem CredMan UI component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Landroid/util/AndroidException;
    goto :goto_a8

    .line 282
    :cond_cc
    sget-object v4, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, v4}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 284
    const-string v4, "Invalid OEM ComponentName format."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v2    # "oemComponentName":Landroid/content/ComponentName;
    :goto_d6
    goto :goto_e1

    .line 287
    :cond_d7
    sget-object v2, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_NOT_SPECIFIED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, v2}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    .line 289
    const-string v2, "Invalid empty OEM component name."

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_e1
    return-object v0
.end method

.method private static blacklist setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;I)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "intentResultBuilder"    # Landroid/credentials/selection/IntentCreationResult$Builder;
    .param p3, "userId"    # I

    .line 186
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->configurableSelectorUiEnabled()Z

    move-result v0

    const v1, 0x1040278

    if-eqz v0, :cond_44

    .line 187
    invoke-static {p0, p2, p3}, Landroid/credentials/selection/IntentFactory;->getOemOverrideComponentName(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult$Builder;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 190
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 193
    .local v2, "fallbackUiComponentName":Landroid/content/ComponentName;
    :try_start_e
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    move-object v2, v1

    .line 196
    nop

    .line 197
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {p2, v1}, Landroid/credentials/selection/IntentCreationResult$Builder;->setFallbackUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_24

    .line 200
    goto :goto_3d

    .line 198
    :catch_24
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fallback CredMan IU not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CredManIntentHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3d
    if-nez v0, :cond_40

    .line 203
    move-object v0, v2

    .line 206
    :cond_40
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "fallbackUiComponentName":Landroid/content/ComponentName;
    goto :goto_53

    .line 208
    :cond_44
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 211
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :goto_53
    return-void
.end method

.method private static blacklist toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/ResultReceiver;",
            ">(TT;)",
            "Landroid/os/ResultReceiver;"
        }
    .end annotation

    .line 300
    .local p0, "resultReceiver":Landroid/os/ResultReceiver;, "TT;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 302
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 304
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 305
    .local v1, "ipcFriendly":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    return-object v1
.end method
