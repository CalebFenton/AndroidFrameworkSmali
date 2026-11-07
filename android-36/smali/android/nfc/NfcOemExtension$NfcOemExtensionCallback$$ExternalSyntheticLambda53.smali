.class public final synthetic Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcOemExtension$Callback;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/util/List;

.field public final synthetic blacklist f$3:Landroid/content/ComponentName;

.field public final synthetic blacklist f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcOemExtension$Callback;Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;->f$0:Landroid/nfc/NfcOemExtension$Callback;

    iput-object p2, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;->f$2:Ljava/util/List;

    iput-object p4, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;->f$3:Landroid/content/ComponentName;

    iput-object p5, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;->f$0:Landroid/nfc/NfcOemExtension$Callback;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;->f$2:Ljava/util/List;

    iget-object v3, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;->f$3:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onLaunchHceAppChooserActivity$30(Landroid/nfc/NfcOemExtension$Callback;Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method
