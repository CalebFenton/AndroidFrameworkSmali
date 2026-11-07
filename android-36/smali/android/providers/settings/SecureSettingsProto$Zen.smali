.class public final Landroid/providers/settings/SecureSettingsProto$Zen;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Zen"
.end annotation


# static fields
.field public static final blacklist DURATION:J = 0x10b00000001L

.field public static final blacklist SETTINGS_SUGGESTION_VIEWED:J = 0x10b00000005L

.field public static final blacklist SETTINGS_UPDATED:J = 0x10b00000004L

.field public static final blacklist SHOW_ZEN_SETTINGS_SUGGESTION:J = 0x10b00000003L

.field public static final blacklist SHOW_ZEN_UPGRADE_NOTIFICATION:J = 0x10b00000002L


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

    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
