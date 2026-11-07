.class public final Landroid/providers/settings/SystemSettingsProto$Touchpad;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Touchpad"
.end annotation


# static fields
.field public static final blacklist ACCELERATION_ENABLED:J = 0x10b00000008L

.field public static final blacklist NATURAL_SCROLLING:J = 0x10b00000001L

.field public static final blacklist POINTER_SPEED:J = 0x10b00000002L

.field public static final blacklist RIGHT_CLICK_ZONE:J = 0x10b00000003L

.field public static final blacklist SYSTEM_GESTURES:J = 0x10b00000007L

.field public static final blacklist TAP_DRAGGING:J = 0x10b00000005L

.field public static final blacklist TAP_TO_CLICK:J = 0x10b00000004L

.field public static final blacklist THREE_FINGER_TAP_CUSTOMIZATION:J = 0x10b00000006L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SystemSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/SystemSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
