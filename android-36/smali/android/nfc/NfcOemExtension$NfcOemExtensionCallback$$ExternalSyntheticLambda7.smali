.class public final synthetic Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda7;->f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    iput-boolean p2, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda7;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda7;->f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    iget-boolean v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda7;->f$1:Z

    check-cast p1, Landroid/nfc/NfcOemExtension$Callback;

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->$r8$lambda$Kc7z3nk8M8oBdRNTLs7T2nDu8Fw(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
