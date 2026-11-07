.class public final synthetic Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/telephony/ims/ImsStreamMediaProfile;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iput p2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;->f$1:I

    iput-object p3, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;->f$2:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iget v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;->f$1:I

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;->f$2:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->$r8$lambda$_juLxQYx0OEHiEB-THdD02_i7Tw(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method
