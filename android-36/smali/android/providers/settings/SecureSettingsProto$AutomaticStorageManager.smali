.class public final Landroid/providers/settings/SecureSettingsProto$AutomaticStorageManager;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutomaticStorageManager"
.end annotation


# static fields
.field public static final blacklist BYTES_CLEARED:J = 0x10b00000003L

.field public static final blacklist DAYS_TO_RETAIN:J = 0x10b00000002L

.field public static final blacklist ENABLED:J = 0x10b00000001L

.field public static final blacklist LAST_RUN:J = 0x10b00000004L

.field public static final blacklist TURNED_OFF_BY_POLICY:J = 0x10b00000005L


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

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
