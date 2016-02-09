.class public Lcom/android/ims/ImsConnectionStateListener;
.super Ljava/lang/Object;
.source "ImsConnectionStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onFeatureCapabilityChanged(I[I[I)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    #@0
    .prologue
    .line 67
    return-void
.end method

.method public onImsConnected()V
    .locals 0

    #@0
    .prologue
    .line 30
    return-void
.end method

.method public onImsDisconnected(Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 44
    return-void
.end method

.method public onImsProgressing()V
    .locals 0

    #@0
    .prologue
    .line 37
    return-void
.end method

.method public onImsResumed()V
    .locals 0

    #@0
    .prologue
    .line 52
    return-void
.end method

.method public onImsSuspended()V
    .locals 0

    #@0
    .prologue
    .line 59
    return-void
.end method
