.class Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;
.super Lcom/android/ims/ImsCallbackAdapterManager;
.source "RcsFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/RcsFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistrationCallbackManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/ImsCallbackAdapterManager<",
        "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/RcsFeatureConnection;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/RcsFeatureConnection;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->this$0:Lcom/android/ims/RcsFeatureConnection;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, p1, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    iget p1, p1, Lcom/android/ims/RcsFeatureConnection;->mSubId:I

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/ims/ImsCallbackAdapterManager;-><init>(Landroid/content/Context;Ljava/lang/Object;II)V

    .line 80
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist registerCallback(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    check-cast p1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->registerCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public blacklist registerCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 6
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 84
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->this$0:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 85
    .local v0, "imsRegistration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_16

    .line 92
    :try_start_8
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsRegistration;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_d

    .line 96
    nop

    .line 97
    return-void

    .line 93
    :catch_d
    move-exception v1

    .line 94
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RegistrationCallbackAdapter: RcsFeature binder is dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_16
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->this$0:Lcom/android/ims/RcsFeatureConnection;

    const-string v2, "Register IMS registration callback: ImsRegistration is null"

    invoke-static {v1, v2}, Lcom/android/ims/RcsFeatureConnection;->-$$Nest$mloge(Lcom/android/ims/RcsFeatureConnection;Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RegistrationCallbackAdapter: RcsFeature is not available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic blacklist unregisterCallback(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    check-cast p1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->unregisterCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public blacklist unregisterCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 7
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 101
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->this$0:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 102
    .local v0, "imsRegistration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-nez v0, :cond_10

    .line 103
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->this$0:Lcom/android/ims/RcsFeatureConnection;

    const-string v2, "Unregister IMS registration callback: ImsRegistration is null"

    invoke-static {v1, v2}, Lcom/android/ims/RcsFeatureConnection;->-$$Nest$mlogi(Lcom/android/ims/RcsFeatureConnection;Ljava/lang/String;)V

    .line 104
    return-void

    .line 108
    :cond_10
    :try_start_10
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsRegistration;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 111
    goto :goto_2d

    .line 109
    :catch_14
    move-exception v1

    .line 110
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->this$0:Lcom/android/ims/RcsFeatureConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove registration callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ims/RcsFeatureConnection;->-$$Nest$mloge(Lcom/android/ims/RcsFeatureConnection;Ljava/lang/String;)V

    .line 112
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method
