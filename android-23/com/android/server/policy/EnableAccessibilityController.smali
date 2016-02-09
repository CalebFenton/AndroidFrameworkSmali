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

.field private final mWindowManager:Landroid/view/IWindowManager;


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
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/policy/EnableAccessibilityController$1;-><init>(Lcom/android/server/policy/EnableAccessibilityController;)V

    #@8
    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@a
    .line 79
    const-string/jumbo v0, "window"

    #@d
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    .line 78
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    #@17
    .line 82
    const-string/jumbo v0, "accessibility"

    #@1a
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1d
    move-result-object v0

    #@1e
    .line 81
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    #@24
    .line 102
    iput-object p1, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    #@26
    .line 103
    iput-object p2, p0, Lcom/android/server/policy/EnableAccessibilityController;->mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    #@28
    .line 104
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    #@2a
    const-string/jumbo v1, "user"

    #@2d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/os/UserManager;

    #@33
    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    #@35
    .line 105
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    #@37
    new-instance v1, Lcom/android/server/policy/EnableAccessibilityController$2;

    #@39
    invoke-direct {v1, p0}, Lcom/android/server/policy/EnableAccessibilityController$2;-><init>(Lcom/android/server/policy/EnableAccessibilityController;)V

    #@3c
    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    #@3f
    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    #@41
    .line 113
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@43
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    #@49
    .line 114
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    #@4b
    const/4 v1, 0x3

    #@4c
    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    #@4f
    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@52
    move-result-object v0

    #@53
    .line 116
    const v1, 0x1050076

    #@56
    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@59
    move-result v0

    #@5a
    int-to-float v0, v0

    #@5b
    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTouchSlop:F

    #@5d
    .line 101
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
    .line 120
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@5
    move-result-object v0

    #@6
    .line 123
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 124
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
    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19
    move-result-object v3

    #@1a
    .line 131
    const-string/jumbo v4, "enable_accessibility_global_gesture_enabled"

    #@1d
    .line 130
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@20
    move-result v3

    #@21
    if-ne v3, v2, :cond_1

    #@23
    .line 132
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
    .line 130
    :cond_1
    :goto_0
    return v1

    #@2e
    .line 126
    :cond_2
    return v1

    #@2f
    :cond_3
    move v1, v2

    #@30
    .line 132
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
    .line 206
    iput-boolean v1, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    #@4
    .line 207
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@11
    .line 212
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@13
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@16
    .line 205
    return-void

    #@17
    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@19
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 210
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@21
    const/4 v1, 0x2

    #@22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@25
    goto :goto_0
.end method

