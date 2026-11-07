.class public Landroid/view/IAppTransitionAnimationSpecsFuture$Default;
.super Ljava/lang/Object;
.source "IAppTransitionAnimationSpecsFuture.java"

# interfaces
.implements Landroid/view/IAppTransitionAnimationSpecsFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IAppTransitionAnimationSpecsFuture;
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

.method public blacklist get()[Landroid/view/AppTransitionAnimationSpec;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method
