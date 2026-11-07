.class public final Landroid/provider/OpenFileRequest;
.super Ljava/lang/Object;
.source "OpenFileRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/OpenFileRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallback:Landroid/provider/IOpenFileCallback;

.field private final blacklist mCancellationSignal:Landroid/provider/IMPCancellationSignal;

.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Landroid/provider/OpenFileRequest$1;

    invoke-direct {v0}, Landroid/provider/OpenFileRequest$1;-><init>()V

    sput-object v0, Landroid/provider/OpenFileRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;Landroid/provider/IOpenFileCallback;Landroid/provider/IMPCancellationSignal;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/provider/IOpenFileCallback;
    .param p3, "cancellationSignal"    # Landroid/provider/IMPCancellationSignal;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/provider/OpenFileRequest;->mUri:Landroid/net/Uri;

    .line 40
    iput-object p2, p0, Landroid/provider/OpenFileRequest;->mCallback:Landroid/provider/IOpenFileCallback;

    .line 41
    iput-object p3, p0, Landroid/provider/OpenFileRequest;->mCancellationSignal:Landroid/provider/IMPCancellationSignal;

    .line 42
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/provider/OpenFileRequest;->mUri:Landroid/net/Uri;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/IOpenFileCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/provider/IOpenFileCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/OpenFileRequest;->mCallback:Landroid/provider/IOpenFileCallback;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/IMPCancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/provider/IMPCancellationSignal;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/OpenFileRequest;->mCancellationSignal:Landroid/provider/IMPCancellationSignal;

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/provider/OpenFileRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/provider/OpenFileRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallback()Landroid/provider/IOpenFileCallback;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/provider/OpenFileRequest;->mCallback:Landroid/provider/IOpenFileCallback;

    return-object v0
.end method

.method public blacklist getCancellationSignal()Landroid/provider/IMPCancellationSignal;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/provider/OpenFileRequest;->mCancellationSignal:Landroid/provider/IMPCancellationSignal;

    return-object v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/provider/OpenFileRequest;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Landroid/provider/OpenFileRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    iget-object v0, p0, Landroid/provider/OpenFileRequest;->mCallback:Landroid/provider/IOpenFileCallback;

    invoke-interface {v0}, Landroid/provider/IOpenFileCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 74
    iget-object v0, p0, Landroid/provider/OpenFileRequest;->mCancellationSignal:Landroid/provider/IMPCancellationSignal;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/provider/OpenFileRequest;->mCancellationSignal:Landroid/provider/IMPCancellationSignal;

    invoke-interface {v0}, Landroid/provider/IMPCancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 75
    return-void
.end method