.method private enableAccessibility()V
    .locals 17

    #@0
    .prologue
    .line 217
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    #@4
    .line 216
    invoke-static {v15}, Lcom/android/server/policy/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    #@7
    move-result-object v13

    #@8
    .line 218
    .local v13, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v15

    #@c
    if-eqz v15, :cond_0

    #@e
    .line 219
    return-void

    #@f
    .line 221
    :cond_0
    const/4 v7, 0x0

    #@10
    .line 223
    .local v7, "keyguardLocked":Z
    :try_start_0
    move-object/from16 v0, p0

    #@12
    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    #@14
    invoke-interface {v15}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    move-result v7

    #@18
    .line 228
    .end local v7    # "keyguardLocked":Z
    :goto_0
    move-object/from16 v0, p0

    #@1a
    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    #@1c
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@1f
    move-result-object v15

    #@20
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@23
    move-result v15

    #@24
    const/16 v16, 0x1

    #@26
    move/from16 v0, v16

    #@28
    if-le v15, v0, :cond_3

    #@2a
    const/4 v5, 0x1

    #@2b
    .line 230
    .local v5, "hasMoreThanOneUser":Z
    :goto_1
    const/4 v15, 0x0

    #@2c
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v10

    #@30
    check-cast v10, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@32
    .line 231
    .local v10, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v15, v10, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@34
    and-int/lit8 v15, v15, 0x4

    #@36
    if-eqz v15, :cond_4

    #@38
    const/4 v3, 0x1

    #@39
    .line 234
    .local v3, "enableTouchExploration":Z
    :goto_2
    if-nez v3, :cond_1

    #@3b
    .line 235
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@3e
    move-result v11

    #@3f
    .line 236
    .local v11, "serviceCount":I
    const/4 v6, 0x1

    #@40
    .local v6, "i":I
    :goto_3
    if-ge v6, v11, :cond_1

    #@42
    .line 237
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@48
    .line 238
    .local v1, "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v15, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@4a
    and-int/lit8 v15, v15, 0x4

    #@4c
    if-eqz v15, :cond_5

    #@4e
    .line 240
    const/4 v3, 0x1

    #@4f
    .line 241
    move-object v10, v1

    #@50
    .line 247
    .end local v1    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v6    # "i":I
    .end local v11    # "serviceCount":I
    :cond_1
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@53
    move-result-object v15

    #@54
    iget-object v12, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@56
    .line 248
    .local v12, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/ComponentName;

    #@58
    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@5a
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@5c
    move-object/from16 v16, v0

    #@5e
    move-object/from16 v0, v16

    #@60
    invoke-direct {v2, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@63
    .line 249
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_6

    #@65
    if-eqz v5, :cond_6

    #@67
    .line 272
    if-eqz v7, :cond_2

    #@69
    .line 274
    :try_start_1
    move-object/from16 v0, p0

    #@6b
    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    #@6d
    invoke-interface {v15, v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@70
    .line 281
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    #@72
    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    #@74
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    #@77
    .line 215
    return-void

    #@78
    .line 228
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "enableTouchExploration":Z
    .end local v5    # "hasMoreThanOneUser":Z
    .end local v10    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_3
    const/4 v5, 0x0

    #@79
    .restart local v5    # "hasMoreThanOneUser":Z
    goto :goto_1

    #@7a
    .line 231
    .restart local v10    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_4
    const/4 v3, 0x0

    #@7b
    .restart local v3    # "enableTouchExploration":Z
    goto :goto_2

    #@7c
    .line 236
    .restart local v1    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v6    # "i":I
    .restart local v11    # "serviceCount":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    #@7e
    goto :goto_3

    #@7f
    .line 250
    .end local v1    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v6    # "i":I
    .end local v11    # "serviceCount":I
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@82
    move-result v14

    #@83
    .line 251
    .local v14, "userId":I
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    .line 252
    .local v4, "enabledServiceString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@89
    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    #@8b
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8e
    move-result-object v9

    #@8f
    .line 255
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v15, "enabled_accessibility_services"

    #@92
    .line 254
    invoke-static {v9, v15, v4, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@95
    .line 259
    const-string/jumbo v15, "touch_exploration_granted_accessibility_services"

    #@98
    .line 258
    invoke-static {v9, v15, v4, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@9b
    .line 262
    if-eqz v3, :cond_7

    #@9d
    .line 263
    const-string/jumbo v15, "touch_exploration_enabled"

    #@a0
    .line 264
    const/16 v16, 0x1

    #@a2
    .line 263
    move/from16 v0, v16

    #@a4
    invoke-static {v9, v15, v0, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@a7
    .line 267
    :cond_7
    const-string/jumbo v15, "accessibility_script_injection"

    #@aa
    .line 268
    const/16 v16, 0x1

    #@ac
    .line 267
    move/from16 v0, v16

    #@ae
    invoke-static {v9, v15, v0, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@b1
    .line 270
    const-string/jumbo v15, "accessibility_enabled"

    #@b4
    .line 271
    const/16 v16, 0x1

    #@b6
    .line 270
    move/from16 v0, v16

    #@b8
    invoke-static {v9, v15, v0, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@bb
    goto :goto_4

    #@bc
    .line 276
    .end local v4    # "enabledServiceString":Ljava/lang/String;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    .end local v14    # "userId":I
    :catch_0
    move-exception v8

    #@bd
    .local v8, "re":Landroid/os/RemoteException;
    goto :goto_4

    #@be
    .line 224
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "enableTouchExploration":Z
    .end local v5    # "hasMoreThanOneUser":Z
    .end local v8    # "re":Landroid/os/RemoteException;
    .end local v10    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7    # "keyguardLocked":Z
    :catch_1
    move-exception v8

    #@bf
    .restart local v8    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private static getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;
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
    .line 137
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 138
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
    .line 140
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v0

    #@14
    .line 141
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@20
    .line 143
    .local v1, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@22
    and-int/lit8 v3, v3, 0x1

    #@24
    if-nez v3, :cond_0

    #@26
    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@29
    goto :goto_0

    #@2a
    .line 147
    .end local v1    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 151
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mDestroyed:Z

    #@3
    .line 150
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
    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x5

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x2

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 157
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownX:F

    #@16
    .line 158
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownY:F

    #@1c
    .line 159
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    #@1f
    move-result v0

    #@20
    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownX:F

    #@22
    .line 160
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    #@25
    move-result v0

    #@26
    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownY:F

    #@28
    .line 161
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@2a
    .line 162
    const-wide/16 v2, 0x7d0

    #@2c
    .line 161
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@2f
    .line 163
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    #@31
    .line 164
    const-wide/16 v2, 0x1770

    #@33
    .line 163
    const/4 v1, 0x3

    #@34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@37
    .line 165
    return v4

    #@38
    .line 167
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
    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@5
    move-result v2

    #@6
    .line 172
    .local v2, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@9
    move-result v0

    #@a
    .line 173
    .local v0, "action":I
    iget-boolean v4, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 174
    if-ne v0, v8, :cond_0

    #@10
    .line 175
    iput-boolean v5, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    #@12
    .line 177
    :cond_0
    return v8

    #@13
    .line 179
    :cond_1
    packed-switch v0, :pswitch_data_0

    #@16
    .line 202
    :cond_2
    :goto_0
    :pswitch_0
    return v8

    #@17
    .line 181
    :pswitch_1
    const/4 v4, 0x2

    #@18
    if-le v2, v4, :cond_2

    #@1a
    .line 182
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    #@1d
    goto :goto_0

    #@1e
    .line 186
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    #@21
    move-result v4

    #@22
    .line 187
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    #@25
    move-result v5

    #@26
    iget v6, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownX:F

    #@28
    iget v7, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownY:F

    #@2a
    .line 186
    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    #@2d
    move-result v1

    #@2e
    .line 188
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
    .line 189
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    #@3b
    .line 191
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    #@3e
    move-result v4

    #@3f
    .line 192
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    #@42
    move-result v5

    #@43
    iget v6, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownX:F

    #@45
    iget v7, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownY:F

    #@47
    .line 191
    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    #@4a
    move-result v3

    #@4b
    .line 193
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
    .line 194
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    #@58
    goto :goto_0

    #@59
    .line 199
    .end local v1    # "firstPointerMove":F
    .end local v3    # "secondPointerMove":F
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    #@5c
    goto :goto_0

    #@5d
    .line 179
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
