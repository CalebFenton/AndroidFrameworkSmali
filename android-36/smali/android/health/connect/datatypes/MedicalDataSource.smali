.class public final Landroid/health/connect/datatypes/MedicalDataSource;
.super Ljava/lang/Object;
.source "MedicalDataSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/MedicalDataSource$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/datatypes/MedicalDataSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayName:Ljava/lang/String;

.field private final blacklist mFhirBaseUri:Landroid/net/Uri;

.field private final blacklist mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mLastDataUpdateTime:Ljava/time/Instant;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/health/connect/datatypes/MedicalDataSource$1;

    invoke-direct {v0}, Landroid/health/connect/datatypes/MedicalDataSource$1;-><init>()V

    sput-object v0, Landroid/health/connect/datatypes/MedicalDataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mId:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mPackageName:Ljava/lang/String;

    .line 98
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mFhirBaseUri:Landroid/net/Uri;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mDisplayName:Ljava/lang/String;

    .line 100
    const-class v0, Landroid/health/connect/datatypes/FhirVersion;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/health/connect/datatypes/FhirVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/FhirVersion;

    .line 101
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/FhirVersion;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 104
    .local v0, "lastDataUpdateTimeMillis":J
    nop

    .line 105
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_63

    .line 106
    const/4 v2, 0x0

    goto :goto_67

    .line 107
    :cond_63
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    :goto_67
    iput-object v2, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mLastDataUpdateTime:Ljava/time/Instant;

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/datatypes/MedicalDataSource-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/datatypes/MedicalDataSource;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Ljava/time/Instant;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "fhirBaseUri"    # Landroid/net/Uri;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;
    .param p6, "lastDataUpdateTime"    # Ljava/time/Instant;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iput-object p1, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mId:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mPackageName:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mFhirBaseUri:Landroid/net/Uri;

    .line 89
    iput-object p4, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mDisplayName:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 91
    iput-object p6, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mLastDataUpdateTime:Ljava/time/Instant;

    .line 92
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Ljava/time/Instant;Landroid/health/connect/datatypes/MedicalDataSource-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/health/connect/datatypes/MedicalDataSource;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Ljava/time/Instant;)V

    return-void
.end method

.method public static blacklist validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 175
    .local p0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v0, "invalidIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 177
    .local v1, "uuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 179
    .local v3, "id":Ljava/lang/String;
    :try_start_1a
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_21} :catch_22

    .line 182
    goto :goto_26

    .line 180
    :catch_22
    move-exception v4

    .line 181
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_26
    goto :goto_e

    .line 184
    :cond_27
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 187
    return-object v1

    .line 185
    :cond_2e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid data source ID(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 194
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/MedicalDataSource;

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/MedicalDataSource;

    .line 195
    .local v1, "that":Landroid/health/connect/datatypes/MedicalDataSource;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MedicalDataSource;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 196
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MedicalDataSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 197
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getFhirBaseUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MedicalDataSource;->getFhirBaseUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 198
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MedicalDataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 199
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MedicalDataSource;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/FhirVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 200
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getLastDataUpdateTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MedicalDataSource;->getLastDataUpdateTime()Ljava/time/Instant;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_62

    :cond_61
    move v0, v2

    .line 195
    :goto_62
    return v0

    .line 194
    .end local v1    # "that":Landroid/health/connect/datatypes/MedicalDataSource;
    :cond_63
    return v2
.end method

.method public whitelist getDisplayName()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFhirBaseUri()Landroid/net/Uri;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mFhirBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLastDataUpdateTime()Ljava/time/Instant;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mLastDataUpdateTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 206
    nop

    .line 207
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getId()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getFhirBaseUri()Landroid/net/Uri;

    move-result-object v2

    .line 210
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v4

    .line 212
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getLastDataUpdateTime()Ljava/time/Instant;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 206
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ",packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, ",fhirBaseUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getFhirBaseUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ",displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, ",fhirVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, ",lastDataUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalDataSource;->getLastDataUpdateTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 159
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mFhirBaseUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mLastDataUpdateTime:Ljava/time/Instant;

    if-nez v0, :cond_21

    const-wide/16 v0, 0x0

    goto :goto_27

    :cond_21
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource;->mLastDataUpdateTime:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    :goto_27
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    return-void
.end method
