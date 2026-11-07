.class public final Landroid/provider/OpenAssetFileRequest;
.super Ljava/lang/Object;
.source "OpenAssetFileRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/OpenAssetFileRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallback:Landroid/provider/IOpenAssetFileCallback;

.field private final blacklist mCancellationSignal:Landroid/provider/IMPCancellationSignal;

.field private final blacklist mMimeType:Ljava/lang/String;

.field private final blacklist mOpts:Landroid/os/Bundle;

.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Landroid/provider/OpenAssetFileRequest$1;

    invoke-direct {v0}, Landroid/provider/OpenAssetFileRequest$1;-><init>()V

    sput-object v0, Landroid/provider/OpenAssetFileRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/provider/IOpenAssetFileCallback;Landroid/provider/IMPCancellationSignal;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "callback"    # Landroid/provider/IOpenAssetFileCallback;
    .param p5, "cancellationSignal"    # Landroid/provider/IMPCancellationSignal;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/provider/OpenAssetFileRequest;->mUri:Landroid/net/Uri;

    .line 45
    iput-object p2, p0, Landroid/provider/OpenAssetFileRequest;->mMimeType:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Landroid/provider/OpenAssetFileRequest;->mOpts:Landroid/os/Bundle;

    .line 47
    iput-object p4, p0, Landroid/provider/OpenAssetFileRequest;->mCallback:Landroid/provider/IOpenAssetFileCallback;

    .line 48
    iput-object p5, p0, Landroid/provider/OpenAssetFileRequest;->mCancellationSignal:Landroid/provider/IMPCancellationSignal;

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mUri:Landroid/net/Uri;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mMimeType:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mOpts:Landroid/os/Bundle;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/IOpenAssetFileCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/provider/IOpenAssetFileCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mCallback:Landroid/provider/IOpenAssetFileCallback;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/IMPCancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/provider/IMPCancellationSignal;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mCancellationSignal:Landroid/provider/IMPCancellationSignal;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/provider/OpenAssetFileRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/provider/OpenAssetFileRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallback()Landroid/provider/IOpenAssetFileCallback;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mCallback:Landroid/provider/IOpenAssetFileCallback;

    return-object v0
.end method

.method public blacklist getCancellationSignal()Landroid/provider/IMPCancellationSignal;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mCancellationSignal:Landroid/provider/IMPCancellationSignal;

    return-object v0
.end method

.method public blacklist getMimeType()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOpts()Landroid/os/Bundle;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mOpts:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 93
    iget-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    iget-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mOpts:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mCallback:Landroid/provider/IOpenAssetFileCallback;

    invoke-interface {v0}, Landroid/provider/IOpenAssetFileCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 97
    iget-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mCancellationSignal:Landroid/provider/IMPCancellationSignal;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/provider/OpenAssetFileRequest;->mCancellationSignal:Landroid/provider/IMPCancellationSignal;

    invoke-interface {v0}, Landroid/provider/IMPCancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 98
    return-void
.end method
