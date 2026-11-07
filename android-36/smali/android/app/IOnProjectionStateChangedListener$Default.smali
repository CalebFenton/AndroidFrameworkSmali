.class public Landroid/app/IOnProjectionStateChangedListener$Default;
.super Ljava/lang/Object;
.source "IOnProjectionStateChangedListener.java"

# interfaces
.implements Landroid/app/IOnProjectionStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IOnProjectionStateChangedListener;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onProjectionStateChanged(ILjava/util/List;)V
    .registers 3
    .param p1, "activeProjectionTypes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    .local p2, "projectingPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
