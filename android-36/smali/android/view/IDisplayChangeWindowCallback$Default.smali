.class public Landroid/view/IDisplayChangeWindowCallback$Default;
.super Ljava/lang/Object;
.source "IDisplayChangeWindowCallback.java"

# interfaces
.implements Landroid/view/IDisplayChangeWindowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayChangeWindowCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist continueDisplayChange(Landroid/window/WindowContainerTransaction;)V
    .registers 2
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
