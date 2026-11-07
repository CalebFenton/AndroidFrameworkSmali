.class Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "ImsRegistrationCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->updateRegistrationState(I)V

    .line 75
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->-$$Nest$fgetmImsRegistrationUpdate(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;)Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method public whitelist onRegistering(I)V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->updateRegistrationState(I)V

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->-$$Nest$fgetmImsRegistrationUpdate(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;)Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsRegistering(I)V

    return-void
.end method

.method public blacklist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->-$$Nest$fgetmImsRegistrationUpdate(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;)Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 86
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;->onUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method public blacklist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->updateRegistrationState(I)V

    .line 95
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->-$$Nest$fgetmImsRegistrationUpdate(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;)Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method
