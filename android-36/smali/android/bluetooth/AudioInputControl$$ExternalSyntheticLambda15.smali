.class public final synthetic Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/AudioInputControl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/AudioInputControl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda15;->f$0:Landroid/bluetooth/AudioInputControl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda15;->f$0:Landroid/bluetooth/AudioInputControl;

    check-cast p1, Landroid/bluetooth/IBluetoothVolumeControl;

    invoke-static {v0, p1}, Landroid/bluetooth/AudioInputControl;->$r8$lambda$VDw1iTucVxkq7gdEI-1ZBckm4L8(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)V

    return-void
.end method
