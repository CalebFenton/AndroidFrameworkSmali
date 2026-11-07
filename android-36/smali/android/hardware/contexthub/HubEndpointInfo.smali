.class public final Landroid/hardware/contexthub/HubEndpointInfo;
.super Ljava/lang/Object;
.source "HubEndpointInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;,
        Landroid/hardware/contexthub/HubEndpointInfo$EndpointType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/HubEndpointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_APP:I = 0x2

.field public static final whitelist TYPE_FRAMEWORK:I = 0x1

.field public static final whitelist TYPE_HUB_ENDPOINT:I = 0x5

.field public static final whitelist TYPE_NANOAPP:I = 0x4

.field public static final whitelist TYPE_NATIVE:I = 0x3


# instance fields
.field private final blacklist mHubServiceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mRequiredPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mType:I

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 320
    new-instance v0, Landroid/hardware/contexthub/HubEndpointInfo$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubEndpointInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/HubEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/contexthub/EndpointInfo;)V
    .registers 7
    .param p1, "endpointInfo"    # Landroid/hardware/contexthub/EndpointInfo;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    iget-object v1, p1, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    iget-wide v1, v1, Landroid/hardware/contexthub/EndpointId;->hubId:J

    iget-object v3, p1, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    iget-wide v3, v3, Landroid/hardware/contexthub/EndpointId;->id:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    .line 152
    iget v0, p1, Landroid/hardware/contexthub/EndpointInfo;->type:I

    iput v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mType:I

    .line 153
    iget-object v0, p1, Landroid/hardware/contexthub/EndpointInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    .line 154
    iget v0, p1, Landroid/hardware/contexthub/EndpointInfo;->version:I

    iput v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mVersion:I

    .line 155
    iget-object v0, p1, Landroid/hardware/contexthub/EndpointInfo;->tag:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Landroid/hardware/contexthub/EndpointInfo;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mRequiredPermissions:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    iget-object v1, p1, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    array-length v1, v1

    if-ge v0, v1, :cond_4b

    .line 159
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    new-instance v2, Landroid/hardware/contexthub/HubServiceInfo;

    iget-object v3, p1, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/hardware/contexthub/HubServiceInfo;-><init>(Landroid/hardware/contexthub/Service;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 161
    .end local v0    # "i":I
    :cond_4b
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 180
    .local v0, "hubId":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 181
    .local v2, "endpointId":J
    new-instance v4, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    iput-object v4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mType:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mVersion:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mRequiredPermissions:Ljava/util/List;

    .line 187
    iget-object v4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mRequiredPermissions:Ljava/util/List;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 188
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    .line 189
    iget-object v4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    sget-object v5, Landroid/hardware/contexthub/HubServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 190
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/contexthub/HubEndpointInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p4, "hubServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubServiceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->invalid()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    .line 170
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mType:I

    .line 171
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    .line 172
    iput p2, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mVersion:I

    .line 173
    iput-object p3, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mRequiredPermissions:Ljava/util/List;

    .line 175
    iput-object p4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 5

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "flags":I
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubServiceInfo;

    .line 197
    .local v2, "serviceInfo":Landroid/hardware/contexthub/HubServiceInfo;
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubServiceInfo;->describeContents()I

    move-result v3

    or-int/2addr v0, v3

    .line 198
    .end local v2    # "serviceInfo":Landroid/hardware/contexthub/HubServiceInfo;
    goto :goto_7

    .line 199
    :cond_19
    return v0
.end method

.method public whitelist getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRequiredPermissions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mRequiredPermissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getServiceInfoCollection()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 230
    iget v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mType:I

    return v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 262
    iget v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mVersion:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "Endpoint [0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-virtual {v1}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "@ Hub 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-virtual {v1}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, "] Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, ", Tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 205
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mRequiredPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 212
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 213
    return-void
.end method
