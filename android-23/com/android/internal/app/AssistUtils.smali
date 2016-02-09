.class public Lcom/android/internal/app/AssistUtils;
.super Ljava/lang/Object;
.source "AssistUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssistUtils"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    #@5
    .line 46
    const-string/jumbo v0, "voiceinteraction"

    #@8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    .line 45
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@12
    .line 43
    return-void
.end method


# virtual methods
.method public activeServiceSupportsAssistGesture()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 75
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@7
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsAssist()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    .line 74
    :cond_0
    return v1

    #@c
    .line 76
    :catch_0
    move-exception v0

    #@d
    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AssistUtils"

    #@10
    const-string/jumbo v3, "Failed to call activeServiceSupportsAssistGesture"

    #@13
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 78
    return v1
.end method

.method public activeServiceSupportsLaunchFromKeyguard()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 85
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@7
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsLaunchFromKeyguard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    .line 84
    :cond_0
    return v1

    #@c
    .line 86
    :catch_0
    move-exception v0

    #@d
    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AssistUtils"

    #@10
    const-string/jumbo v3, "Failed to call activeServiceSupportsLaunchFromKeyguard"

    #@13
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 88
    return v1
.end method

.method public getActiveServiceComponentName()Landroid/content/ComponentName;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 95
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@7
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getActiveServiceComponentName()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 97
    :cond_0
    return-object v3

    #@d
    .line 99
    :catch_0
    move-exception v0

    #@e
    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AssistUtils"

    #@11
    const-string/jumbo v2, "Failed to call getActiveServiceComponentName"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 101
    return-object v3
.end method

.method public getAssistComponentForUser(I)Landroid/content/ComponentName;
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 136
    iget-object v4, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v4

    #@7
    .line 137
    const-string/jumbo v5, "assistant"

    #@a
    .line 136
    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 138
    .local v3, "setting":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@10
    .line 139
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@13
    move-result-object v4

    #@14
    return-object v4

    #@15
    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->activeServiceSupportsAssistGesture()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 144
    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    #@1e
    move-result-object v4

    #@1f
    return-object v4

    #@20
    .line 147
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    #@22
    const-string/jumbo v5, "search"

    #@25
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Landroid/app/SearchManager;

    #@2b
    .line 148
    const/4 v5, 0x0

    #@2c
    .line 147
    invoke-virtual {v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    #@2f
    move-result-object v1

    #@30
    .line 149
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    #@32
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@35
    move-result-object v2

    #@36
    .line 150
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    #@38
    invoke-virtual {v2, v1, v4, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@3b
    move-result-object v0

    #@3c
    .line 152
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    #@3e
    .line 153
    new-instance v4, Landroid/content/ComponentName;

    #@40
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@42
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@44
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@46
    .line 154
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@48
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@4a
    .line 153
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    return-object v4

    #@4e
    .line 156
    :cond_2
    return-object v6
.end method

.method public hideCurrentSession()V
    .locals 3

    #@0
    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 118
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@6
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideCurrentSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 115
    :cond_0
    :goto_0
    return-void

    #@a
    .line 120
    :catch_0
    move-exception v0

    #@b
    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AssistUtils"

    #@e
    const-string/jumbo v2, "Failed to call hideCurrentSession"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public isSessionRunning()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 108
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@7
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->isSessionRunning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    .line 107
    :cond_0
    return v1

    #@c
    .line 109
    :catch_0
    move-exception v0

    #@d
    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AssistUtils"

    #@10
    const-string/jumbo v3, "Failed to call isSessionRunning"

    #@13
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 111
    return v1
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 3

    #@0
    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 65
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@6
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->launchVoiceAssistFromKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 62
    :cond_0
    :goto_0
    return-void

    #@a
    .line 67
    :catch_0
    move-exception v0

    #@b
    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AssistUtils"

    #@e
    const-string/jumbo v2, "Failed to call launchVoiceAssistFromKeyguard"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public onLockscreenShown()V
    .locals 3

    #@0
    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 128
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@6
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->onLockscreenShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 125
    :cond_0
    :goto_0
    return-void

    #@a
    .line 130
    :catch_0
    move-exception v0

    #@b
    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AssistUtils"

    #@e
    const-string/jumbo v2, "Failed to call onLockscreenShown"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 53
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@6
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 56
    :catch_0
    move-exception v0

    #@c
    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AssistUtils"

    #@f
    const-string/jumbo v2, "Failed to call showSessionForActiveService"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@16
    return v1
.end method
