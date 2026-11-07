.class public final synthetic Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/aidl/IImsRegistrationCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->$r8$lambda$Nj7rFvtwYgoAPgcQqPUknT1UxfI(Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method
