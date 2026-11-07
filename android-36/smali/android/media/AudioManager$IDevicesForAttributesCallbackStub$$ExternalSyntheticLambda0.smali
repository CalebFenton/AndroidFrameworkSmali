.class public final synthetic Landroid/media/AudioManager$IDevicesForAttributesCallbackStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;

.field public final synthetic blacklist f$1:Landroid/media/AudioAttributes;

.field public final synthetic blacklist f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;Landroid/media/AudioAttributes;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;

    iput-object p2, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioAttributes;

    iput-object p3, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;

    iget-object v1, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioAttributes;

    iget-object v2, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;->$r8$lambda$W02OkHjzJVPpLLk2SAkDvyu8TN4(Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;Landroid/media/AudioAttributes;Ljava/util/List;)V

    return-void
.end method
