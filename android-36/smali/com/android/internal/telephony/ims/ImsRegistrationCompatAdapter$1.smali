.class Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;
.super Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.source "ImsRegistrationCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method public blacklist registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->-$$Nest$sfgetRADIO_TECH_MAPPER()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, -0x1

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 105
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist registrationConnected()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistered(I)V

    return-void
.end method

.method public blacklist registrationConnectedWithRadioTech(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->-$$Nest$sfgetRADIO_TECH_MAPPER()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistered(I)V

    return-void
.end method

.method public blacklist registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist registrationFeatureCapabilityChanged(I[I[I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist registrationProgressing()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistering(I)V

    return-void
.end method

.method public blacklist registrationProgressingWithRadioTech(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->-$$Nest$sfgetRADIO_TECH_MAPPER()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistering(I)V

    return-void
.end method

.method public blacklist registrationResumed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist registrationServiceCapabilityChanged(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist registrationSuspended()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist voiceMessageCountUpdate(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
