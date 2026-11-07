.class public final Landroid/providers/settings/GlobalSettingsProto$Gpu;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Gpu"
.end annotation


# static fields
.field public static final blacklist ANGLE_ALLOWLIST:J = 0x10b0000000dL

.field public static final blacklist ANGLE_DEBUG_PACKAGE:J = 0x10b00000011L

.field public static final blacklist ANGLE_EGL_FEATURES:J = 0x10b00000013L

.field public static final blacklist ANGLE_GL_DRIVER_ALL_ANGLE:J = 0x10b00000003L

.field public static final blacklist ANGLE_GL_DRIVER_SELECTION_PKGS:J = 0x10b00000004L

.field public static final blacklist ANGLE_GL_DRIVER_SELECTION_VALUES:J = 0x10b00000005L

.field public static final blacklist DEBUG_APP:J = 0x10b00000001L

.field public static final blacklist DEBUG_LAYERS:J = 0x10b00000002L

.field public static final blacklist DEBUG_LAYERS_GLES:J = 0x10b00000007L

.field public static final blacklist DEBUG_LAYER_APP:J = 0x10b00000006L

.field public static final blacklist SHOW_ANGLE_IN_USE_DIALOG:J = 0x10b0000000fL

.field public static final blacklist UPDATABLE_DRIVER_ALL_APPS:J = 0x10b00000008L

.field public static final blacklist UPDATABLE_DRIVER_PRERELEASE_OPT_IN_APPS:J = 0x10b00000012L

.field public static final blacklist UPDATABLE_DRIVER_PRODUCTION_ALLOWLIST:J = 0x10b0000000cL

.field public static final blacklist UPDATABLE_DRIVER_PRODUCTION_DENYLIST:J = 0x10b0000000bL

.field public static final blacklist UPDATABLE_DRIVER_PRODUCTION_DENYLISTS:J = 0x10b0000000eL

.field public static final blacklist UPDATABLE_DRIVER_PRODUCTION_OPT_IN_APPS:J = 0x10b00000009L

.field public static final blacklist UPDATABLE_DRIVER_PRODUCTION_OPT_OUT_APPS:J = 0x10b0000000aL

.field public static final blacklist UPDATABLE_DRIVER_SPHAL_LIBRARIES:J = 0x10b00000010L


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

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
