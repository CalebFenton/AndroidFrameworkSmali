.class public final synthetic Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/SipDialogStateCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/SipDialogStateCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/SipDialogStateCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/SipDialogStateCallback;

    invoke-virtual {v0}, Landroid/telephony/ims/SipDialogStateCallback;->binderDied()V

    return-void
.end method
