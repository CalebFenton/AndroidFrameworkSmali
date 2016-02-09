.class public Lcom/android/server/policy/BurnInProtectionHelper;
.super Ljava/lang/Object;
.source "BurnInProtectionHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/BurnInProtectionHelper$1;
    }
.end annotation


# static fields
.field private static final ACTION_BURN_IN_PROTECTION:Ljava/lang/String; = "android.internal.policy.action.BURN_IN_PROTECTION"

.field private static final BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

.field private static final BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

.field public static final BURN_IN_MAX_RADIUS_DEFAULT:I = -0x1

.field private static final BURN_IN_SHIFT_STEP:I = 0x2

.field private static final CENTERING_ANIMATION_DURATION_MS:J = 0x64L

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BurnInProtection"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBurnInProtectionActive:Z

.field private final mBurnInProtectionIntent:Landroid/app/PendingIntent;

.field private mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

.field private final mBurnInRadiusMaxSquared:I

.field private final mCenteringAnimator:Landroid/animation/ValueAnimator;

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mFirstUpdate:Z

.field private mLastBurnInXOffset:I

.field private mLastBurnInYOffset:I

.field private final mMaxHorizontalBurnInOffset:I

.field private final mMaxVerticalBurnInOffset:I

.field private final mMinHorizontalBurnInOffset:I

.field private final mMinVerticalBurnInOffset:I

.field private mXOffsetDirection:I

