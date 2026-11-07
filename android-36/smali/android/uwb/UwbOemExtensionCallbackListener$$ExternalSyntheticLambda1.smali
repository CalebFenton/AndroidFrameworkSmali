.class public final synthetic Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/uwb/UwbOemExtensionCallbackListener;

.field public final synthetic blacklist f$1:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/uwb/UwbOemExtensionCallbackListener;Landroid/os/PersistableBundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda1;->f$0:Landroid/uwb/UwbOemExtensionCallbackListener;

    iput-object p2, p0, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda1;->f$1:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda1;->f$0:Landroid/uwb/UwbOemExtensionCallbackListener;

    iget-object v1, p0, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda1;->f$1:Landroid/os/PersistableBundle;

    invoke-static {v0, v1}, Landroid/uwb/UwbOemExtensionCallbackListener;->$r8$lambda$bSXBF7bNfMG69W6oDcI9b9Ggu_c(Landroid/uwb/UwbOemExtensionCallbackListener;Landroid/os/PersistableBundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
