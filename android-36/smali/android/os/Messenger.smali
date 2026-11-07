.class public final Landroid/os/Messenger;
.super Ljava/lang/Object;
.source "Messenger.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mTarget:Landroid/os/IMessenger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Landroid/os/Messenger$1;

    invoke-direct {v0}, Landroid/os/Messenger$1;-><init>()V

    sput-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "target"    # Landroid/os/Handler;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Handler;->getIMessenger()Landroid/os/IMessenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    .line 47
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "target"    # Landroid/os/IBinder;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Landroid/os/IMessenger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMessenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    .line 149
    return-void
.end method

.method public static whitelist readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 137
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 138
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_c

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public static whitelist writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 122
    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_a

    .line 123
    :cond_9
    const/4 v0, 0x0

    .line 122
    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 124
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 78
    return v0

    .line 81
    :cond_4
    :try_start_4
    iget-object v1, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v1}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroid/os/Messenger;

    iget-object v2, v2, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    .line 82
    invoke-interface {v2}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 81
    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_17} :catch_18

    return v0

    .line 83
    :catch_18
    move-exception v1

    .line 85
    return v0
.end method

.method public whitelist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist send(Landroid/os/Message;)V
    .registers 3
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0, p1}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V

    .line 60
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    iget-object v0, p0, Landroid/os/Messenger;->mTarget:Landroid/os/IMessenger;

    invoke-interface {v0}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 98
    return-void
.end method
