.class public final synthetic Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

.field public final synthetic blacklist f$1:[Landroid/net/Uri;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;[Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;->f$1:[Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;->f$1:[Landroid/net/Uri;

    check-cast p1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-static {v0, v1, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->$r8$lambda$BV9oU03g3HLb6DKB2_LJ-u6UnBM(Landroid/telephony/ims/stub/ImsRegistrationImplBase;[Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method
