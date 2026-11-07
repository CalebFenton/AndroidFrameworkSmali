.class public final Landroid/providers/settings/GlobalSettingsProto$Notification;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Notification"
.end annotation


# static fields
.field public static final blacklist BUBBLES:J = 0x10b00000006L

.field public static final blacklist DISABLE_SCREEN_SHARE_PROTECTIONS_FOR_APPS_AND_NOTIFICATIONS:J = 0x10b00000007L

.field public static final blacklist MAX_NOTIFICATION_ENQUEUE_RATE:J = 0x10b00000001L

.field public static final blacklist SHOW_NOTIFICATION_CHANNEL_WARNINGS:J = 0x10b00000002L

.field public static final blacklist SMART_REPLIES_IN_NOTIFICATIONS_FLAGS:J = 0x10b00000004L

.field public static final blacklist SMART_SUGGESTIONS_IN_NOTIFICATIONS_FLAGS:J = 0x10b00000005L

.field public static final blacklist SNOOZE_OPTIONS:J = 0x10b00000003L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
