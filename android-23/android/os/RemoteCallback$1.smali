.class final Landroid/os/RemoteCallback$1;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/os/RemoteCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/RemoteCallback;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4
    move-result-object v0

    #@5
    .line 99
    .local v0, "target":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@7
    new-instance v1, Landroid/os/RemoteCallback$RemoteCallbackProxy;

    #@9
    .line 100
    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@c
    move-result-object v2

    #@d
    .line 99
    invoke-direct {v1, v2}, Landroid/os/RemoteCallback$RemoteCallbackProxy;-><init>(Landroid/os/IRemoteCallback;)V

    #@10
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/RemoteCallback;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/os/RemoteCallback;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 104
    new-array v0, p1, [Landroid/os/RemoteCallback;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback$1;->newArray(I)[Landroid/os/RemoteCallback;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
