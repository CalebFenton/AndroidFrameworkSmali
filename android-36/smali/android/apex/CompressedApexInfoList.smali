.class public Landroid/apex/CompressedApexInfoList;
.super Ljava/lang/Object;
.source "CompressedApexInfoList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/apex/CompressedApexInfoList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist apexInfos:[Landroid/apex/CompressedApexInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Landroid/apex/CompressedApexInfoList$1;

    invoke-direct {v0}, Landroid/apex/CompressedApexInfoList$1;-><init>()V

    sput-object v0, Landroid/apex/CompressedApexInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 58
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 61
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/apex/CompressedApexInfoList;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 60
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 63
    :cond_19
    return v1

    .line 65
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 66
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 68
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;

    invoke-direct {p0, v1}, Landroid/apex/CompressedApexInfoList;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 54
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 38
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 40
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_42

    .line 41
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_40

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 44
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 47
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    return-void

    .line 45
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_26
    :try_start_26
    sget-object v2, Landroid/apex/CompressedApexInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/apex/CompressedApexInfo;

    iput-object v2, p0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_40

    .line 44
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 47
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    nop

    .line 49
    return-void

    .line 45
    :cond_3a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :catchall_40
    move-exception v2

    goto :goto_4a

    .line 40
    :cond_42
    :try_start_42
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/apex/CompressedApexInfoList;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_40

    .line 44
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/apex/CompressedApexInfoList;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_4a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_53

    .line 45
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_53
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 28
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v1, p0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 31
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    return-void
.end method
