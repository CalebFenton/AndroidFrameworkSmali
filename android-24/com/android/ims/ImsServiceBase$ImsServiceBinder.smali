.class final Lcom/android/ims/ImsServiceBase$ImsServiceBinder;
.super Lcom/android/ims/internal/IImsService$Stub;
.source "ImsServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsServiceBase;


# direct methods
.method private constructor <init>(Lcom/android/ims/ImsServiceBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsServiceBase;

    #@0
    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/ImsServiceBase;Lcom/android/ims/ImsServiceBase$ImsServiceBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsServiceBase;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;-><init>(Lcom/android/ims/ImsServiceBase;)V

    #@3
    return-void
.end method


# virtual methods
.method public close(I)V
    .locals 1
    .param p1, "serviceId"    # I

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onClose(I)V

    #@5
    .line 50
    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsServiceBase;->onCreateCallProfile(III)Lcom/android/ims/ImsCallProfile;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsServiceBase;->onCreateCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onGetConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 1
    .param p1, "serviceId"    # I

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onGetEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1
    .param p1, "serviceId"    # I

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onGetMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsServiceBase;->onGetPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 1
    .param p1, "serviceId"    # I

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onGetUtInterface(I)Lcom/android/ims/internal/IImsUt;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isConnected(III)Z
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsServiceBase;->onIsConnected(III)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOpened(I)Z
    .locals 1
    .param p1, "serviceId"    # I

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onIsOpened(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/ImsServiceBase;->onOpen(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsServiceBase;->onSetRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    #@5
    .line 65
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsServiceBase;->onSetUiTTYMode(IILandroid/os/Message;)V

    #@5
    .line 111
    return-void
.end method

.method public turnOffIms(I)V
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onTurnOffIms(I)V

    #@5
    .line 101
    return-void
.end method

.method public turnOnIms(I)V
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onTurnOnIms(I)V

    #@5
    .line 96
    return-void
.end method
