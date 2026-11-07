.class public Landroid/adservices/appsetid/IAppSetIdProviderService$Default;
.super Ljava/lang/Object;
.source "IAppSetIdProviderService.java"

# interfaces
.implements Landroid/adservices/appsetid/IAppSetIdProviderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/appsetid/IAppSetIdProviderService;
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

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAppSetId(ILjava/lang/String;Landroid/adservices/appsetid/IGetAppSetIdProviderCallback;)V
    .registers 4
    .param p1, "clientUid"    # I
    .param p2, "clientPackageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/adservices/appsetid/IGetAppSetIdProviderCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
