.class Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
.super Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationListenerProxy"
.end annotation


# instance fields
.field private mListener:Lcom/android/ims/ImsConnectionStateListener;

.field private mServiceClass:I

.field final synthetic this$0:Lcom/android/ims/ImsManager;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsManager;ILcom/android/ims/ImsConnectionStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsManager;
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConnectionStateListener;

    #@0
    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;-><init>()V

    #@5
    .line 995
    iput p2, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mServiceClass:I

    #@7
    .line 996
    iput-object p3, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@9
    .line 994
    return-void
.end method


# virtual methods
.method public isSameProxy(I)Z
    .locals 1
    .param p1, "serviceClass"    # I

    #@0
    .prologue
    .line 1000
    iget v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mServiceClass:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public registrationConnected()V
    .locals 1

    #@0
    .prologue
    .line 1006
    const-string/jumbo v0, "registrationConnected ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@6
    .line 1009
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1010
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected()V

    #@f
    .line 1004
    :cond_0
    return-void
.end method

.method public registrationDisconnected(Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationDisconnected :: imsReasonInfo"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@17
    .line 1031
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1032
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsDisconnected(Lcom/android/ims/ImsReasonInfo;)V

    #@20
    .line 1026
    :cond_0
    return-void
.end method

.method public registrationFeatureCapabilityChanged(I[I[I)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    #@0
    .prologue
    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationFeatureCapabilityChanged :: serviceClass="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@17
    .line 1073
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1074
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsConnectionStateListener;->onFeatureCapabilityChanged(I[I[I)V

    #@20
    .line 1070
    :cond_0
    return-void
.end method

.method public registrationProgressing()V
    .locals 1

    #@0
    .prologue
    .line 1017
    const-string/jumbo v0, "registrationProgressing ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@6
    .line 1020
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1021
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsProgressing()V

    #@f
    .line 1015
    :cond_0
    return-void
.end method

.method public registrationResumed()V
    .locals 1

    #@0
    .prologue
    .line 1039
    const-string/jumbo v0, "registrationResumed ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@6
    .line 1042
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1043
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsResumed()V

    #@f
    .line 1037
    :cond_0
    return-void
.end method

.method public registrationServiceCapabilityChanged(II)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationServiceCapabilityChanged :: serviceClass="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 1061
    const-string/jumbo v1, ", event="

    #@13
    .line 1060
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@22
    .line 1063
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 1064
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@28
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected()V

    #@2b
    .line 1059
    :cond_0
    return-void
.end method

.method public registrationSuspended()V
    .locals 1

    #@0
    .prologue
    .line 1050
    const-string/jumbo v0, "registrationSuspended ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@6
    .line 1053
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1054
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsSuspended()V

    #@f
    .line 1048
    :cond_0
    return-void
.end method
