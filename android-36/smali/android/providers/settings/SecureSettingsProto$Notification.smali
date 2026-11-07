.class public final Landroid/providers/settings/SecureSettingsProto$Notification;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Notification"
.end annotation


# static fields
.field public static final blacklist BADGING:J = 0x10b00000004L

.field public static final blacklist BUBBLES:J = 0x10b00000007L

.field public static final blacklist ENABLED_ASSISTANT:J = 0x10b00000001L

.field public static final blacklist ENABLED_LISTENERS:J = 0x10b00000002L

.field public static final blacklist ENABLED_POLICY_ACCESS_PACKAGES:J = 0x10b00000003L

.field public static final blacklist IN_CALL_NOTIFICATION_ENABLED:J = 0x10b00000006L

.field public static final blacklist SHOW_NOTE_ABOUT_NOTIFICATION_HIDING:J = 0x10b00000005L


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

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
