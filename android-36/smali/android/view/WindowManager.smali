.class public interface abstract Landroid/view/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$ScreenRecordingState;,
        Landroid/view/WindowManager$InsetsParams;,
        Landroid/view/WindowManager$LayoutParams;,
        Landroid/view/WindowManager$CompatSmallScreenPolicy;,
        Landroid/view/WindowManager$ScreenshotSource;,
        Landroid/view/WindowManager$ScreenshotType;,
        Landroid/view/WindowManager$KeyboardShortcutsReceiver;,
        Landroid/view/WindowManager$InvalidDisplayException;,
        Landroid/view/WindowManager$BadTokenException;,
        Landroid/view/WindowManager$DisplayImePolicy;,
        Landroid/view/WindowManager$RemoveContentMode;,
        Landroid/view/WindowManager$TransitionFlags;,
        Landroid/view/WindowManager$TransitionType;,
        Landroid/view/WindowManager$TransitionOldType;,
        Landroid/view/WindowManager$ShellRootLayer;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVITY_EMBEDDING_GUARD_WITH_ANDROID_15:Z

.field public static final whitelist COMPAT_SMALL_COVER_SCREEN_OPT_IN:I = 0x1

.field public static final whitelist DISPLAY_IME_POLICY_FALLBACK_DISPLAY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_IME_POLICY_HIDE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_IME_POLICY_LOCAL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o DOCKED_BOTTOM:I = 0x4

.field public static final greylist-max-o DOCKED_INVALID:I = -0x1

.field public static final greylist-max-o DOCKED_LEFT:I = 0x1

.field public static final greylist-max-o DOCKED_RIGHT:I = 0x3

.field public static final greylist-max-o DOCKED_TOP:I = 0x2

.field public static final blacklist ENABLE_ACTIVITY_EMBEDDING_FOR_ANDROID_15:J = 0x12475a62L

.field public static final blacklist HAS_WINDOW_EXTENSIONS_ON_DEVICE:Z

.field public static final greylist-max-o INPUT_CONSUMER_NAVIGATION:Ljava/lang/String; = "nav_input_consumer"

.field public static final greylist-max-o INPUT_CONSUMER_PIP:Ljava/lang/String; = "pip_input_consumer"

.field public static final greylist-max-o INPUT_CONSUMER_RECENTS_ANIMATION:Ljava/lang/String; = "recents_animation_input_consumer"

.field public static final greylist-max-o INPUT_CONSUMER_WALLPAPER:Ljava/lang/String; = "wallpaper_input_consumer"

.field public static final blacklist KEYGUARD_VISIBILITY_TRANSIT_FLAGS:I = 0xb900

.field public static final blacklist LARGE_SCREEN_SMALLEST_SCREEN_WIDTH_DP:I = 0x258

.field public static final greylist-max-o PARCEL_KEY_SHORTCUTS_ARRAY:Ljava/lang/String; = "shortcuts_array"

.field public static final whitelist PROPERTY_ACTIVITY_EMBEDDING_ALLOW_SYSTEM_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_ACTIVITY_EMBEDDING_ALLOW_SYSTEM_OVERRIDE"

.field public static final whitelist PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED:Ljava/lang/String; = "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED"

.field public static final blacklist PROPERTY_ALLOW_UNTRUSTED_ACTIVITY_EMBEDDING_STATE_SHARING:Ljava/lang/String; = "android.window.PROPERTY_ALLOW_UNTRUSTED_ACTIVITY_EMBEDDING_STATE_SHARING"

.field public static final whitelist PROPERTY_CAMERA_COMPAT_ALLOW_FORCE_ROTATION:Ljava/lang/String; = "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_FORCE_ROTATION"

.field public static final whitelist PROPERTY_CAMERA_COMPAT_ALLOW_REFRESH:Ljava/lang/String; = "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_REFRESH"

.field public static final blacklist PROPERTY_CAMERA_COMPAT_ALLOW_SIMULATE_REQUESTED_ORIENTATION:Ljava/lang/String; = "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_SIMULATE_REQUESTED_ORIENTATION"

