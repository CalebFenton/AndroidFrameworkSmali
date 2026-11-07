.class public final Lcom/android/internal/view/RotationPolicy;
.super Ljava/lang/Object;
.source "RotationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    }
.end annotation


# static fields
.field private static final blacklist CURRENT_ROTATION:I = -0x1

.field public static final blacklist NATURAL_ROTATION:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "RotationPolicy"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static blacklist areAllRotationsAllowed(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist getRotationLockOrientation(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->areAllRotationsAllowed(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 76
    return v1

    .line 78
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 79
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    nop

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 81
    .local v2, "rotation":I
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_25

    move v1, v4

    .line 82
    .local v1, "rotated":Z
    :cond_25
    if-eqz v1, :cond_2a

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_2c

    :cond_2a
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 83
    .local v3, "w":I
    :goto_2c
    if-eqz v1, :cond_31

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_33

    :cond_31
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 84
    .local v5, "h":I
    :goto_33
    if-ge v3, v5, :cond_36

    goto :goto_37

    :cond_36
    const/4 v4, 0x2

    :goto_37
    return v4
.end method

.method public static blacklist isRotationLockToggleVisible(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 91
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hide_rotation_lock_toggle_for_accessibility"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    nop

    .line 91
    :goto_17
    return v1
.end method

.method public static blacklist isRotationLocked(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v3, 0x1

    :cond_f
    return v3
.end method

.method public static blacklist isRotationSupported(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 59
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 60
    const-string v1, "android.hardware.screen.portrait"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 61
    const-string v1, "android.hardware.screen.landscape"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    .line 59
    :goto_2c
    return v1
.end method

.method public static blacklist registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 174
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 175
    return-void
.end method

.method public static blacklist registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    .param p2, "userHandle"    # I

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_rotation_lock_toggle_for_accessibility"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 189
    return-void
.end method

.method public static blacklist setRotationLock(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 110
    nop

    .line 109
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->areAllRotationsAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 110
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->useCurrentRotationOnRotationLockChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    .line 111
    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    .line 110
    :cond_10
    :goto_10
    const/4 v0, -0x1

    .line 111
    :goto_11
    nop

    .line 112
    .local v0, "rotation":I
    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZILjava/lang/String;)V

    .line 113
    return-void
.end method

.method private static blacklist setRotationLock(ZILjava/lang/String;)V
    .registers 4
    .param p0, "enabled"    # Z
    .param p1, "rotation"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/android/internal/view/RotationPolicy$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/view/RotationPolicy$1;-><init>(ZILjava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public static blacklist setRotationLockAtAngle(Landroid/content/Context;ZILjava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z
    .param p2, "rotation"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "hide_rotation_lock_toggle_for_accessibility"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 124
    invoke-static {p1, p2, p3}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZILjava/lang/String;)V

    .line 125
    return-void
.end method

.method public static blacklist setRotationLockForAccessibility(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    nop

    .line 134
    const-string v1, "hide_rotation_lock_toggle_for_accessibility"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 138
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZILjava/lang/String;)V

    .line 139
    return-void
.end method

.method public static blacklist unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 197
    return-void
.end method

.method private static blacklist useCurrentRotationOnRotationLockChange(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111028b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
