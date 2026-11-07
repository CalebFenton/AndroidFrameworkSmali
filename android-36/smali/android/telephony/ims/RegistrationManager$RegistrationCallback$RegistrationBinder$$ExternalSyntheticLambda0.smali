.class public final synthetic Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/ImsRegistrationAttributes;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iput-object p2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/ImsRegistrationAttributes;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iget-object v1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/ImsRegistrationAttributes;

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->$r8$lambda$F05J2ZPu6rbEezuIxtH39FiBAi4(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method
