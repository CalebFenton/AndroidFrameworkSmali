.class public final Landroid/view/inputmethod/InputBinding;
.super Ljava/lang/Object;
.source "InputBinding.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InputBinding;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o TAG:Ljava/lang/String; = "InputBinding"


# instance fields
.field final greylist-max-o mConnection:Landroid/view/inputmethod/InputConnection;

.field final greylist-max-o mConnectionToken:Landroid/os/IBinder;

.field final greylist-max-o mPid:I

.field final greylist-max-o mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 140
    new-instance v0, Landroid/view/inputmethod/InputBinding$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputBinding$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    .line 87
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V
    .registers 5
    .param p1, "conn"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "connToken"    # Landroid/os/IBinder;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 63
    iput-object p2, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    .line 64
    iput p3, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    .line 65
    iput p4, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    .line 66
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V
    .registers 4
    .param p1, "conn"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "binding"    # Landroid/view/inputmethod/InputBinding;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 77
    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    .line 78
    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getUid()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    .line 79
    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getPid()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getConnection()Landroid/view/inputmethod/InputConnection;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public whitelist getConnectionToken()Landroid/os/IBinder;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getPid()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    return v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputBinding{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 133
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return-void
.end method
