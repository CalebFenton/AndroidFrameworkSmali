.class public abstract Landroid/service/games/IGameSessionService$Stub;
.super Landroid/os/Binder;
.source "IGameSessionService.java"

# interfaces
.implements Landroid/service/games/IGameSessionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/IGameSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/IGameSessionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_create:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.service.games.IGameSessionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/games/IGameSessionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/games/IGameSessionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "android.service.games.IGameSessionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/games/IGameSessionService;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Landroid/service/games/IGameSessionService;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Landroid/service/games/IGameSessionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/games/IGameSessionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 55
    packed-switch p0, :pswitch_data_8

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 59
    :pswitch_5
    const-string v0, "create"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 70
    invoke-static {p1}, Landroid/service/games/IGameSessionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const-string v0, "android.service.games.IGameSessionService"

    .line 75
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 79
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1

    .line 82
    :cond_16
    packed-switch p1, :pswitch_data_46

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 87
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/games/IGameSessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/games/IGameSessionController;

    move-result-object v2

    .line 89
    .local v2, "_arg0":Landroid/service/games/IGameSessionController;
    sget-object v3, Landroid/service/games/CreateGameSessionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/games/CreateGameSessionRequest;

    .line 91
    .local v3, "_arg1":Landroid/service/games/CreateGameSessionRequest;
    sget-object v4, Landroid/service/games/GameSessionViewHostConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/games/GameSessionViewHostConfiguration;

    .line 93
    .local v4, "_arg2":Landroid/service/games/GameSessionViewHostConfiguration;
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 94
    .local v5, "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/games/IGameSessionService$Stub;->create(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    .line 96
    nop

    .line 103
    .end local v2    # "_arg0":Landroid/service/games/IGameSessionController;
    .end local v3    # "_arg1":Landroid/service/games/CreateGameSessionRequest;
    .end local v4    # "_arg2":Landroid/service/games/GameSessionViewHostConfiguration;
    .end local v5    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    return v1

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
