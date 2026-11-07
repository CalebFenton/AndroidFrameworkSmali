.class public final Landroid/providers/settings/SystemSettingsProto$DevOptions;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DevOptions"
.end annotation


# static fields
.field public static final blacklist POINTER_LOCATION:J = 0x10b00000001L

.field public static final blacklist SHOW_KEY_PRESSES:J = 0x10b00000004L

.field public static final blacklist SHOW_TOUCHES:J = 0x10b00000002L

.field public static final blacklist TOUCHPAD_VISUALIZER:J = 0x10b00000005L

.field public static final blacklist WINDOW_ORIENTATION_LISTENER_LOG:J = 0x10b00000003L


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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
