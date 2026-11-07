.class public Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Default;
.super Ljava/lang/Object;
.source "IFeatureDetailsCallback.java"

# interfaces
.implements Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;
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

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorParams"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onSuccess(Landroid/app/ondeviceintelligence/FeatureDetails;)V
    .registers 2
    .param p1, "result"    # Landroid/app/ondeviceintelligence/FeatureDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
