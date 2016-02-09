.class public final Landroid/view/inputmethod/InputBinding;
.super Ljava/lang/Object;
.source "InputBinding.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputBinding$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/InputBinding;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "InputBinding"


# instance fields
.field final mConnection:Landroid/view/inputmethod/InputConnection;

.field final mConnectionToken:Landroid/os/IBinder;

.field final mPid:I

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 138
    new-instance v0, Landroid/view/inputmethod/InputBinding$1;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/InputBinding$1;-><init>()V

    #@5
    sput-object v0, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    #@6
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    #@c
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    #@12
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    #@18
    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "conn"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "connToken"    # Landroid/os/IBinder;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    #@5
    .line 61
    iput-object p2, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    #@7
    .line 62
    iput p3, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    #@9
    .line 63
    iput p4, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    #@b
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V
    .locals 1
    .param p1, "conn"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "binding"    # Landroid/view/inputmethod/InputBinding;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput-object p1, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    #@5
    .line 75
    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    #@b
    .line 76
    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getUid()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    #@11
    .line 77
    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getPid()I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    #@17
    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 149
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    #@2
    return-object v0
.end method

.method public getConnectionToken()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getPid()I
    .locals 1

    #@0
    .prologue
    .line 114
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    #@2
    return v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "InputBinding{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 120
    const-string/jumbo v1, " / uid "

    #@15
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 120
    iget v1, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    #@1b
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 120
    const-string/jumbo v1, " / pid "

    #@22
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 120
    iget v1, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    #@28
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 120
    const-string/jumbo v1, "}"

    #@2f
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@5
    .line 131
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 132
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 129
    return-void
.end method
