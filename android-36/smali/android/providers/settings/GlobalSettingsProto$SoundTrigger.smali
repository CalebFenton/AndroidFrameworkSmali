.class public final Landroid/providers/settings/GlobalSettingsProto$SoundTrigger;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SoundTrigger"
.end annotation


# static fields
.field public static final blacklist DETECTION_SERVICE_OP_TIMEOUT_MS:J = 0x10b00000002L

.field public static final blacklist MAX_SOUND_TRIGGER_DETECTION_SERVICE_OPS_PER_DAY:J = 0x10b00000001L


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

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
