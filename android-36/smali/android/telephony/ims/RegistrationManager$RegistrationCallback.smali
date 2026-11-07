.class public Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.super Ljava/lang/Object;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegistrationCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;
    }
.end annotation


# instance fields
.field private final blacklist mBinder:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    invoke-direct {v0, p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    iput-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->mBinder:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    return-void
.end method


# virtual methods
.method public final blacklist getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .registers 2

    .line 397
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->mBinder:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    return-object v0
.end method

.method public whitelist onRegistered(I)V
    .registers 2
    .param p1, "imsTransportType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    return-void
.end method

.method public whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 3
    .param p1, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 311
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onRegistered(I)V

    .line 312
    return-void
.end method

.method public whitelist onRegistering(I)V
    .registers 2
    .param p1, "imsTransportType"    # I

    .line 321
    return-void
.end method

.method public whitelist onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 3
    .param p1, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 330
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onRegistering(I)V

    .line 331
    return-void
.end method

.method public blacklist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 393
    return-void
.end method

.method public whitelist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "imsTransportType"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 381
    return-void
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 339
    return-void
.end method

.method public blacklist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 4
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "imsRadioTech"    # I

    .line 356
    invoke-virtual {p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 357
    return-void
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V
    .registers 3
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "details"    # Landroid/telephony/ims/SipDetails;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 370
    return-void
.end method

.method public blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 403
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->mBinder:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    invoke-static {v0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->-$$Nest$msetExecutor(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Ljava/util/concurrent/Executor;)V

    .line 404
    return-void
.end method
