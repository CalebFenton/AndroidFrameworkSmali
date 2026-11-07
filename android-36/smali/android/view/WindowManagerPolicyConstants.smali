.class public interface abstract Landroid/view/WindowManagerPolicyConstants;
.super Ljava/lang/Object;
.source "WindowManagerPolicyConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicyConstants$OnReason;,
        Landroid/view/WindowManagerPolicyConstants$OffReason;,
        Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field public static final greylist-max-o APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field public static final greylist-max-o APPLICATION_LAYER:I = 0x2

.field public static final greylist-max-o APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field public static final greylist-max-o APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field public static final greylist-max-o APPLICATION_PANEL_SUBLAYER:I = 0x1

.field public static final greylist-max-o APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field public static final blacklist EXTRA_FROM_BRIGHTNESS_KEY:Ljava/lang/String; = "android.intent.extra.FROM_BRIGHTNESS_KEY"

.field public static final greylist-max-o EXTRA_FROM_HOME_KEY:Ljava/lang/String; = "android.intent.extra.FROM_HOME_KEY"

.field public static final greylist-max-o EXTRA_HDMI_PLUGGED_STATE:Ljava/lang/String; = "state"

.field public static final blacklist EXTRA_START_REASON:Ljava/lang/String; = "android.intent.extra.EXTRA_START_REASON"

.field public static final greylist-max-o FLAG_DISABLE_KEY_REPEAT:I = 0x8000000

.field public static final greylist-max-o FLAG_FILTERED:I = 0x4000000

.field public static final greylist-max-o FLAG_INJECTED:I = 0x1000000

.field public static final blacklist FLAG_INJECTED_FROM_ACCESSIBILITY:I = 0x20000

.field public static final blacklist FLAG_INJECTED_FROM_ACCESSIBILITY_TOOL:I = 0x80000

.field public static final greylist-max-o FLAG_INTERACTIVE:I = 0x20000000

.field public static final blacklist FLAG_KEY_GESTURE_TRIGGERED:I = 0x40000

.field public static final greylist-max-o FLAG_PASS_TO_USER:I = 0x40000000

.field public static final greylist-max-o FLAG_TRUSTED:I = 0x2000000

.field public static final greylist-max-o FLAG_VIRTUAL:I = 0x2

.field public static final greylist-max-o FLAG_WAKE:I = 0x1

.field public static final greylist-max-o KEYGUARD_GOING_AWAY_FLAG_NO_WINDOW_ANIMATIONS:I = 0x2

.field public static final blacklist KEYGUARD_GOING_AWAY_FLAG_SUBTLE_WINDOW_ANIMATIONS:I = 0x8

.field public static final blacklist KEYGUARD_GOING_AWAY_FLAG_TO_LAUNCHER_CLEAR_SNAPSHOT:I = 0x10

.field public static final greylist-max-o KEYGUARD_GOING_AWAY_FLAG_TO_SHADE:I = 0x1

.field public static final greylist-max-o KEYGUARD_GOING_AWAY_FLAG_WITH_WALLPAPER:I = 0x4

.field public static final blacklist LAYER_OFFSET_THUMBNAIL:I = 0x4

.field public static final greylist-max-o NAV_BAR_BOTTOM:I = 0x4

.field public static final blacklist NAV_BAR_INVALID:I = -0x1

.field public static final greylist-max-o NAV_BAR_LEFT:I = 0x1

.field public static final blacklist NAV_BAR_MODE_2BUTTON:I = 0x1

.field public static final blacklist NAV_BAR_MODE_2BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.twobutton"

.field public static final blacklist NAV_BAR_MODE_3BUTTON:I = 0x0

.field public static final blacklist NAV_BAR_MODE_3BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.threebutton"

.field public static final blacklist NAV_BAR_MODE_GESTURAL:I = 0x2

.field public static final blacklist NAV_BAR_MODE_GESTURAL_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural"

.field public static final greylist-max-o NAV_BAR_RIGHT:I = 0x2

.field public static final greylist-max-o OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final greylist-max-o OFF_BECAUSE_OF_TIMEOUT:I = 0x3

.field public static final greylist-max-o OFF_BECAUSE_OF_USER:I = 0x2

.field public static final blacklist ON_BECAUSE_OF_APPLICATION:I = 0x2

.field public static final blacklist ON_BECAUSE_OF_UNKNOWN:I = 0x3

.field public static final blacklist ON_BECAUSE_OF_USER:I = 0x1

.field public static final greylist-max-o PRESENCE_EXTERNAL:I = 0x2

.field public static final greylist-max-o PRESENCE_INTERNAL:I = 0x1

.field public static final blacklist SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field public static final blacklist STRICT_MODE_LAYER:I = 0xf6950

.field public static final blacklist TYPE_LAYER_MULTIPLIER:I = 0x2710

.field public static final blacklist TYPE_LAYER_OFFSET:I = 0x3e8

.field public static final blacklist WATERMARK_LAYER:I = 0xf4240

.field public static final blacklist WINDOW_FREEZE_LAYER:I = 0x1e8480

.field public static final blacklist WINDOW_LAYER_MULTIPLIER:I = 0x5


# direct methods
.method public static greylist-max-o offReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "why"    # I

    .line 209
    packed-switch p0, :pswitch_data_12

    .line 217
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 215
    :pswitch_8
    const-string v0, "OFF_BECAUSE_OF_TIMEOUT"

    return-object v0

    .line 213
    :pswitch_b
    const-string v0, "OFF_BECAUSE_OF_USER"

    return-object v0

    .line 211
    :pswitch_e
    const-string v0, "OFF_BECAUSE_OF_ADMIN"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist onReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "why"    # I

    .line 159
    packed-switch p0, :pswitch_data_12

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :pswitch_8
    const-string v0, "ON_BECAUSE_OF_UNKNOWN"

    return-object v0

    .line 163
    :pswitch_b
    const-string v0, "ON_BECAUSE_OF_APPLICATION"

    return-object v0

    .line 161
    :pswitch_e
    const-string v0, "ON_BECAUSE_OF_USER"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist translateSleepReasonToOffReason(I)I
    .registers 2
    .param p0, "reason"    # I

    .line 131
    sparse-switch p0, :sswitch_data_a

    .line 138
    const/4 v0, 0x2

    return v0

    .line 136
    :sswitch_5
    const/4 v0, 0x3

    return v0

    .line 133
    :sswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_5
        0x9 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist translateWakeReasonToOnReason(I)I
    .registers 2
    .param p0, "reason"    # I

    .line 172
    packed-switch p0, :pswitch_data_a

    .line 187
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 185
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 183
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
