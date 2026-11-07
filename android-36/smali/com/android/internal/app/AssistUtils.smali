.class public Lcom/android/internal/app/AssistUtils;
.super Ljava/lang/Object;
.source "AssistUtils.java"


# static fields
.field public static final blacklist INVOCATION_TYPE_ASSIST_BUTTON:I = 0x7

.field public static final blacklist INVOCATION_TYPE_GESTURE:I = 0x1

.field public static final blacklist INVOCATION_TYPE_HOME_BUTTON_LONG_PRESS:I = 0x5

.field public static final blacklist INVOCATION_TYPE_KEY:Ljava/lang/String; = "invocation_type"

.field public static final blacklist INVOCATION_TYPE_LAUNCHER_SYSTEM_SHORTCUT:I = 0x9

.field public static final blacklist INVOCATION_TYPE_NAV_HANDLE_LONG_PRESS:I = 0x8

.field public static final blacklist INVOCATION_TYPE_PHYSICAL_GESTURE:I = 0x2

.field public static final blacklist INVOCATION_TYPE_POWER_BUTTON_LONG_PRESS:I = 0x6

.field public static final blacklist INVOCATION_TYPE_QUICK_SEARCH_BAR:I = 0x4

.field public static final blacklist INVOCATION_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist INVOCATION_TYPE_VOICE:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "AssistUtils"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    .line 73
    nop

    .line 74
    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 75
    return-void
.end method

.method public static blacklist allowDisablingAssistDisclosure(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDisclosureEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_disclosure_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method public static blacklist isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assistant"    # Landroid/content/ComponentName;

    .line 296
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 297
    return v0

    .line 301
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 302
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_1f

    .line 305
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 306
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    :cond_1e
    return v0

    .line 303
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1f
    move-exception v1

    .line 304
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static blacklist shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assistant"    # Landroid/content/ComponentName;

    .line 321
    invoke-static {p0}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 322
    return v1

    .line 325
    :cond_8
    invoke-static {p0}, Lcom/android/internal/app/AssistUtils;->isDisclosureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0, p1}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_16
    return v1
.end method