.field public static final whitelist PROPERTY_CAMERA_COMPAT_ENABLE_REFRESH_VIA_PAUSE:Ljava/lang/String; = "android.window.PROPERTY_CAMERA_COMPAT_ENABLE_REFRESH_VIA_PAUSE"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_DISPLAY_ORIENTATION_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_DISPLAY_ORIENTATION_OVERRIDE"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_IGNORING_ORIENTATION_REQUEST_WHEN_LOOP_DETECTED:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_IGNORING_ORIENTATION_REQUEST_WHEN_LOOP_DETECTED"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_RESIZEABLE_ACTIVITY_OVERRIDES:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_RESIZEABLE_ACTIVITY_OVERRIDES"

.field public static final blacklist PROPERTY_COMPAT_ALLOW_RESTRICTED_RESIZABILITY:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_RESTRICTED_RESIZABILITY"

.field public static final blacklist PROPERTY_COMPAT_ALLOW_SAFE_REGION_LETTERBOXING:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_SAFE_REGION_LETTERBOXING"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_SANDBOXING_VIEW_BOUNDS_APIS:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_SANDBOXING_VIEW_BOUNDS_APIS"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_SMALL_COVER_SCREEN:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_SMALL_COVER_SCREEN"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_FULLSCREEN_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_FULLSCREEN_OVERRIDE"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_OVERRIDE"

.field public static final whitelist PROPERTY_COMPAT_ENABLE_FAKE_FOCUS:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ENABLE_FAKE_FOCUS"

.field public static final whitelist PROPERTY_COMPAT_IGNORE_REQUESTED_ORIENTATION:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_IGNORE_REQUESTED_ORIENTATION"

.field public static final whitelist PROPERTY_SUPPORTS_MULTI_INSTANCE_SYSTEM_UI:Ljava/lang/String; = "android.window.PROPERTY_SUPPORTS_MULTI_INSTANCE_SYSTEM_UI"

.field public static final blacklist REMOVE_CONTENT_MODE_DESTROY:I = 0x2

.field public static final blacklist REMOVE_CONTENT_MODE_MOVE_TO_PRIMARY:I = 0x1

.field public static final blacklist REMOVE_CONTENT_MODE_UNDEFINED:I = 0x0

.field public static final whitelist SCREEN_RECORDING_STATE_NOT_VISIBLE:I = 0x0

.field public static final whitelist SCREEN_RECORDING_STATE_VISIBLE:I = 0x1

.field public static final blacklist SHELL_ROOT_LAYER_DIVIDER:I = 0x0

.field public static final blacklist SHELL_ROOT_LAYER_PIP:I = 0x1

.field public static final greylist-max-o TAKE_SCREENSHOT_FULLSCREEN:I = 0x1

.field public static final blacklist TAKE_SCREENSHOT_PROVIDED_IMAGE:I = 0x3

.field public static final blacklist TRANSIT_CHANGE:I = 0x6

.field public static final blacklist TRANSIT_CLOSE:I = 0x2

.field public static final blacklist TRANSIT_CLOSE_PREPARE_BACK_NAVIGATION:I = 0xe

.field public static final blacklist TRANSIT_FIRST_CUSTOM:I = 0x3e8

.field public static final blacklist TRANSIT_FLAG_AOD_APPEARING:I = 0x8000

.field public static final blacklist TRANSIT_FLAG_APP_CRASHED:I = 0x10

.field public static final blacklist TRANSIT_FLAG_AVOID_MOVE_TO_FRONT:I = 0x10000

.field public static final blacklist TRANSIT_FLAG_INVISIBLE:I = 0x400

.field public static final blacklist TRANSIT_FLAG_IS_RECENTS:I = 0x80

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_APPEARING:I = 0x800

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_GOING_AWAY:I = 0x100

.field public static final greylist-max-o TRANSIT_FLAG_KEYGUARD_GOING_AWAY_NO_ANIMATION:I = 0x2

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_GOING_AWAY_SUBTLE_ANIMATION:I = 0x8

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_LAUNCHER_CLEAR_SNAPSHOT:I = 0x200

.field public static final greylist-max-o TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_SHADE:I = 0x1

