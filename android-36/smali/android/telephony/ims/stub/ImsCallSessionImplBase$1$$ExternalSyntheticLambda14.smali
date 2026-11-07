.class public final synthetic Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

.field public final synthetic blacklist f$1:C

.field public final synthetic blacklist f$2:Landroid/os/Message;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;CLandroid/os/Message;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iput-char p2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;->f$1:C

    iput-object p3, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;->f$2:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iget-char v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;->f$1:C

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;->f$2:Landroid/os/Message;

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->$r8$lambda$4mDUSAqamkcFHgF44ZHd41dP_cM(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;CLandroid/os/Message;)V

    return-void
.end method
