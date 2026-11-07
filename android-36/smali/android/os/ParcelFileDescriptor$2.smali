.class Landroid/os/ParcelFileDescriptor$2;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1152
    .local v0, "hasCommChannel":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1153
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .line 1154
    .local v2, "commChannel":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_f

    .line 1155
    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1157
    :cond_f
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1148
    invoke-virtual {p0, p1}, Landroid/os/ParcelFileDescriptor$2;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "size"    # I

    .line 1162
    new-array v0, p1, [Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1148
    invoke-virtual {p0, p1}, Landroid/os/ParcelFileDescriptor$2;->newArray(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method
