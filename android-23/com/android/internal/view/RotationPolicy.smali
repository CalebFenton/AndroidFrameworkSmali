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
.field private static final CURRENT_ROTATION:I = -0x1

.field private static final NATURAL_ROTATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RotationPolicy"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static areAllRotationsAllowed(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    const v1, 0x1120034

    #@7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static getRotationLockOrientation(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 75
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->areAllRotationsAllowed(Landroid/content/Context;)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_1

    #@7
    .line 76
    new-instance v1, Landroid/graphics/Point;

    #@9
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@c
    .line 77
    .local v1, "size":Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@f
    move-result-object v2

    #@10
    .line 79
    .local v2, "wm":Landroid/view/IWindowManager;
    const/4 v3, 0x0

    #@11
    :try_start_0
    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    #@14
    .line 80
    iget v3, v1, Landroid/graphics/Point;->x:I

    #@16
    iget v4, v1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    if-ge v3, v4, :cond_0

    #@1a
    .line 81
    const/4 v3, 0x1

    #@1b
    .line 80
    :goto_0
    return v3

    #@1c
    .line 81
    :cond_0
    const/4 v3, 0x2

    #@1d
    goto :goto_0

    #@1e
    .line 82
    :catch_0
    move-exception v0

    #@1f
    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "RotationPolicy"

    #@22
    const-string/jumbo v4, "Unable to get the display size"

    #@25
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :cond_1
    return v5
.end method

.method public static isRotationLockToggleVisible(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 93
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v1

    #@b
    .line 95
    const-string/jumbo v2, "hide_rotation_lock_toggle_for_accessibility"

    #@e
    .line 96
    const/4 v3, -0x2

    #@f
    .line 94
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 93
    :cond_0
    return v0
.end method

.method public static isRotationLocked(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v1

    #@5
    .line 104
    const-string/jumbo v2, "accelerometer_rotation"

    #@8
    const/4 v3, -0x2

    #@9
    .line 103
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public static isRotationSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    .line 59
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.sensor.accelerometer"

    #@7
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 60
    const-string/jumbo v1, "android.hardware.screen.portrait"

    #@10
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    .line 59
    if-eqz v1, :cond_0

    #@16
    .line 61
    const-string/jumbo v1, "android.hardware.screen.landscape"

    #@19
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    .line 59
    if-eqz v1, :cond_0

    #@1f
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v1

    #@23
    .line 63
    const v2, 0x1120033

    #@26
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@29
    move-result v1

    #@2a
    .line 59
    :goto_0
    return v1

    #@2b
    :cond_0
    const/4 v1, 0x0

    #@2c
    goto :goto_0
.end method

.method public static registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    #@0
    .prologue
    .line 159
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    #@7
    .line 158
    return-void
.end method

.method public static registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    .line 169
    const-string/jumbo v1, "accelerometer_rotation"

    #@8
    .line 168
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v1

    #@c
    .line 170
    iget-object v2, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    #@e
    .line 168
    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@11
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v0

    #@15
    .line 172
    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    #@18
    .line 171
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1b
    move-result-object v1

    #@1c
    .line 173
    iget-object v2, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    #@1e
    .line 171
    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@21
    .line 167
    return-void
.end method

.method public static setRotationLock(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 112
    const-string/jumbo v2, "hide_rotation_lock_toggle_for_accessibility"

    #@7
    const/4 v3, 0x0

    #@8
    .line 113
    const/4 v4, -0x2

    #@9
    .line 111
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@c
    .line 115
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->areAllRotationsAllowed(Landroid/content/Context;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    const/4 v0, -0x1

    #@13
    .line 116
    .local v0, "rotation":I
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V

    #@16
    .line 110
    return-void

    #@17
    .line 115
    .end local v0    # "rotation":I
    :cond_0
    const/4 v0, 0x0

    #@18
    .restart local v0    # "rotation":I
    goto :goto_0
.end method

.method private static setRotationLock(ZI)V
    .locals 1
    .param p0, "enabled"    # Z
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 137
    new-instance v0, Lcom/android/internal/view/RotationPolicy$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/RotationPolicy$1;-><init>(ZI)V

    #@5
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #@8
    .line 136
    return-void
.end method

.method public static setRotationLockForAccessibility(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v2

    #@5
    .line 126
    const-string/jumbo v3, "hide_rotation_lock_toggle_for_accessibility"

    #@8
    if-eqz p1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    .line 127
    :goto_0
    const/4 v4, -0x2

    #@c
    .line 125
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@f
    .line 129
    invoke-static {p1, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V

    #@12
    .line 124
    return-void

    #@13
    :cond_0
    move v0, v1

    #@14
    .line 126
    goto :goto_0
.end method

.method public static unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    #@0
    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    #@6
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@9
    .line 180
    return-void
.end method
