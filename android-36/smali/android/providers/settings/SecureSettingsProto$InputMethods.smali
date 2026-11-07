.class public final Landroid/providers/settings/SecureSettingsProto$InputMethods;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputMethods"
.end annotation


# static fields
.field public static final blacklist DEFAULT_INPUT_METHOD:J = 0x10b00000001L

.field public static final blacklist DEFAULT_VOICE_INPUT_METHOD:J = 0x10b00000008L

.field public static final blacklist DISABLED_SYSTEM_INPUT_METHODS:J = 0x10b00000002L

.field public static final blacklist ENABLED_INPUT_METHODS:J = 0x10b00000003L

.field public static final blacklist METHOD_SELECTOR_VISIBILITY:J = 0x10b00000004L

.field public static final blacklist SELECTED_INPUT_METHOD_SUBTYPE:J = 0x10b00000006L

.field public static final blacklist SHOW_IME_WITH_HARD_KEYBOARD:J = 0x10b00000007L

.field public static final blacklist SUBTYPE_HISTORY:J = 0x10b00000005L


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

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
