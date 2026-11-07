.class public final synthetic Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->binderDied()V

    return-void
.end method
