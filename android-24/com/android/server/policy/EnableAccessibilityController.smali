.class public Lcom/android/server/policy/EnableAccessibilityController;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/EnableAccessibilityController$1;
    }
.end annotation


# static fields
.field private static final ENABLE_ACCESSIBILITY_DELAY_MILLIS:I = 0x1770

.field public static final MESSAGE_ENABLE_ACCESSIBILITY:I = 0x3

.field public static final MESSAGE_SPEAK_ENABLE_CANCELED:I = 0x2

.field public static final MESSAGE_SPEAK_WARNING:I = 0x1

.field private static final SPEAK_WARNING_DELAY_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "EnableAccessibilityController"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFirstPointerDownX:F

.field private mFirstPointerDownY:F

.field private final mHandler:Landroid/os/Handler;

.field private final mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

.field private mSecondPointerDownX:F

.field private mSecondPointerDownY:F

.field private final mTone:Landroid/media/Ringtone;

.field private final mTouchSlop:F

.field private final mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/EnableAccessibilityController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mDestroyed:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/media/Ringtone;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/EnableAccessibilityController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->enableAccessibility()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onAccessibilityEnabledCallback"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/policy/EnableAccessibilityController$1;-><init>(Lcom/android/server/policy/EnableAccessibilityController;)V

    #@8
    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@a
    .line 87
    const-string/jumbo v0, "accessibility"

    #@d
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    .line 86
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    #@17
    .line 107
    iput-object p1, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    #@19
    .line 108
    iput-object p2, p0, Lcom/android/server/policy/EnableAccessibilityController;->mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    #@1b
    .line 109
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    #@1d
    const-string/jumbo v1, "user"

    #@20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/os/UserManager;

    #@26
    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    #@28
    .line 110
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    #@2a
    new-instance v1, Lcom/android/server/policy/EnableAccessibilityController$2;

    #@2c
    invoke-direct {v1, p0}, Lcom/android/server/policy/EnableAccessibilityController$2;-><init>(Lcom/android/server/policy/EnableAccessibilityController;)V

    #@2f
    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    #@32
    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    #@34
    .line 118
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@36
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    #@3c
    .line 119
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    #@3e
    const/4 v1, 0x3

    #@3f
    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    #@42
    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@45
    move-result-object v0

    #@46
    .line 121
    const v1, 0x105008d

    #@49
    .line 120
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@4c
    move-result v0

    #@4d
    int-to-float v0, v0

    #@4e
    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTouchSlop:F

    #@50
    .line 106
    return-void
.end method

