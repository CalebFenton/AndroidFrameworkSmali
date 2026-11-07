.class Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRecommendationsChangeListener.java"

# interfaces
.implements Landroid/printservice/recommendation/IRecommendationsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 106
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 113
    const-string v0, "android.printservice.recommendation.IRecommendationsChangeListener"

    return-object v0
.end method

.method public greylist-max-o onRecommendationsChanged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 119
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.printservice.recommendation.IRecommendationsChangeListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_19

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    nop

    .line 125
    return-void

    .line 123
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    throw v1
.end method
