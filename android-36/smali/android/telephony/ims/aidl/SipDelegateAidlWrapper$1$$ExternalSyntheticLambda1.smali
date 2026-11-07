.class public final synthetic Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/SipDelegate;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/stub/SipDelegate;

    iput-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/stub/SipDelegate;

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->lambda$notifyMessageReceiveError$2(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V

    return-void
.end method
