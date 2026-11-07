.class public Lcom/android/internal/os/AppFuseMount;
.super Ljava/lang/Object;
.source "AppFuseMount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/AppFuseMount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o fd:Landroid/os/ParcelFileDescriptor;

.field public final greylist-max-o mountPointId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/android/internal/os/AppFuseMount$1;

    invoke-direct {v0}, Lcom/android/internal/os/AppFuseMount$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/AppFuseMount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILandroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "mountPointId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput p1, p0, Lcom/android/internal/os/AppFuseMount;->mountPointId:I

    .line 42
    iput-object p2, p0, Lcom/android/internal/os/AppFuseMount;->fd:Landroid/os/ParcelFileDescriptor;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget v0, p0, Lcom/android/internal/os/AppFuseMount;->mountPointId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Lcom/android/internal/os/AppFuseMount;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 54
    return-void
.end method
