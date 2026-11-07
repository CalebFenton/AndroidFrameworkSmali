.class public final Landroid/app/RemoteLockscreenValidationSession;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/RemoteLockscreenValidationSession$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RemoteLockscreenValidationSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mLockType:I

.field private blacklist mRemainingAttempts:I

.field private blacklist mSourcePublicKey:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSourcePublicKey(Landroid/app/RemoteLockscreenValidationSession;)[B
    .registers 1

    iget-object p0, p0, Landroid/app/RemoteLockscreenValidationSession;->mSourcePublicKey:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLockType(Landroid/app/RemoteLockscreenValidationSession;I)V
    .registers 2

    iput p1, p0, Landroid/app/RemoteLockscreenValidationSession;->mLockType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemainingAttempts(Landroid/app/RemoteLockscreenValidationSession;I)V
    .registers 2

    iput p1, p0, Landroid/app/RemoteLockscreenValidationSession;->mRemainingAttempts:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSourcePublicKey(Landroid/app/RemoteLockscreenValidationSession;[B)V
    .registers 2

    iput-object p1, p0, Landroid/app/RemoteLockscreenValidationSession;->mSourcePublicKey:[B

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/app/RemoteLockscreenValidationSession$1;

    invoke-direct {v0}, Landroid/app/RemoteLockscreenValidationSession$1;-><init>()V

    sput-object v0, Landroid/app/RemoteLockscreenValidationSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/RemoteLockscreenValidationSession-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/RemoteLockscreenValidationSession;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/RemoteLockscreenValidationSession;->mLockType:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteLockscreenValidationSession;->mSourcePublicKey:[B

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/RemoteLockscreenValidationSession;->mRemainingAttempts:I

    .line 143
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/RemoteLockscreenValidationSession-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/RemoteLockscreenValidationSession;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLockType()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/app/RemoteLockscreenValidationSession;->mLockType:I

    return v0
.end method

.method public whitelist getRemainingAttempts()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/app/RemoteLockscreenValidationSession;->mRemainingAttempts:I

    return v0
.end method

.method public whitelist getSourcePublicKey()[B
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/app/RemoteLockscreenValidationSession;->mSourcePublicKey:[B

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 131
    iget v0, p0, Landroid/app/RemoteLockscreenValidationSession;->mLockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Landroid/app/RemoteLockscreenValidationSession;->mSourcePublicKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 133
    iget v0, p0, Landroid/app/RemoteLockscreenValidationSession;->mRemainingAttempts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void
.end method
