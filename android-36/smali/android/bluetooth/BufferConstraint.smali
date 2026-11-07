.class public final Landroid/bluetooth/BufferConstraint;
.super Ljava/lang/Object;
.source "BufferConstraint.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BufferConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mDefaultMillis:I

.field private final blacklist mMaxMillis:I

.field private final blacklist mMinMillis:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const-class v0, Landroid/bluetooth/BufferConstraint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BufferConstraint;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/bluetooth/BufferConstraint$1;

    invoke-direct {v0}, Landroid/bluetooth/BufferConstraint$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BufferConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 4
    .param p1, "defaultMillis"    # I
    .param p2, "maxMillis"    # I
    .param p3, "minMillis"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/bluetooth/BufferConstraint;->mDefaultMillis:I

    .line 39
    iput p2, p0, Landroid/bluetooth/BufferConstraint;->mMaxMillis:I

    .line 40
    iput p3, p0, Landroid/bluetooth/BufferConstraint;->mMinMillis:I

    .line 41
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BufferConstraint;->mDefaultMillis:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BufferConstraint;->mMaxMillis:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BufferConstraint;->mMinMillis:I

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultMillis()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 80
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mDefaultMillis:I

    return v0
.end method

.method public whitelist getMaxMillis()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 91
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mMaxMillis:I

    return v0
.end method

.method public whitelist getMinMillis()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 102
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mMinMillis:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mDefaultMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mMaxMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mMinMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void
.end method
