.class public Landroid/net/wifi/ICoexCallback$Default;
.super Ljava/lang/Object;
.source "ICoexCallback.java"

# interfaces
.implements Landroid/net/wifi/ICoexCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ICoexCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
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

.method public blacklist onCoexUnsafeChannelsChanged(Ljava/util/List;I)V
    .registers 3
    .param p2, "restrictions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/CoexUnsafeChannel;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    .local p1, "unsafeChannels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/CoexUnsafeChannel;>;"
    return-void
.end method
