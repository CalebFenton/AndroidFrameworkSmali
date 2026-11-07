.class public final Landroid/providers/settings/SecureSettingsProto$Assist;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Assist"
.end annotation


# static fields
.field public static final blacklist ASSISTANT:J = 0x10b00000001L

.field public static final blacklist DISCLOSURE_ENABLED:J = 0x10b00000004L

.field public static final blacklist GESTURE_ENABLED:J = 0x10b00000005L

.field public static final blacklist GESTURE_SENSITIVITY:J = 0x10b00000006L

.field public static final blacklist GESTURE_SETUP_COMPLETE:J = 0x10b00000009L

.field public static final blacklist GESTURE_SILENCE_ALERTS_ENABLED:J = 0x10b00000007L

.field public static final blacklist GESTURE_WAKE_ENABLED:J = 0x10b00000008L

.field public static final blacklist LONG_PRESS_HOME_ENABLED:J = 0x10b0000000bL

.field public static final blacklist SCREENSHOT_ENABLED:J = 0x10b00000003L

.field public static final blacklist SEARCH_ALL_ENTRYPOINTS_ENABLED:J = 0x10b0000000fL

.field public static final blacklist SEARCH_LONG_PRESS_HOME_ENABLED:J = 0x10b0000000dL

.field public static final blacklist SEARCH_PRESS_HOLD_NAV_HANDLE_ENABLED:J = 0x10b0000000cL

.field public static final blacklist STRUCTURE_ENABLED:J = 0x10b00000002L

.field public static final blacklist TOUCH_GESTURE_ENABLED:J = 0x10b0000000aL

.field public static final blacklist VISUAL_QUERY_ACCESSIBILITY_DETECTION_ENABLED:J = 0x10b0000000eL


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/SecureSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
