.class public final synthetic Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/AudioInputControl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/AudioInputControl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda7;->f$0:Landroid/bluetooth/AudioInputControl;

    return-void
.end method


# virtual methods
.method public final blacklist applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda7;->f$0:Landroid/bluetooth/AudioInputControl;

    check-cast p1, Landroid/bluetooth/IBluetoothVolumeControl;

    invoke-static {v0, p1}, Landroid/bluetooth/AudioInputControl;->$r8$lambda$Nf6m0A_YHZWsTGTJM-CezfB2VIY(Landroid/bluetooth/AudioInputControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
