.class public Landroid/window/BackAnimationAdapter;
.super Ljava/lang/Object;
.source "BackAnimationAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRunner:Landroid/window/IBackAnimationRunner;

.field private blacklist mSupportedAnimators:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/window/BackAnimationAdapter$1;

    invoke-direct {v0}, Landroid/window/BackAnimationAdapter$1;-><init>()V

    sput-object v0, Landroid/window/BackAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IBackAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IBackAnimationRunner;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    .line 41
    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IBackAnimationRunner;)V
    .registers 2
    .param p1, "runner"    # Landroid/window/IBackAnimationRunner;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRunner()Landroid/window/IBackAnimationRunner;
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    return-object v0
.end method

.method public blacklist isAnimatable(I)Z
    .registers 6
    .param p1, "backType"    # I

    .line 84
    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 85
    return v1

    .line 87
    :cond_6
    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_17

    .line 88
    iget-object v3, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_14

    .line 89
    return v2

    .line 87
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 92
    .end local v0    # "i":I
    :cond_17
    return v1
.end method

.method public blacklist updateSupportedAnimators(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 51
    .local v0, "size":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    .line 52
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1d

    .line 53
    iget-object v2, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 52
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 55
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 65
    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 67
    return-void
.end method
