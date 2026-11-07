.class public final Landroid/health/connect/restore/StageRemoteDataException;
.super Ljava/lang/RuntimeException;
.source "StageRemoteDataException.java"

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
            "Landroid/health/connect/restore/StageRemoteDataException;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExceptionsByFileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/health/connect/HealthConnectException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/health/connect/restore/StageRemoteDataException$1;

    invoke-direct {v0}, Landroid/health/connect/restore/StageRemoteDataException$1;-><init>()V

    sput-object v0, Landroid/health/connect/restore/StageRemoteDataException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/health/connect/restore/StageRemoteDataException;->mExceptionsByFileNames:Ljava/util/Map;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 43
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_2f

    .line 44
    iget-object v2, p0, Landroid/health/connect/restore/StageRemoteDataException;->mExceptionsByFileNames:Ljava/util/Map;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 47
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 46
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 49
    invoke-virtual {v4}, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->getHealthConnectException()Landroid/health/connect/HealthConnectException;

    move-result-object v4

    .line 44
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 51
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/restore/StageRemoteDataException-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/restore/StageRemoteDataException;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "exceptionsByFileNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/health/connect/HealthConnectException;>;"
    const-string v0, "StageRemoteDataException"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/health/connect/restore/StageRemoteDataException;->mExceptionsByFileNames:Ljava/util/Map;

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Landroid/health/connect/restore/StageRemoteDataException;->mExceptionsByFileNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExceptionsByFileNames()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/health/connect/HealthConnectException;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroid/health/connect/restore/StageRemoteDataException;->mExceptionsByFileNames:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget-object v0, p0, Landroid/health/connect/restore/StageRemoteDataException;->mExceptionsByFileNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Landroid/health/connect/restore/StageRemoteDataException;->mExceptionsByFileNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    .local v1, "fileNamePfd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/health/connect/HealthConnectException;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    new-instance v2, Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/HealthConnectException;

    invoke-direct {v2, v3}, Landroid/health/connect/aidl/HealthConnectExceptionParcel;-><init>(Landroid/health/connect/HealthConnectException;)V

    .line 91
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    .end local v1    # "fileNamePfd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/health/connect/HealthConnectException;>;"
    goto :goto_13

    .line 95
    :cond_38
    return-void
.end method