.field public static final greylist-max-o TRANSIT_FLAG_KEYGUARD_GOING_AWAY_WITH_WALLPAPER:I = 0x4

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_LOCKED:I = 0x40

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_OCCLUDING:I = 0x1000

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_UNOCCLUDING:I = 0x2000

.field public static final blacklist TRANSIT_FLAG_OPEN_BEHIND:I = 0x20

.field public static final blacklist TRANSIT_FLAG_PHYSICAL_DISPLAY_SWITCH:I = 0x4000

.field public static final greylist-max-o TRANSIT_KEYGUARD_GOING_AWAY:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TRANSIT_KEYGUARD_OCCLUDE:I = 0x8

.field public static final greylist-max-o TRANSIT_KEYGUARD_UNOCCLUDE:I = 0x9

.field public static final greylist-max-o TRANSIT_NONE:I = 0x0

.field public static final blacklist TRANSIT_OLD_ACTIVITY_CLOSE:I = 0x7

.field public static final blacklist TRANSIT_OLD_ACTIVITY_OPEN:I = 0x6

.field public static final blacklist TRANSIT_OLD_ACTIVITY_RELAUNCH:I = 0x12

.field public static final blacklist TRANSIT_OLD_CRASHING_ACTIVITY_CLOSE:I = 0x1a

.field public static final blacklist TRANSIT_OLD_DREAM_ACTIVITY_CLOSE:I = 0x20

.field public static final blacklist TRANSIT_OLD_DREAM_ACTIVITY_OPEN:I = 0x1f

.field public static final blacklist TRANSIT_OLD_KEYGUARD_GOING_AWAY:I = 0x14

.field public static final blacklist TRANSIT_OLD_KEYGUARD_GOING_AWAY_ON_WALLPAPER:I = 0x15

.field public static final blacklist TRANSIT_OLD_KEYGUARD_OCCLUDE:I = 0x16

.field public static final blacklist TRANSIT_OLD_KEYGUARD_OCCLUDE_BY_DREAM:I = 0x21

.field public static final blacklist TRANSIT_OLD_KEYGUARD_UNOCCLUDE:I = 0x17

.field public static final blacklist TRANSIT_OLD_NONE:I = 0x0

.field public static final blacklist TRANSIT_OLD_TASK_CHANGE_WINDOWING_MODE:I = 0x1b

.field public static final blacklist TRANSIT_OLD_TASK_CLOSE:I = 0x9

.field public static final blacklist TRANSIT_OLD_TASK_FRAGMENT_CHANGE:I = 0x1e

.field public static final blacklist TRANSIT_OLD_TASK_FRAGMENT_CLOSE:I = 0x1d

.field public static final blacklist TRANSIT_OLD_TASK_FRAGMENT_OPEN:I = 0x1c

.field public static final blacklist TRANSIT_OLD_TASK_OPEN:I = 0x8

.field public static final blacklist TRANSIT_OLD_TASK_OPEN_BEHIND:I = 0x10

.field public static final blacklist TRANSIT_OLD_TASK_TO_BACK:I = 0xb

.field public static final blacklist TRANSIT_OLD_TASK_TO_FRONT:I = 0xa

.field public static final blacklist TRANSIT_OLD_TRANSLUCENT_ACTIVITY_CLOSE:I = 0x19

.field public static final blacklist TRANSIT_OLD_TRANSLUCENT_ACTIVITY_OPEN:I = 0x18

.field public static final blacklist TRANSIT_OLD_UNSET:I = -0x1

.field public static final blacklist TRANSIT_OLD_WALLPAPER_CLOSE:I = 0xc

.field public static final blacklist TRANSIT_OLD_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final blacklist TRANSIT_OLD_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final blacklist TRANSIT_OLD_WALLPAPER_OPEN:I = 0xd

.field public static final blacklist TRANSIT_OPEN:I = 0x1

.field public static final blacklist TRANSIT_PIP:I = 0xa

.field public static final blacklist TRANSIT_PREPARE_BACK_NAVIGATION:I = 0xd

.field public static final blacklist TRANSIT_RELAUNCH:I = 0x5

