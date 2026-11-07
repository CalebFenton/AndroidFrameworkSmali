.class public Lcom/android/internal/policy/GestureNavigationSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GestureNavigationSettingsObserver.java"


# instance fields
.field private blacklist mBgHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mOnChangeRunnable:Ljava/lang/Runnable;

.field private final blacklist mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$2LyAPXjY8lxrFT__0wMdLTP5MGw(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$registerForCallingUser$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AXStnNoDh1xIPHWag4AqnNd3LdM(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$register$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BC4j_XktI64YbNYv6S2WRUmxua8(Lcom/android/internal/policy/GestureNavigationSettingsObserver;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$registerForCallingUser$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JA1ylqO7XNLTi7yML43aJgC_YQM(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$unregister$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g24CV-AAJZD1PtyBXj0Y4AhOe0s(Lcom/android/internal/policy/GestureNavigationSettingsObserver;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$register$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnChangeRunnable(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "mainHandler"    # Landroid/os/Handler;
    .param p2, "bgHandler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "onChangeRunnable"    # Ljava/lang/Runnable;

    .line 44
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 51
    new-instance v0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    iput-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 45
    iput-object p1, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mMainHandler:Landroid/os/Handler;

    .line 46
    iput-object p2, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mBgHandler:Landroid/os/Handler;

    .line 47
    iput-object p3, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    .line 48
    iput-object p4, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method private blacklist getUnscaledInset(Landroid/content/res/Resources;)F
    .registers 6
    .param p1, "userRes"    # Landroid/content/res/Resources;

    .line 174
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 175
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const v1, 0x10500db

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 178
    .local v1, "defaultInset":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1d

    .line 179
    const-string/jumbo v2, "systemui"

    const-string v3, "back_gesture_edge_width"

    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    goto :goto_1e

    .line 181
    :cond_1d
    move v2, v1

    :goto_1e
    nop

    .line 182
    .local v2, "backGestureInset":F
    const/4 v3, 0x1

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 184
    .local v3, "inset":F
    return v3
.end method

.method private synthetic blacklist lambda$register$0(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic blacklist lambda$register$1()V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, "r":Landroid/content/ContentResolver;
    nop

    .line 69
    const-string v1, "back_gesture_inset_scale_left"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 68
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 71
    nop

    .line 72
    const-string v1, "back_gesture_inset_scale_right"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 74
    nop

    .line 75
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 77
    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    iget-object v2, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v3, "systemui"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 81
    return-void
.end method

.method private synthetic blacklist lambda$registerForCallingUser$2(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic blacklist lambda$registerForCallingUser$3()V
    .registers 5

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, "r":Landroid/content/ContentResolver;
    nop

    .line 91
    const-string v1, "back_gesture_inset_scale_left"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    nop

    .line 94
    const-string v1, "back_gesture_inset_scale_right"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    nop

    .line 97
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    iget-object v2, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v3, "systemui"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 103
    return-void
.end method

.method private synthetic blacklist lambda$unregister$4()V
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 110
    return-void
.end method


# virtual methods
.method public blacklist areNavigationButtonForcedVisible()Z
    .registers 8

    .line 164
    const-string/jumbo v0, "setupwizard.theme"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "SUWTheme":Ljava/lang/String;
    const-string v1, "glif_expressive"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1e

    .line 166
    const-string v1, "glif_expressive_light"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move v1, v3

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v1, v2

    .line 168
    .local v1, "isExpressiveThemeEnabled":Z
    :goto_1f
    if-nez v1, :cond_32

    iget-object v4, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_setup_complete"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_32

    goto :goto_33

    :cond_32
    move v2, v3

    .line 168
    :goto_33
    return v2
.end method

.method public blacklist getLeftSensitivity(Landroid/content/res/Resources;)I
    .registers 6
    .param p1, "userRes"    # Landroid/content/res/Resources;

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    const-string v3, "back_gesture_inset_scale_left"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 128
    .local v0, "scale":F
    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getUnscaledInset(Landroid/content/res/Resources;)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public blacklist getLeftSensitivityForCallingUser(Landroid/content/res/Resources;)I
    .registers 5
    .param p1, "userRes"    # Landroid/content/res/Resources;

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "back_gesture_inset_scale_left"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 139
    .local v0, "scale":F
    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getUnscaledInset(Landroid/content/res/Resources;)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public blacklist getRightSensitivity(Landroid/content/res/Resources;)I
    .registers 6
    .param p1, "userRes"    # Landroid/content/res/Resources;

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    const-string v3, "back_gesture_inset_scale_right"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 149
    .local v0, "scale":F
    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getUnscaledInset(Landroid/content/res/Resources;)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public blacklist getRightSensitivityForCallingUser(Landroid/content/res/Resources;)I
    .registers 5
    .param p1, "userRes"    # Landroid/content/res/Resources;

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "back_gesture_inset_scale_right"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 160
    .local v0, "scale":F
    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getUnscaledInset(Landroid/content/res/Resources;)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public whitelist onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 115
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 119
    :cond_c
    return-void
.end method

.method public blacklist register()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public blacklist registerForCallingUser()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public blacklist unregister()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method