.method private blacklist showSessionForActiveServiceInternal(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 13
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p5, "activityToken"    # Landroid/os/IBinder;

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_13

    .line 122
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_19

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "args":Landroid/os/Bundle;
    .end local p2    # "sourceFlags":I
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local p5    # "activityToken":Landroid/os/IBinder;
    .local v2, "args":Landroid/os/Bundle;
    .local v3, "sourceFlags":I
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .local v6, "activityToken":Landroid/os/IBinder;
    :try_start_b
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return p1

    .line 125
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .line 127
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "sourceFlags":I
    .end local v4    # "attributionTag":Ljava/lang/String;
    .end local v5    # "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local v6    # "activityToken":Landroid/os/IBinder;
    .restart local p1    # "args":Landroid/os/Bundle;
    .restart local p2    # "sourceFlags":I
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .restart local p5    # "activityToken":Landroid/os/IBinder;
    :cond_13
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "args":Landroid/os/Bundle;
    .end local p2    # "sourceFlags":I
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local p5    # "activityToken":Landroid/os/IBinder;
    .restart local v2    # "args":Landroid/os/Bundle;
    .restart local v3    # "sourceFlags":I
    .restart local v4    # "attributionTag":Ljava/lang/String;
    .restart local v5    # "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .restart local v6    # "activityToken":Landroid/os/IBinder;
    goto :goto_27

    .line 125
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "sourceFlags":I
    .end local v4    # "attributionTag":Ljava/lang/String;
    .end local v5    # "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local v6    # "activityToken":Landroid/os/IBinder;
    .restart local p1    # "args":Landroid/os/Bundle;
    .restart local p2    # "sourceFlags":I
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .restart local p5    # "activityToken":Landroid/os/IBinder;
    :catch_19
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object p1, v0

    .line 126
    .end local p2    # "sourceFlags":I
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local p5    # "activityToken":Landroid/os/IBinder;
    .restart local v2    # "args":Landroid/os/Bundle;
    .restart local v3    # "sourceFlags":I
    .restart local v4    # "attributionTag":Ljava/lang/String;
    .restart local v5    # "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .restart local v6    # "activityToken":Landroid/os/IBinder;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_20
    const-string p2, "AssistUtils"

    const-string p3, "Failed to call showSessionForActiveService"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_27
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public blacklist activeServiceSupportsAssistGesture()Z
    .registers 5

    .line 167
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 168
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsAssist()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_11

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    nop

    .line 167
    :goto_10
    return v0

    .line 169
    :catch_11
    move-exception v1

    .line 170
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call activeServiceSupportsAssistGesture"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    return v0
.end method

.method public blacklist activeServiceSupportsLaunchFromKeyguard()Z
    .registers 5

    .line 177
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 178
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_11

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    nop

    .line 177
    :goto_10
    return v0

    .line 179
    :catch_11
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call activeServiceSupportsLaunchFromKeyguard"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    return v0
.end method

.method public blacklist disableVisualQueryDetection()V
    .registers 4

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 277
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->disableVisualQueryDetection()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 281
    :cond_9
    goto :goto_12

    .line 279
    :catch_a
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to register visual query detection attention listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public blacklist enableVisualQueryDetection(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 264
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->enableVisualQueryDetection(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 268
    :cond_9
    goto :goto_12

    .line 266
    :catch_a
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to register visual query detection attention listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public blacklist getActiveServiceComponentName()Landroid/content/ComponentName;
    .registers 5

    .line 187
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_c

    .line 188
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    return-object v0

    .line 190
    :cond_c
    return-object v0

    .line 192
    :catch_d
    move-exception v1

    .line 193
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call getActiveServiceComponentName"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    return-object v0
.end method

.method public blacklist getActiveServiceSupportedActions(Ljava/util/Set;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 6
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceActionCheckCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .line 142
    .local p1, "voiceActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_e

    .line 143
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    invoke-interface {v0, v1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 152
    :cond_e
    goto :goto_1d

    .line 146
    :catch_f
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call activeServiceSupportedActions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v1, 0x0

    :try_start_18
    invoke-interface {p2, v1}, Lcom/android/internal/app/IVoiceActionCheckCallback;->onComplete(Ljava/util/List;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 151
    goto :goto_1d

    .line 150
    :catch_1c
    move-exception v1

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method public greylist getAssistComponentForUser(I)Landroid/content/ComponentName;
    .registers 4
    .param p1, "userId"    # I

    .line 286
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "setting":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 289
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 291
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist hideCurrentSession()V
    .registers 4

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 211
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideCurrentSession()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 215
    :cond_9
    goto :goto_12

    .line 213
    :catch_a
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call hideCurrentSession"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public blacklist isSessionRunning()Z
    .registers 5

    .line 200
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 201
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->isSessionRunning()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_11

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    nop

    .line 200
    :goto_10
    return v0

    .line 202
    :catch_11
    move-exception v1

    .line 203
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call isSessionRunning"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    return v0
.end method

.method public blacklist launchVoiceAssistFromKeyguard()V
    .registers 4

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->launchVoiceAssistFromKeyguard()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 162
    :cond_9
    goto :goto_12

    .line 160
    :catch_a
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call launchVoiceAssistFromKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public blacklist onLockscreenShown()V
    .registers 4

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->onLockscreenShown()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 225
    :cond_9
    goto :goto_12

    .line 223
    :catch_a
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call onLockscreenShown"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public blacklist registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/app/IVoiceInteractionSessionListener;

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 235
    :cond_9
    goto :goto_12

    .line 233
    :catch_a
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to register voice interaction listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public blacklist showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 11
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "args":Landroid/os/Bundle;
    .end local p2    # "sourceFlags":I
    .end local p3    # "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local p4    # "activityToken":Landroid/os/IBinder;
    .local v1, "args":Landroid/os/Bundle;
    .local v2, "sourceFlags":I
    .local v4, "showCallback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .local v5, "activityToken":Landroid/os/IBinder;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveServiceInternal(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p1

    return p1
.end method

.method public blacklist showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p5, "activityToken"    # Landroid/os/IBinder;

    .line 112
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveServiceInternal(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public blacklist subscribeVisualQueryRecognitionStatus(Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 248
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->subscribeVisualQueryRecognitionStatus(Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 252
    :cond_9
    goto :goto_12

    .line 250
    :catch_a
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to register visual query detection start listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method