.field public static final blacklist TRANSIT_SLEEP:I = 0xc

.field public static final blacklist TRANSIT_TO_BACK:I = 0x4

.field public static final blacklist TRANSIT_TO_FRONT:I = 0x3

.field public static final blacklist TRANSIT_WAKE:I = 0xb


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1577
    const-string v0, "persist.wm.extensions.activity_embedding_guard_with_android_15"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/WindowManager;->ACTIVITY_EMBEDDING_GUARD_WITH_ANDROID_15:Z

    .line 1602
    nop

    .line 1603
    const-string v0, "persist.wm.extensions.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/WindowManager;->HAS_WINDOW_EXTENSIONS_ON_DEVICE:Z

    .line 1602
    return-void
.end method

.method public static blacklist fixScale(F)F
    .registers 3
    .param p0, "scale"    # F

    .line 2066
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static blacklist hasWindowExtensionsEnabled()Z
    .registers 4

    .line 1613
    sget-boolean v0, Landroid/view/WindowManager;->HAS_WINDOW_EXTENSIONS_ON_DEVICE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1614
    return v1

    .line 1618
    :cond_6
    :try_start_6
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1619
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1622
    return v1

    .line 1624
    :cond_17
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    return v1

    .line 1625
    .end local v0    # "context":Landroid/content/Context;
    :catch_1c
    move-exception v0

    .line 1627
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Unable to read if the device supports multi window"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1628
    return v1
.end method

.method public static blacklist transitTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 2036
    sparse-switch p0, :sswitch_data_68

    .line 2054
    const/16 v0, 0x3e8

    if-le p0, v0, :cond_4d

    .line 2055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FIRST_CUSTOM+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit16 v1, p0, -0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2052
    :sswitch_1d
    const-string v0, "FIRST_CUSTOM"

    return-object v0

    .line 2051
    :sswitch_20
    const-string v0, "CLOSE_PREDICTIVE_BACK"

    return-object v0

    .line 2050
    :sswitch_23
    const-string v0, "PREDICTIVE_BACK"

    return-object v0

    .line 2049
    :sswitch_26
    const-string v0, "SLEEP"

    return-object v0

    .line 2048
    :sswitch_29
    const-string v0, "WAKE"

    return-object v0

    .line 2047
    :sswitch_2c
    const-string v0, "PIP"

    return-object v0

    .line 2046
    :sswitch_2f
    const-string v0, "KEYGUARD_UNOCCLUDE"

    return-object v0

    .line 2045
    :sswitch_32
    const-string v0, "KEYGUARD_OCCLUDE"

    return-object v0

    .line 2044
    :sswitch_35
    const-string v0, "KEYGUARD_GOING_AWAY"

    return-object v0

    .line 2043
    :sswitch_38
    const-string v0, "CHANGE"

    return-object v0

    .line 2042
    :sswitch_3b
    const-string v0, "RELAUNCH"

    return-object v0

    .line 2041
    :sswitch_3e
    const-string v0, "TO_BACK"

    return-object v0

    .line 2040
    :sswitch_41
    const-string v0, "TO_FRONT"

    return-object v0

    .line 2039
    :sswitch_44
    const-string v0, "CLOSE"

    return-object v0

    .line 2038
    :sswitch_47
    const-string v0, "OPEN"

    return-object v0

    .line 2037
    :sswitch_4a
    const-string v0, "NONE"

    return-object v0

    .line 2057
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_4a
        0x1 -> :sswitch_47
        0x2 -> :sswitch_44
        0x3 -> :sswitch_41
        0x4 -> :sswitch_3e
        0x5 -> :sswitch_3b
        0x6 -> :sswitch_38
        0x7 -> :sswitch_35
        0x8 -> :sswitch_32
        0x9 -> :sswitch_2f
        0xa -> :sswitch_2c
        0xb -> :sswitch_29
        0xc -> :sswitch_26
        0xd -> :sswitch_23
        0xe -> :sswitch_20
        0x3e8 -> :sswitch_1d
    .end sparse-switch
.end method


