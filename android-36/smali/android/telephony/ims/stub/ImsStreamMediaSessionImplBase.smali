.class public Landroid/telephony/ims/stub/ImsStreamMediaSessionImplBase;
.super Lcom/android/ims/internal/IImsStreamMediaSession$Stub;
.source "ImsStreamMediaSessionImplBase.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/ims/internal/IImsStreamMediaSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method
