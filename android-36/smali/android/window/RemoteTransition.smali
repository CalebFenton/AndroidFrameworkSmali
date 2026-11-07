.class public final Landroid/window/RemoteTransition;
.super Ljava/lang/Object;
.source "RemoteTransition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/RemoteTransition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAppThread:Landroid/app/IApplicationThread;

.field private blacklist mDebugName:Ljava/lang/String;

.field private blacklist mRemoteTransition:Landroid/window/IRemoteTransition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Landroid/window/RemoteTransition$1;

    invoke-direct {v0}, Landroid/window/RemoteTransition$1;-><init>()V

    sput-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 174
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/IRemoteTransition$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransition;

    move-result-object v1

    .line 175
    .local v1, "remoteTransition":Landroid/window/IRemoteTransition;
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    move-object v2, v3

    goto :goto_1e

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 176
    .local v2, "appThread":Landroid/app/IApplicationThread;
    :goto_1e
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_24

    move-object v4, v3

    goto :goto_28

    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "debugName":Ljava/lang/String;
    :goto_28
    iput-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    .line 179
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-static {v5, v3, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 181
    iput-object v2, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    .line 182
    iput-object v4, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IRemoteTransition;)V
    .registers 3
    .param p1, "remoteTransition"    # Landroid/window/IRemoteTransition;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .registers 7
    .param p1, "remoteTransition"    # Landroid/window/IRemoteTransition;
    .param p2, "appThread"    # Landroid/app/IApplicationThread;
    .param p3, "debugName"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    .line 79
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 81
    iput-object p2, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    .line 82
    iput-object p3, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IRemoteTransition;Ljava/lang/String;)V
    .registers 4
    .param p1, "remoteTransition"    # Landroid/window/IRemoteTransition;
    .param p2, "debugName"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public blacklist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-interface {v0}, Landroid/window/IRemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppThread()Landroid/app/IApplicationThread;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public blacklist getDebugName()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/IRemoteTransition;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    return-object v0
.end method

.method public blacklist setAppThread(Landroid/app/IApplicationThread;)Landroid/window/RemoteTransition;
    .registers 2
    .param p1, "value"    # Landroid/app/IApplicationThread;

    .line 126
    iput-object p1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    .line 127
    return-object p0
.end method

.method public blacklist setDebugName(Ljava/lang/String;)Landroid/window/RemoteTransition;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public blacklist setRemoteTransition(Landroid/window/IRemoteTransition;)Landroid/window/RemoteTransition;
    .registers 5
    .param p1, "value"    # Landroid/window/IRemoteTransition;

    .line 115
    iput-object p1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    .line 116
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 118
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteTransition { remoteTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appThread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debugName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "flg":B
    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 157
    :cond_8
    iget-object v1, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 158
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 159
    iget-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 160
    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 161
    :cond_20
    iget-object v1, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    :cond_29
    return-void
.end method
