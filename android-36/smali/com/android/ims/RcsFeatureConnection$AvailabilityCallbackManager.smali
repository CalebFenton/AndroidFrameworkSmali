.class public Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;
.super Lcom/android/ims/ImsCallbackAdapterManager;
.source "RcsFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/RcsFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AvailabilityCallbackManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/ImsCallbackAdapterManager<",
        "Landroid/telephony/ims/aidl/IImsCapabilityCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/RcsFeatureConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/RcsFeatureConnection;Landroid/content/Context;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/ims/RcsFeatureConnection;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->this$0:Lcom/android/ims/RcsFeatureConnection;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, p1, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    iget v2, p1, Lcom/android/ims/RcsFeatureConnection;->mSubId:I

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/ims/ImsCallbackAdapterManager;-><init>(Landroid/content/Context;Ljava/lang/Object;II)V

    .line 52
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

    .line 47
    check-cast p1, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->registerCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public blacklist registerCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->this$0:Lcom/android/ims/RcsFeatureConnection;

    invoke-static {v0, p1}, Lcom/android/ims/RcsFeatureConnection;->-$$Nest$maddCapabilityCallback(Lcom/android/ims/RcsFeatureConnection;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 62
    nop

    .line 63
    return-void

    .line 58
    :catch_7
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->this$0:Lcom/android/ims/RcsFeatureConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register capability callback error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ims/RcsFeatureConnection;->-$$Nest$mloge(Lcom/android/ims/RcsFeatureConnection;Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, " CapabilityCallbackManager: Register callback error"

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

    .line 47
    check-cast p1, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->unregisterCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public blacklist unregisterCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->this$0:Lcom/android/ims/RcsFeatureConnection;

    invoke-static {v0, p1}, Lcom/android/ims/RcsFeatureConnection;->-$$Nest$mremoveCapabilityCallback(Lcom/android/ims/RcsFeatureConnection;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 71
    goto :goto_1f

    .line 69
    :catch_6
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->this$0:Lcom/android/ims/RcsFeatureConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove capability callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ims/RcsFeatureConnection;->-$$Nest$mloge(Lcom/android/ims/RcsFeatureConnection;Ljava/lang/String;)V

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method
