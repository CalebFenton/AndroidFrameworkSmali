.class public final Landroid/providers/settings/SecureSettingsProto$Rotation;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Rotation"
.end annotation


# static fields
.field public static final blacklist NUM_ROTATION_SUGGESTIONS_ACCEPTED:J = 0x10b00000002L

.field public static final blacklist SHOW_ROTATION_SUGGESTIONS:J = 0x10b00000001L


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

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
