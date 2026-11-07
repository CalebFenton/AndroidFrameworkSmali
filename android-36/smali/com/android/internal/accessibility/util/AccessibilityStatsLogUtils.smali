.class public final Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;
.super Ljava/lang/Object;
.source "AccessibilityStatsLogUtils.java"


# static fields
.field public static blacklist ACCESSIBILITY_PRIVACY_WARNING_STATUS_CLICKED:I

.field public static blacklist ACCESSIBILITY_PRIVACY_WARNING_STATUS_SERVICE_DISABLED:I

.field public static blacklist ACCESSIBILITY_PRIVACY_WARNING_STATUS_SHOWN:I

.field private static final blacklist UNKNOWN_STATUS:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_SHOWN:I

    .line 63
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_CLICKED:I

    .line 66
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_SERVICE_DISABLED:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertToLoggingMagnificationMode(I)I
    .registers 2
    .param p0, "mode"    # I

    .line 267
    packed-switch p0, :pswitch_data_c

    .line 276
    const/4 v0, 0x0

    return v0

    .line 273
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 271
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 269
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist convertToLoggingMagnificationScale(F)I
    .registers 2
    .param p0, "scale"    # F

    .line 285
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private static blacklist convertToLoggingServiceStatus(Z)I
    .registers 2
    .param p0, "enabled"    # Z

    .line 262
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    .line 263
    :cond_4
    const/4 v0, 0x2

    .line 262
    :goto_5
    return v0
.end method

.method private static blacklist convertToLoggingShortcutType(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I

    .line 242
    const/4 v0, 0x6

    sparse-switch p1, :sswitch_data_1e

    .line 258
    const/4 v0, 0x0

    return v0

    .line 252
    :sswitch_6
    return v0

    .line 256
    :sswitch_7
    const/16 v0, 0x9

    return v0

    .line 254
    :sswitch_a
    const/4 v0, 0x2

    return v0

    .line 244
    :sswitch_c
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->isAccessibilityFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 245
    const/4 v0, 0x5

    return v0

    .line 246
    :cond_14
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->isAccessibilityGestureEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 247
    return v0

    .line 249
    :cond_1b
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_a
        0x10 -> :sswitch_7
        0x20 -> :sswitch_6
    .end sparse-switch
.end method

.method private static blacklist isAccessibilityFloatingMenuEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private static blacklist isAccessibilityGestureEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static blacklist logAccessibilityButtonLongPressStatus(Landroid/content/ComponentName;)V
    .registers 5
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 156
    nop

    .line 157
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 156
    const/16 v1, 0x10a

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 160
    return-void
.end method

.method public static blacklist logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "shortcutType"    # I

    .line 85
    nop

    .line 86
    invoke-static {p0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingShortcutType(Landroid/content/Context;I)I

    move-result v0

    .line 85
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V

    .line 87
    return-void
.end method

.method public static blacklist logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "shortcutType"    # I
    .param p3, "serviceEnabled"    # Z

    .line 103
    nop

    .line 104
    invoke-static {p0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingShortcutType(Landroid/content/Context;I)I

    move-result v0

    .line 105
    invoke-static {p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v1

    .line 103
    invoke-static {p1, v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V

    .line 106
    return-void
.end method

.method private static blacklist logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V
    .registers 5
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "loggingShortcutType"    # I
    .param p2, "loggingServiceStatus"    # I

    .line 122
    nop

    .line 123
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 122
    const/16 v1, 0x10a

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 124
    return-void
.end method

.method public static blacklist logMagnificationFollowTypingFocusSession(J)V
    .registers 3
    .param p0, "duration"    # J

    .line 194
    const/16 v0, 0x1c5

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 197
    return-void
.end method

.method public static blacklist logMagnificationModeWithImeOn(I)V
    .registers 3
    .param p0, "mode"    # I

    .line 184
    nop

    .line 185
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingMagnificationMode(I)I

    move-result v0

    .line 184
    const/16 v1, 0x15a

    invoke-static {v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 186
    return-void
.end method

.method public static blacklist logMagnificationTripleTap(Z)V
    .registers 5
    .param p0, "enabled"    # Z

    .line 131
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 132
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v1

    .line 131
    const/16 v2, 0x10a

    const/4 v3, 0x3

    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 135
    return-void
.end method

.method public static blacklist logMagnificationTripleTapAndHoldSession(J)V
    .registers 3
    .param p0, "duration"    # J

    .line 206
    const/16 v0, 0x1c4

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 209
    return-void
.end method

.method public static blacklist logMagnificationTwoFingerTripleTap(Z)V
    .registers 5
    .param p0, "enabled"    # Z

    .line 142
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 143
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v1

    .line 142
    const/16 v2, 0x10a

    const/16 v3, 0x8

    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 147
    return-void
.end method

.method public static blacklist logMagnificationUsageState(IJF)V
    .registers 7
    .param p0, "mode"    # I
    .param p1, "duration"    # J
    .param p3, "scale"    # F

    .line 171
    nop

    .line 172
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingMagnificationMode(I)I

    move-result v0

    .line 174
    invoke-static {p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingMagnificationScale(F)I

    move-result v1

    .line 171
    const/16 v2, 0x159

    invoke-static {v2, v0, p1, p2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJI)V

    .line 175
    return-void
.end method

.method public static blacklist logNonA11yToolServiceWarningReported(Ljava/lang/String;IJ)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "durationMillis"    # J

    .line 224
    const/16 v0, 0x180

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IJ)V

    .line 226
    return-void
.end method
