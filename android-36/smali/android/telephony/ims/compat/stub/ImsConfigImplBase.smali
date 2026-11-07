.class public Landroid/telephony/ims/compat/stub/ImsConfigImplBase;
.super Ljava/lang/Object;
.source "ImsConfigImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsConfigImplBase"


# instance fields
.field greylist-max-o mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;


# direct methods
.method public constructor greylist-max-r <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/compat/stub/ImsConfigImplBase;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    .line 66
    return-void
.end method


# virtual methods
.method public greylist-max-o getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .registers 4
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public greylist-max-r getIImsConfig()Lcom/android/ims/internal/IImsConfig;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    return-object v0
.end method

.method public greylist-max-o getProvisionedStringValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getProvisionedValue(I)I
    .registers 3
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    return-void
.end method

.method public greylist-max-o getVolteProvisioned()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o notifyProvisionedValueChanged(II)V
    .registers 5
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 180
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(IIZ)V

    .line 181
    return-void
.end method

.method public final greylist-max-o notifyProvisionedValueChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public greylist-max-o setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .registers 5
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public greylist-max-o setProvisionedStringValue(ILjava/lang/String;)I
    .registers 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o setProvisionedValue(II)I
    .registers 4
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .registers 3
    .param p1, "quality"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method
