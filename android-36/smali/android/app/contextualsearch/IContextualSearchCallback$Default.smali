.class public Landroid/app/contextualsearch/IContextualSearchCallback$Default;
.super Ljava/lang/Object;
.source "IContextualSearchCallback.java"

# interfaces
.implements Landroid/app/contextualsearch/IContextualSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contextualsearch/IContextualSearchCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onError(Landroid/os/ParcelableException;)V
    .registers 2
    .param p1, "error"    # Landroid/os/ParcelableException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onResult(Landroid/app/contextualsearch/ContextualSearchState;)V
    .registers 2
    .param p1, "state"    # Landroid/app/contextualsearch/ContextualSearchState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
