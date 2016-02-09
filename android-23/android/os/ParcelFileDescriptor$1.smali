.class final Landroid/os/ParcelFileDescriptor$1;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 947
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 948
    .local v2, "hasCommChannel":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    #@7
    move-result-object v1

    #@8
    .line 949
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v0, 0x0

    #@9
    .line 950
    .local v0, "commChannel":Ljava/io/FileDescriptor;
    if-eqz v2, :cond_0

    #@b
    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    #@e
    move-result-object v0

    #@f
    .line 953
    .end local v0    # "commChannel":Ljava/io/FileDescriptor;
    :cond_0
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    #@11
    invoke-direct {v3, v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@14
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 946
    invoke-virtual {p0, p1}, Landroid/os/ParcelFileDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 958
    new-array v0, p1, [Landroid/os/ParcelFileDescriptor;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 957
    invoke-virtual {p0, p1}, Landroid/os/ParcelFileDescriptor$1;->newArray(I)[Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
