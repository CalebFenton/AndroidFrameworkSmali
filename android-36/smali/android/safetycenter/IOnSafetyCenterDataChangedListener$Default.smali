.class public Landroid/safetycenter/IOnSafetyCenterDataChangedListener$Default;
.super Ljava/lang/Object;
.source "IOnSafetyCenterDataChangedListener.java"

# interfaces
.implements Landroid/safetycenter/IOnSafetyCenterDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/IOnSafetyCenterDataChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onError(Landroid/safetycenter/SafetyCenterErrorDetails;)V
    .registers 2
    .param p1, "safetyCenterErrorDetails"    # Landroid/safetycenter/SafetyCenterErrorDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onSafetyCenterDataChanged(Landroid/safetycenter/SafetyCenterData;)V
    .registers 2
    .param p1, "data"    # Landroid/safetycenter/SafetyCenterData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
