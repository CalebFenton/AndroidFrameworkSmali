.class public final synthetic Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/SipDialogStateCallback;

.field public final synthetic blacklist f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;

    iput-object p2, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/SipDialogStateCallback;

    iput-object p3, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;

    iget-object v1, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/SipDialogStateCallback;

    iget-object v2, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->$r8$lambda$rRMWRsVgZEeOnxnrFT0BAe561gk(Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V

    return-void
.end method