.field private mYOffsetDirection:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/policy/BurnInProtectionHelper;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    #@2
    const-wide/16 v2, 0x1

    #@4
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@7
    move-result-wide v0

    #@8
    sput-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

    #@a
    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@c
    const-wide/16 v2, 0xa

    #@e
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@11
    move-result-wide v0

    #@12
    sput-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    #@14
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minHorizontalOffset"    # I
    .param p3, "maxHorizontalOffset"    # I
    .param p4, "minVerticalOffset"    # I
    .param p5, "maxVerticalOffset"    # I
    .param p6, "maxOffsetRadius"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 68
    iput v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@8
    .line 70
    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    #@a
    .line 71
    iput v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@c
    .line 73
    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    #@e
    .line 80
    new-instance v2, Lcom/android/server/policy/BurnInProtectionHelper$1;

    #@10
    invoke-direct {v2, p0}, Lcom/android/server/policy/BurnInProtectionHelper$1;-><init>(Lcom/android/server/policy/BurnInProtectionHelper;)V

    #@13
    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

    #@15
    .line 93
    iput p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    #@17
    .line 94
    iput p3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    #@19
    .line 95
    iput p4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    #@1b
    .line 96
    iput p5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    #@1d
    .line 97
    if-eq p6, v3, :cond_0

    #@1f
    .line 98
    mul-int v2, p6, p6

    #@21
    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    #@23
    .line 103
    :goto_0
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    #@25
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    #@2b
    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@2d
    .line 104
    const-string/jumbo v2, "alarm"

    #@30
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/app/AlarmManager;

    #@36
    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    #@38
    .line 105
    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

    #@3a
    .line 106
    new-instance v3, Landroid/content/IntentFilter;

    #@3c
    const-string/jumbo v4, "android.internal.policy.action.BURN_IN_PROTECTION"

    #@3f
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@42
    .line 105
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@45
    .line 107
    new-instance v1, Landroid/content/Intent;

    #@47
    const-string/jumbo v2, "android.internal.policy.action.BURN_IN_PROTECTION"

    #@4a
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4d
    .line 108
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@54
    .line 109
    const/high16 v2, 0x40000000    # 2.0f

    #@56
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@59
    .line 111
    const/high16 v2, 0x8000000

    #@5b
    .line 110
    invoke-static {p1, v5, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    #@61
    .line 113
    const-string/jumbo v2, "display"

    #@64
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@67
    move-result-object v0

    #@68
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@6a
    .line 114
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@6d
    move-result-object v2

    #@6e
    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    #@70
    .line 115
    const/4 v2, 0x0

    #@71
    invoke-virtual {v0, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@74
    .line 117
    const/4 v2, 0x2

    #@75
    new-array v2, v2, [F

    #@77
    fill-array-data v2, :array_0

    #@7a
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@7d
    move-result-object v2

    #@7e
    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    #@80
    .line 118
    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    #@82
    const-wide/16 v4, 0x64

    #@84
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@87
    .line 119
    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    #@89
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    #@8b
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@8e
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@91
    .line 120
    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    #@93
    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@96
    .line 121
    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    #@98
    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@9b
    .line 92
    return-void

    #@9c
    .line 100
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iput v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    #@9e
    goto :goto_0

    #@9f
    .line 117
    nop

    #@a0
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private adjustOffsets()V
    .locals 5

    #@0
    .prologue
    .line 194
    :cond_0
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    #@2
    mul-int/lit8 v0, v2, 0x2

    #@4
    .line 195
    .local v0, "xChange":I
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@6
    add-int/2addr v2, v0

    #@7
    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@9
    .line 196
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@b
    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    #@d
    if-gt v2, v3, :cond_1

    #@f
    .line 197
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@11
    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    #@13
    if-ge v2, v3, :cond_3

    #@15
    .line 199
    :cond_1
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@17
    sub-int/2addr v2, v0

    #@18
    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@1a
    .line 201
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    #@1c
    mul-int/lit8 v2, v2, -0x1

    #@1e
    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    #@20
    .line 203
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    #@22
    mul-int/lit8 v1, v2, 0x2

    #@24
    .line 204
    .local v1, "yChange":I
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@26
    add-int/2addr v2, v1

    #@27
    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@29
    .line 205
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@2b
    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    #@2d
    if-gt v2, v3, :cond_2

    #@2f
    .line 206
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@31
    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    #@33
    if-ge v2, v3, :cond_3

    #@35
    .line 208
    :cond_2
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@37
    sub-int/2addr v2, v1

    #@38
    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@3a
    .line 210
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    #@3c
    mul-int/lit8 v2, v2, -0x1

    #@3e
    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    #@40
    .line 214
    .end local v1    # "yChange":I
    :cond_3
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    #@42
    const/4 v3, -0x1

    #@43
    if-eq v2, v3, :cond_4

    #@45
    .line 215
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@47
    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@49
    mul-int/2addr v2, v3

    #@4a
    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@4c
    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@4e
    mul-int/2addr v3, v4

    #@4f
    add-int/2addr v2, v3

    #@50
    .line 216
    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    #@52
    .line 215
    if-gt v2, v3, :cond_0

    #@54
    .line 191
    :cond_4
    return-void
.end method

.method private updateBurnInProtection()V
    .locals 12

    #@0
    .prologue
    .line 134
    iget-boolean v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    #@2
    if-eqz v8, :cond_1

    #@4
    .line 138
    iget-boolean v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 139
    const/4 v8, 0x0

    #@9
    iput-boolean v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    #@b
    .line 149
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v6

    #@f
    .line 150
    .local v6, "nowWall":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@12
    move-result-wide v4

    #@13
    .line 152
    .local v4, "nowElapsed":J
    sget-wide v8, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    #@15
    add-long v2, v6, v8

    #@17
    .line 154
    .local v2, "nextWall":J
    sget-wide v8, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

    #@19
    rem-long v8, v2, v8

    #@1b
    sub-long v8, v2, v8

    #@1d
    .line 155
    sget-wide v10, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

    #@1f
    .line 154
    add-long v2, v8, v10

    #@21
    .line 157
    sub-long v8, v2, v6

    #@23
    add-long v0, v4, v8

    #@25
    .line 163
    .local v0, "nextElapsed":J
    iget-object v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    #@27
    .line 164
    iget-object v9, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    #@29
    .line 163
    const/4 v10, 0x3

    #@2a
    invoke-virtual {v8, v10, v0, v1, v9}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@2d
    .line 133
    .end local v0    # "nextElapsed":J
    .end local v2    # "nextWall":J
    .end local v4    # "nowElapsed":J
    .end local v6    # "nowWall":J
    :goto_1
    return-void

    #@2e
    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->adjustOffsets()V

    #@31
    .line 142
    iget-object v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@33
    iget-object v9, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    #@35
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    #@38
    move-result v9

    #@39
    .line 143
    iget v10, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@3b
    iget v11, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@3d
    .line 142
    invoke-virtual {v8, v9, v10, v11}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    #@40
    goto :goto_0

    #@41
    .line 166
    :cond_1
    iget-object v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    #@43
    iget-object v9, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    #@45
    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@48
    .line 167
    iget-object v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    #@4a
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    #@4d
    goto :goto_1
.end method


# virtual methods
.method public cancelBurnInProtection()V
    .locals 1

    #@0
    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 173
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    #@7
    .line 174
    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    #@a
    .line 171
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "BurnInProtection"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "  "

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object p1

    #@2b
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    const-string/jumbo v1, "mBurnInProtectionActive="

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    iget-boolean v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    const-string/jumbo v1, "mHorizontalBurnInOffsetsBounds=("

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    const-string/jumbo v1, ", "

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    .line 224
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    #@67
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    .line 224
    const-string/jumbo v1, ")"

    #@6e
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@79
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    const-string/jumbo v1, "mVerticalBurnInOffsetsBounds=("

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    const-string/jumbo v1, ", "

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    .line 226
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    #@98
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    .line 226
    const-string/jumbo v1, ")"

    #@9f
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@aa
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v0

    #@b3
    const-string/jumbo v1, "mBurnInRadiusMaxSquared="

    #@b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v0

    #@ba
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    #@bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v0

    #@c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c7
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v0

    #@d0
    const-string/jumbo v1, "mLastBurnInOffset=("

    #@d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v0

    #@dd
    const-string/jumbo v1, ", "

    #@e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v0

    #@e4
    .line 229
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@e6
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    .line 229
    const-string/jumbo v1, ")"

    #@ed
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v0

    #@f1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v0

    #@f5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f8
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v0

    #@101
    const-string/jumbo v1, "mOfsetChangeDirections=("

    #@104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v0

    #@108
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    #@10a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v0

    #@10e
    const-string/jumbo v1, ", "

    #@111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v0

    #@115
    .line 231
    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    #@117
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v0

    #@11b
    .line 231
    const-string/jumbo v1, ")"

    #@11e
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v0

    #@122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v0

    #@126
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@129
    .line 219
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 267
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 260
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    #@3
    if-ne p1, v0, :cond_0

    #@5
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 259
    :cond_0
    :goto_0
    return-void

    #@a
    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@c
    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    #@e
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    #@15
    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 271
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 255
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    #@0
    .prologue
    .line 276
    iget-boolean v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/lang/Float;

    #@a
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@d
    move-result v0

    #@e
    .line 278
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@10
    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    #@12
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    #@15
    move-result v2

    #@16
    .line 279
    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    #@18
    int-to-float v3, v3

    #@19
    mul-float/2addr v3, v0

    #@1a
    float-to-int v3, v3

    #@1b
    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    #@1d
    int-to-float v4, v4

    #@1e
    mul-float/2addr v4, v0

    #@1f
    float-to-int v4, v4

    #@20
    .line 278
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    #@23
    .line 275
    .end local v0    # "value":F
    :cond_0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 235
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    #@2
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    #@5
    move-result v0

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 245
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    #@a
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x3

    #@f
    if-eq v0, v1, :cond_0

    #@11
    .line 246
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    #@13
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    #@16
    move-result v0

    #@17
    const/4 v1, 0x4

    #@18
    if-ne v0, v1, :cond_2

    #@1a
    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->startBurnInProtection()V

    #@1d
    .line 243
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 249
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->cancelBurnInProtection()V

    #@21
    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 239
    return-void
.end method

.method public startBurnInProtection()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 125
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 126
    iput-boolean v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    #@7
    .line 127
    iput-boolean v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    #@9
    .line 128
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    #@b
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@e
    .line 129
    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    #@11
    .line 124
    :cond_0
    return-void
.end method
