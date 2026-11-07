.class public final Landroid/net/nsd/OffloadServiceInfo;
.super Ljava/lang/Object;
.source "OffloadServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/OffloadServiceInfo$Key;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/nsd/OffloadServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHostname:Ljava/lang/String;

.field private final blacklist mKey:Landroid/net/nsd/OffloadServiceInfo$Key;

.field private final blacklist mOffloadPayload:[B

.field private final blacklist mOffloadType:J

.field private final blacklist mPriority:I

.field final blacklist mSubtypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    new-instance v0, Landroid/net/nsd/OffloadServiceInfo$1;

    invoke-direct {v0}, Landroid/net/nsd/OffloadServiceInfo$1;-><init>()V

    sput-object v0, Landroid/net/nsd/OffloadServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/nsd/OffloadServiceInfo$Key;Ljava/util/List;Ljava/lang/String;[BIJ)V
    .registers 8
    .param p1, "key"    # Landroid/net/nsd/OffloadServiceInfo$Key;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "offloadPayload"    # [B
    .param p5, "priority"    # I
    .param p6, "offloadType"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/nsd/OffloadServiceInfo$Key;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[BIJ)V"
        }
    .end annotation

    .line 73
    .local p2, "subtypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Landroid/net/nsd/OffloadServiceInfo;->mKey:Landroid/net/nsd/OffloadServiceInfo$Key;

    .line 78
    iput-object p2, p0, Landroid/net/nsd/OffloadServiceInfo;->mSubtypes:Ljava/util/List;

    .line 79
    iput-object p3, p0, Landroid/net/nsd/OffloadServiceInfo;->mHostname:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadPayload:[B

    .line 81
    iput p5, p0, Landroid/net/nsd/OffloadServiceInfo;->mPriority:I

    .line 82
    iput-wide p6, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadType:J

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-class v0, Landroid/net/nsd/OffloadServiceInfo$Key;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/nsd/OffloadServiceInfo$Key;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/OffloadServiceInfo$Key;

    iput-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mKey:Landroid/net/nsd/OffloadServiceInfo$Key;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mSubtypes:Ljava/util/List;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mHostname:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadPayload:[B

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mPriority:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadType:J

    .line 100
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 224
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 225
    :cond_4
    instance-of v1, p1, Landroid/net/nsd/OffloadServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 226
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/nsd/OffloadServiceInfo;

    .line 227
    .local v1, "that":Landroid/net/nsd/OffloadServiceInfo;
    iget v3, p0, Landroid/net/nsd/OffloadServiceInfo;->mPriority:I

    iget v4, v1, Landroid/net/nsd/OffloadServiceInfo;->mPriority:I

    if-ne v3, v4, :cond_44

    iget-wide v3, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadType:J

    iget-wide v5, v1, Landroid/net/nsd/OffloadServiceInfo;->mOffloadType:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_44

    iget-object v3, p0, Landroid/net/nsd/OffloadServiceInfo;->mKey:Landroid/net/nsd/OffloadServiceInfo$Key;

    iget-object v4, v1, Landroid/net/nsd/OffloadServiceInfo;->mKey:Landroid/net/nsd/OffloadServiceInfo$Key;

    .line 228
    invoke-virtual {v3, v4}, Landroid/net/nsd/OffloadServiceInfo$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/nsd/OffloadServiceInfo;->mHostname:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/nsd/OffloadServiceInfo;->mHostname:Ljava/lang/String;

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadPayload:[B

    iget-object v4, v1, Landroid/net/nsd/OffloadServiceInfo;->mOffloadPayload:[B

    .line 230
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/nsd/OffloadServiceInfo;->mSubtypes:Ljava/util/List;

    iget-object v4, v1, Landroid/net/nsd/OffloadServiceInfo;->mSubtypes:Ljava/util/List;

    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    .line 227
    :goto_45
    return v0
.end method

.method public whitelist getHostname()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mHostname:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getKey()Landroid/net/nsd/OffloadServiceInfo$Key;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mKey:Landroid/net/nsd/OffloadServiceInfo$Key;

    return-object v0
.end method

.method public whitelist getOffloadPayload()[B
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadPayload:[B

    if-nez v0, :cond_6

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_6
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadPayload:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getOffloadType()J
    .registers 3

    .line 195
    iget-wide v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadType:J

    return-wide v0
.end method

.method public whitelist getPriority()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mPriority:I

    return v0
.end method

.method public whitelist getSubtypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mSubtypes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 237
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mKey:Landroid/net/nsd/OffloadServiceInfo$Key;

    iget-object v1, p0, Landroid/net/nsd/OffloadServiceInfo;->mHostname:Ljava/lang/String;

    iget v2, p0, Landroid/net/nsd/OffloadServiceInfo;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadType:J

    .line 238
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroid/net/nsd/OffloadServiceInfo;->mSubtypes:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 237
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 239
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadPayload:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 240
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 214
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mKey:Landroid/net/nsd/OffloadServiceInfo$Key;

    iget-object v1, p0, Landroid/net/nsd/OffloadServiceInfo;->mHostname:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadPayload:[B

    .line 218
    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/net/nsd/OffloadServiceInfo;->mPriority:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadType:J

    .line 219
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Landroid/net/nsd/OffloadServiceInfo;->mSubtypes:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 214
    const-string v1, "OffloadServiceInfo{ mOffloadServiceInfoKey=%s, mHostName=%s, mOffloadPayload=%s, mPriority=%d, mOffloadType=%d, mSubTypes=%s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist withOffloadPayload([B)Landroid/net/nsd/OffloadServiceInfo;
    .registers 10
    .param p1, "offloadPayload"    # [B

    .line 176
    new-instance v0, Landroid/net/nsd/OffloadServiceInfo;

    .line 177
    invoke-virtual {p0}, Landroid/net/nsd/OffloadServiceInfo;->getKey()Landroid/net/nsd/OffloadServiceInfo$Key;

    move-result-object v1

    .line 178
    invoke-virtual {p0}, Landroid/net/nsd/OffloadServiceInfo;->getSubtypes()Ljava/util/List;

    move-result-object v2

    .line 179
    invoke-virtual {p0}, Landroid/net/nsd/OffloadServiceInfo;->getHostname()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {p0}, Landroid/net/nsd/OffloadServiceInfo;->getPriority()I

    move-result v5

    .line 182
    invoke-virtual {p0}, Landroid/net/nsd/OffloadServiceInfo;->getOffloadType()J

    move-result-wide v6

    move-object v4, p1

    .end local p1    # "offloadPayload":[B
    .local v4, "offloadPayload":[B
    invoke-direct/range {v0 .. v7}, Landroid/net/nsd/OffloadServiceInfo;-><init>(Landroid/net/nsd/OffloadServiceInfo$Key;Ljava/util/List;Ljava/lang/String;[BIJ)V

    .line 176
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mKey:Landroid/net/nsd/OffloadServiceInfo$Key;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mSubtypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mHostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 108
    iget v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-wide v0, p0, Landroid/net/nsd/OffloadServiceInfo;->mOffloadType:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    return-void
.end method