.method public static canEnableAccessibilityViaGesture(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 125
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@5
    move-result-object v0

    #@6
    .line 128
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 129
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19
    move-result-object v3

    #@1a
    .line 136
    const-string/jumbo v4, "enable_accessibility_global_gesture_enabled"

    #@1d
    .line 135
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@20
    move-result v3

    #@21
    if-ne v3, v2, :cond_1

    #@23
    .line 137
    invoke-static {p0}, Lcom/android/server/policy/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    #@26
    move-result-object v3

    #@27
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_3

    #@2d
    .line 135
    :cond_1
    :goto_0
    return v1

    #@2e
    .line 131
    :cond_2
    return v1

    #@2f
    :cond_3
    move v1, v2

    #@30
    .line 137
    goto :goto_0
.end method

.method private cancel()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v1, 0x1

    #@2
    .line 211
    iput-boolean v1, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    #@4
    .line 212
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 213
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@11
    .line 217
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@13
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@16
    .line 210
    return-void

    #@17
    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@19
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 215
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@21
    const/4 v1, 0x2

    #@22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@25
    goto :goto_0
.end method

.method public static disableAccessibility(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 257
    const-string/jumbo v4, "accessibility"

    #@3
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v4

    #@7
    .line 256
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@a
    move-result-object v0

    #@b
    .line 258
    .local v0, "accessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    invoke-static {p0}, Lcom/android/server/policy/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServiceComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    #@e
    move-result-object v1

    #@f
    .line 259
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    #@11
    .line 260
    return-void

    #@12
    .line 263
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@15
    move-result v3

    #@16
    .line 265
    .local v3, "userId":I
    :try_start_0
    invoke-interface {v0, v1, v3}, Landroid/view/accessibility/IAccessibilityManager;->disableAccessibilityService(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 255
    :goto_0
    return-void

    #@1a
    .line 266
    :catch_0
    move-exception v2

    #@1b
    .line 267
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "EnableAccessibilityController"

    #@1e
    new-instance v5, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v6, "cannot disable accessibility "

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    goto :goto_0
.end method

.method private enableAccessibility()V
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->enableAccessibility(Landroid/content/Context;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 222
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    #@a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@d
    .line 220
    :cond_0
    return-void
.end method

.method public static enableAccessibility(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 228
    const-string/jumbo v8, "accessibility"

    #@4
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v8

    #@8
    .line 227
    invoke-static {v8}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@b
    move-result-object v0

    #@c
    .line 230
    .local v0, "accessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    const-class v8, Landroid/view/WindowManagerInternal;

    #@e
    .line 229
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@11
    move-result-object v7

    #@12
    check-cast v7, Landroid/view/WindowManagerInternal;

    #@14
    .line 232
    .local v7, "windowManager":Landroid/view/WindowManagerInternal;
    const-string/jumbo v8, "user"

    #@17
    .line 231
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    check-cast v6, Landroid/os/UserManager;

    #@1d
    .line 233
    .local v6, "userManager":Landroid/os/UserManager;
    invoke-static {p0}, Lcom/android/server/policy/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServiceComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    #@20
    move-result-object v1

    #@21
    .line 234
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    #@23
    .line 235
    const/4 v8, 0x0

    #@24
    return v8

    #@25
    .line 238
    :cond_0
    invoke-virtual {v7}, Landroid/view/WindowManagerInternal;->isKeyguardLocked()Z

    #@28
    move-result v4

    #@29
    .line 239
    .local v4, "keyguardLocked":Z
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@2c
    move-result-object v8

    #@2d
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@30
    move-result v8

    #@31
    if-le v8, v11, :cond_2

    #@33
    const/4 v3, 0x1

    #@34
    .line 241
    .local v3, "hasMoreThanOneUser":Z
    :goto_0
    if-eqz v4, :cond_3

    #@36
    if-eqz v3, :cond_3

    #@38
    .line 244
    if-eqz v4, :cond_1

    #@3a
    .line 246
    const/4 v8, 0x1

    #@3b
    .line 245
    :try_start_0
    invoke-interface {v0, v1, v8}, Landroid/view/accessibility/IAccessibilityManager;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    #@3e
    .line 252
    :cond_1
    :goto_1
    return v11

    #@3f
    .line 239
    .end local v3    # "hasMoreThanOneUser":Z
    :cond_2
    const/4 v3, 0x0

    #@40
    .restart local v3    # "hasMoreThanOneUser":Z
    goto :goto_0

    #@41
    .line 242
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@44
    move-result v5

    #@45
    .line 243
    .local v5, "userId":I
    invoke-interface {v0, v1, v5}, Landroid/view/accessibility/IAccessibilityManager;->enableAccessibilityService(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    goto :goto_1

    #@49
    .line 248
    .end local v5    # "userId":I
    :catch_0
    move-exception v2

    #@4a
    .line 249
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "EnableAccessibilityController"

    #@4d
    new-instance v9, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v10, "cannot enable accessibilty: "

    #@55
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v9

    #@61
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    goto :goto_1
.end method

.method public static getInstalledSpeakingAccessibilityServiceComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 283
    invoke-static {p0}, Lcom/android/server/policy/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 284
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 285
    const/4 v2, 0x0

    #@b
    return-object v2

    #@c
    .line 288
    :cond_0
    const/4 v2, 0x0

    #@d
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@13
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@16
    move-result-object v2

    #@17
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@19
    .line 289
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/ComponentName;

    #@1b
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@1d
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@1f
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    return-object v2
.end method

.method public static getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 143
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    #@c
    move-result-object v3

    #@d
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@10
    .line 145
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v0

    #@14
    .line 146
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@20
    .line 148
    .local v1, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@22
    and-int/lit8 v3, v3, 0x1

    #@24
    if-nez v3, :cond_0

    #@26
    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@29
    goto :goto_0

    #@2a
    .line 152
    .end local v1    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return-object v2
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 273
    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    #@4
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    #@a
    .line 274
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    #@d
    move-result-object v1

    #@e
    .line 276
    .local v1, "enabledServices":Ljava/util/List;
    if-eqz v1, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    :cond_0
    :goto_0
    return v2

    #@17
    :cond_1
    move v2, v3

    #@18
    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 156
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mDestroyed:Z

    #@3
    .line 155
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x5

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x2

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 162
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownX:F

    #@16
    .line 163
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownY:F

    #@1c
    .line 164
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    #@1f
    move-result v0

    #@20
    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownX:F

    #@22
    .line 165
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    #@25
    move-result v0

    #@26
    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownY:F

    #@28
    .line 166
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@2a
    .line 167
    const-wide/16 v2, 0x7d0

    #@2c
    .line 166
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@2f
    .line 168
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@31
    .line 169
    const-wide/16 v2, 0x1770

    #@33
    .line 168
    const/4 v1, 0x3

    #@34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@37
    .line 170
    return v4

    #@38
    .line 172
    :cond_0
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@5
    move-result v2

    #@6
    .line 177
    .local v2, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@9
    move-result v0

    #@a
    .line 178
    .local v0, "action":I
    iget-boolean v4, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 179
    if-ne v0, v8, :cond_0

    #@10
    .line 180
    iput-boolean v5, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    #@12
    .line 182
    :cond_0
    return v8

    #@13
    .line 184
    :cond_1
    packed-switch v0, :pswitch_data_0

    #@16
    .line 207
    :cond_2
    :goto_0
    :pswitch_0
    return v8

    #@17
    .line 186
    :pswitch_1
    const/4 v4, 0x2

    #@18
    if-le v2, v4, :cond_2

    #@1a
    .line 187
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    #@1d
    goto :goto_0

    #@1e
    .line 191
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    #@21
    move-result v4

    #@22
    .line 192
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    #@25
    move-result v5

    #@26
    iget v6, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownX:F

    #@28
    iget v7, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownY:F

    #@2a
    .line 191
    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    #@2d
    move-result v1

    #@2e
    .line 193
    .local v1, "firstPointerMove":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@31
    move-result v4

    #@32
    iget v5, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTouchSlop:F

    #@34
    cmpl-float v4, v4, v5

    #@36
    if-lez v4, :cond_3

    #@38
    .line 194
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    #@3b
    .line 196
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    #@3e
    move-result v4

    #@3f
    .line 197
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    #@42
    move-result v5

    #@43
    iget v6, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownX:F

    #@45
    iget v7, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownY:F

    #@47
    .line 196
    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    #@4a
    move-result v3

    #@4b
    .line 198
    .local v3, "secondPointerMove":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@4e
    move-result v4

    #@4f
    iget v5, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTouchSlop:F

    #@51
    cmpl-float v4, v4, v5

    #@53
    if-lez v4, :cond_2

    #@55
    .line 199
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    #@58
    goto :goto_0

    #@59
    .line 204
    .end local v1    # "firstPointerMove":F
    .end local v3    # "secondPointerMove":F
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    #@5c
    goto :goto_0

    #@5d
    .line 184
    nop

    #@5e
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
