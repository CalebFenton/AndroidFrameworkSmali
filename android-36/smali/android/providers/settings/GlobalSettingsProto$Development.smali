.class public final Landroid/providers/settings/GlobalSettingsProto$Development;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Development"
.end annotation


# static fields
.field public static final blacklist DISABLE_WINDOW_BLURS:J = 0x10b00000009L

.field public static final blacklist EMULATE_DISPLAY_CUTOUT:J = 0x10b00000005L

.field public static final blacklist ENABLE_FREEFORM_WINDOWS_SUPPORT:J = 0x10b00000003L

.field public static final blacklist ENABLE_NON_RESIZABLE_MULTI_WINDOW:J = 0x10b00000008L

.field public static final blacklist ENABLE_SIZECOMPAT_FREEFORM:J = 0x10b00000007L

.field public static final blacklist FORCE_DESKTOP_MODE_ON_EXTERNAL_DISPLAYS:J = 0x10b00000006L

.field public static final blacklist FORCE_RESIZABLE_ACTIVITIES:J = 0x10b00000002L

.field public static final blacklist FORCE_RTL:J = 0x10b00000004L

.field public static final blacklist SETTINGS_ENABLED:J = 0x10b00000001L


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

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
