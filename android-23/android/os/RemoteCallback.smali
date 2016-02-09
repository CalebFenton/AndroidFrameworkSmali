.class public abstract Landroid/os/RemoteCallback;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallback$DeliverResult;,
        Landroid/os/RemoteCallback$LocalCallback;,
        Landroid/os/RemoteCallback$RemoteCallbackProxy;,
        Landroid/os/RemoteCallback$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/RemoteCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mTarget:Landroid/os/IRemoteCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 96
    new-instance v0, Landroid/os/RemoteCallback$1;

    #@2
    invoke-direct {v0}, Landroid/os/RemoteCallback$1;-><init>()V

    #@5
    .line 95
    sput-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    #@5
    .line 57
    new-instance v0, Landroid/os/RemoteCallback$LocalCallback;

    #@7
    invoke-direct {v0, p0}, Landroid/os/RemoteCallback$LocalCallback;-><init>(Landroid/os/RemoteCallback;)V

    #@a
    iput-object v0, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    #@c
    .line 55
    return-void
.end method

.method constructor <init>(Landroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    #@6
    .line 62
    iput-object p1, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    #@8
    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 72
    if-nez p1, :cond_0

    #@3
    .line 73
    return v3

    #@4
    .line 76
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    #@6
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v1

    #@a
    check-cast p1, Landroid/os/RemoteCallback;

    #@c
    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v2, p1, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    #@e
    invoke-interface {v2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 78
    :catch_0
    move-exception v0

    #@18
    .line 80
    .local v0, "e":Ljava/lang/ClassCastException;
    return v3
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    #@2
    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected abstract onResult(Landroid/os/Bundle;)V
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    #@2
    invoke-interface {v0, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    #@5
    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    #@2
    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@9
    .line 91
    return-void
.end method
