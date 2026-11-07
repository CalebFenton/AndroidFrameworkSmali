.class public final Landroid/health/connect/restore/StageRemoteDataRequest;
.super Ljava/lang/Object;
.source "StageRemoteDataRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/restore/StageRemoteDataRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPfdsByFileName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/health/connect/restore/StageRemoteDataRequest$1;

    invoke-direct {v0}, Landroid/health/connect/restore/StageRemoteDataRequest$1;-><init>()V

    sput-object v0, Landroid/health/connect/restore/StageRemoteDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 40
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/restore/StageRemoteDataRequest;->mPfdsByFileName:Ljava/util/Map;

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_2b

    .line 42
    iget-object v2, p0, Landroid/health/connect/restore/StageRemoteDataRequest;->mPfdsByFileName:Ljava/util/Map;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/os/ParcelFileDescriptor;

    .line 45
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Landroid/os/ParcelFileDescriptor;

    .line 44
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 42
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 48
    .end local v1    # "i":I
    :cond_2b
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/restore/StageRemoteDataRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/restore/StageRemoteDataRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "pfdsByFileName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Landroid/health/connect/restore/StageRemoteDataRequest;->mPfdsByFileName:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPfdsByFileName()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/health/connect/restore/StageRemoteDataRequest;->mPfdsByFileName:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget-object v0, p0, Landroid/health/connect/restore/StageRemoteDataRequest;->mPfdsByFileName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Landroid/health/connect/restore/StageRemoteDataRequest;->mPfdsByFileName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    .local v1, "fileNamePfd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    .end local v1    # "fileNamePfd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    goto :goto_13

    .line 81
    :cond_33
    return-void
.end method
