.class Landroid/content/IIntentSender$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIntentSender.java"

# interfaces
.implements Landroid/content/IIntentSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IIntentSender$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    iput-object p1, p0, Landroid/content/IIntentSender$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 82
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/content/IIntentSender$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 92
    const-string/jumbo v0, "android.content.IIntentSender"

    #@3
    return-object v0
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 97
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 100
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.content.IIntentSender"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 102
    if-eqz p2, :cond_1

    #@14
    .line 103
    const/4 v4, 0x1

    #@15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 104
    const/4 v4, 0x0

    #@19
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c
    .line 109
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    .line 110
    if-eqz p4, :cond_0

    #@21
    invoke-interface {p4}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v3

    #@25
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@28
    .line 111
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b
    .line 112
    if-eqz p6, :cond_2

    #@2d
    .line 113
    const/4 v3, 0x1

    #@2e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 114
    const/4 v3, 0x0

    #@32
    invoke-virtual {p6, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@35
    .line 119
    :goto_1
    iget-object v3, p0, Landroid/content/IIntentSender$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@37
    const/4 v4, 0x1

    #@38
    const/4 v5, 0x0

    #@39
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3c
    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3f
    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    move-result v2

    #@43
    .line 124
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 127
    return v2

    #@4a
    .line 107
    .end local v2    # "_result":I
    :cond_1
    const/4 v4, 0x0

    #@4b
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 123
    :catchall_0
    move-exception v3

    #@50
    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@53
    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@56
    .line 123
    throw v3

    #@57
    .line 117
    :cond_2
    const/4 v3, 0x0

    #@58
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    goto :goto_1
.end method
