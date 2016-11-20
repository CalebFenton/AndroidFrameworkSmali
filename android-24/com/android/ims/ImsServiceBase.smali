.class public abstract Lcom/android/ims/ImsServiceBase;
.super Ljava/lang/Object;
.source "ImsServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsServiceBase$ImsServiceBinder;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/android/ims/ImsServiceBase$ImsServiceBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getBinder()Lcom/android/ims/ImsServiceBase$ImsServiceBinder;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 124
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase;->mBinder:Lcom/android/ims/ImsServiceBase$ImsServiceBinder;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 125
    new-instance v0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;

    #@7
    invoke-direct {v0, p0, v1}, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;-><init>(Lcom/android/ims/ImsServiceBase;Lcom/android/ims/ImsServiceBase$ImsServiceBinder;)V

    #@a
    iput-object v0, p0, Lcom/android/ims/ImsServiceBase;->mBinder:Lcom/android/ims/ImsServiceBase$ImsServiceBinder;

    #@c
    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase;->mBinder:Lcom/android/ims/ImsServiceBase$ImsServiceBinder;

    #@e
    return-object v0
.end method

.method protected onClose(I)V
    .locals 0
    .param p1, "serviceId"    # I

    #@0
    .prologue
    .line 138
    return-void
.end method

.method protected onCreateCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    #@0
    .prologue
    .line 161
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onCreateCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    #@0
    .prologue
    .line 168
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onGetConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 186
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onGetEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 1
    .param p1, "serviceId"    # I

    #@0
    .prologue
    .line 200
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onGetMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1
    .param p1, "serviceId"    # I

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onGetPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onGetUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 1
    .param p1, "serviceId"    # I

    #@0
    .prologue
    .line 180
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onIsConnected(III)Z
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    #@0
    .prologue
    .line 145
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onIsOpened(I)Z
    .locals 1
    .param p1, "serviceId"    # I

    #@0
    .prologue
    .line 151
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onOpen(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    #@0
    .prologue
    .line 135
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onSetRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    #@0
    .prologue
    .line 154
    return-void
.end method

.method protected onSetUiTTYMode(IILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 203
    return-void
.end method

.method protected onTurnOffIms(I)V
    .locals 0
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 193
    return-void
.end method

.method protected onTurnOnIms(I)V
    .locals 0
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 189
    return-void
.end method