# virtual methods
.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1988
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1959
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public whitelist addProposedRotationListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Ljava/util/function/IntConsumer;

    .line 2020
    return-void
.end method

.method public whitelist addScreenRecordingCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 6739
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract blacklist getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
.end method

.method public abstract whitelist getCurrentImeTouchRegion()Landroid/graphics/Region;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 830
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist getDefaultDisplay()Landroid/view/Display;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist getDefaultToken()Landroid/os/IBinder;
    .registers 3

    .line 6691
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDefaultToken is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getDisplayImePolicy(I)I
    .registers 3
    .param p1, "displayId"    # I

    .line 1895
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 863
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .registers 3
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    .line 877
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getSurfaceControlInputClientToken(Landroid/view/SurfaceControl;)Landroid/os/IBinder;
    .registers 4
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 6606
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSurfaceControlInputClientToken is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "durationMs"    # I

    .line 6326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isCrossWindowBlurEnabled()Z
    .registers 2

    .line 1929
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isGlobalKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 1907
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTaskSnapshotSupported()Z
    .registers 2

    .line 6335
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist notifyScreenshotListeners(I)Ljava/util/List;
    .registers 3
    .param p1, "displayId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 6396
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist registerBatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 7
    .param p1, "hostInputTransferToken"    # Landroid/window/InputTransferToken;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p3, "choreographer"    # Landroid/view/Choreographer;
    .param p4, "receiver"    # Landroid/view/SurfaceControlInputReceiver;

    .line 6537
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "registerBatchedSurfaceControlInputReceiver is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerTaskFpsCallback(ILjava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/window/TaskFpsCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6355
    return-void
.end method

.method public whitelist registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "thresholds"    # Landroid/window/TrustedPresentationThresholds;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/TrustedPresentationThresholds;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 6495
    .local p4, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist registerUnbatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 7
    .param p1, "hostInputTransferToken"    # Landroid/window/InputTransferToken;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "receiver"    # Landroid/view/SurfaceControlInputReceiver;

    .line 6567
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "registerUnbatchedSurfaceControlInputReceiver is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1998
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public whitelist removeProposedRotationListener(Ljava/util/function/IntConsumer;)V
    .registers 2
    .param p1, "listener"    # Ljava/util/function/IntConsumer;

    .line 2030
    return-void
.end method

.method public whitelist removeScreenRecordingCallback(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6753
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist removeViewImmediate(Landroid/view/View;)V
.end method

.method public blacklist replaceContentOnDisplayWithMirror(ILandroid/view/Window;)Z
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "window"    # Landroid/view/Window;

    .line 6413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist replaceContentOnDisplayWithSc(ILandroid/view/SurfaceControl;)Z
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "sc"    # Landroid/view/SurfaceControl;

    .line 6429
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract greylist-max-o requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
.end method

.method public blacklist requestImeKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .registers 3
    .param p1, "receiver"    # Landroid/view/WindowManager$KeyboardShortcutsReceiver;
    .param p2, "deviceId"    # I

    .line 1817
    return-void
.end method

.method public blacklist setDisplayImePolicy(II)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "imePolicy"    # I

    .line 1884
    return-void
.end method

.method public blacklist setShouldShowSystemDecors(IZ)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "shouldShow"    # Z

    .line 1858
    return-void
.end method

.method public blacklist setShouldShowWithInsecureKeyguard(IZ)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "shouldShow"    # Z

    .line 1843
    return-void
.end method

.method public blacklist shouldShowSystemDecors(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 1872
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist snapshotTaskForRecents(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "taskId"    # I

    .line 6382
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z
    .registers 5
    .param p1, "transferFromToken"    # Landroid/window/InputTransferToken;
    .param p2, "transferToToken"    # Landroid/window/InputTransferToken;

    .line 6684
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "transferTouchGesture is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterSurfaceControlInputReceiver(Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 6585
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unregisterSurfaceControlInputReceiver is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterTaskFpsCallback(Landroid/window/TaskFpsCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/window/TaskFpsCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6366
    return-void
.end method

.method public whitelist unregisterTrustedPresentationListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 6506
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
