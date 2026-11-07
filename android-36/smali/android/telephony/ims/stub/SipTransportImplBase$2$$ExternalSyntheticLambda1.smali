.class public final synthetic Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/SipTransportImplBase$2;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/aidl/ISipDelegate;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/SipTransportImplBase$2;Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/stub/SipTransportImplBase$2;

    iput-object p2, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/aidl/ISipDelegate;

    iput p3, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/stub/SipTransportImplBase$2;

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/aidl/ISipDelegate;

    iget v2, p0, Landroid/telephony/ims/stub/SipTransportImplBase$2$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/stub/SipTransportImplBase$2;->$r8$lambda$koFmp8pQ0lysaRp5iurmIClQVcs(Landroid/telephony/ims/stub/SipTransportImplBase$2;Landroid/telephony/ims/aidl/ISipDelegate;I)V

    return-void
.end method
