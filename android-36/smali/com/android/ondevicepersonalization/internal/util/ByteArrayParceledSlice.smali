.class public final Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;
.super Ljava/lang/Object;
.source "ByteArrayParceledSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_SLICE_SIZE:I


# instance fields
.field private final blacklist mContents:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    add-int/lit8 v0, v0, -0x20

    sput v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->MAX_SLICE_SIZE:I

    .line 88
    new-instance v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice$1;

    invoke-direct {v0}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice$1;-><init>()V

    sput-object v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    const-class v1, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    iput-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->mContents:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 9
    .param p1, "input"    # [B

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_35

    .line 41
    array-length v0, p1

    sget v1, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->MAX_SLICE_SIZE:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->MAX_SLICE_SIZE:I

    div-int/2addr v0, v1

    .line 42
    .local v0, "numSlices":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .local v1, "slices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_2d

    .line 44
    sget v3, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->MAX_SLICE_SIZE:I

    mul-int/2addr v3, v2

    .line 45
    .local v3, "startOffset":I
    sget v4, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->MAX_SLICE_SIZE:I

    array-length v5, p1

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 46
    .local v4, "count":I
    new-array v5, v4, [B

    .line 47
    .local v5, "slice":[B
    const/4 v6, 0x0

    invoke-static {p1, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .end local v3    # "startOffset":I
    .end local v4    # "count":I
    .end local v5    # "slice":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 50
    .end local v2    # "i":I
    :cond_2d
    new-instance v2, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    invoke-direct {v2, v1}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->mContents:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    .line 51
    .end local v0    # "numSlices":I
    .end local v1    # "slices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_38

    .line 52
    :cond_35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->mContents:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    .line 54
    :goto_38
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getByteArray()[B
    .registers 9

    .line 58
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->mContents:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 59
    return-object v1

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->mContents:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    invoke-virtual {v0}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 62
    .local v0, "slices":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez v0, :cond_f

    .line 63
    return-object v1

    .line 65
    :cond_f
    const/4 v1, 0x0

    .line 66
    .local v1, "totalCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 69
    .end local v2    # "i":I
    :cond_22
    new-array v2, v1, [B

    .line 70
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 71
    .local v3, "offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_46

    .line 72
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v5, v5

    add-int/2addr v3, v5

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 75
    .end local v4    # "i":I
    :cond_46
    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->mContents:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    return-void
.end method
