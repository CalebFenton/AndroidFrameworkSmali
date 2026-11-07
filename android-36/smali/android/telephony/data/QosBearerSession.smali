.class public final Landroid/telephony/data/QosBearerSession;
.super Ljava/lang/Object;
.source "QosBearerSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist qos:Landroid/telephony/data/Qos;

.field final blacklist qosBearerFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerFilter;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist qosBearerSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Landroid/telephony/data/QosBearerSession$1;

    invoke-direct {v0}, Landroid/telephony/data/QosBearerSession$1;-><init>()V

    sput-object v0, Landroid/telephony/data/QosBearerSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/telephony/data/Qos;Ljava/util/List;)V
    .registers 5
    .param p1, "qosBearerSessionId"    # I
    .param p2, "qos"    # Landroid/telephony/data/Qos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/data/Qos;",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerFilter;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p3, "qosBearerFilterList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/QosBearerFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    .line 42
    iput-object p2, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    .line 44
    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    .line 49
    const-class v0, Landroid/telephony/data/Qos;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos;

    iput-object v0, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    .line 51
    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    const-class v1, Landroid/telephony/data/QosBearerFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/data/QosBearerFilter;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/QosBearerSession-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/QosBearerSession;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 99
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    instance-of v2, p1, Landroid/telephony/data/QosBearerSession;

    if-nez v2, :cond_c

    goto :goto_3a

    .line 103
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/QosBearerSession;

    .line 104
    .local v2, "other":Landroid/telephony/data/QosBearerSession;
    iget v3, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    iget v4, v2, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    iget-object v4, v2, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    .line 105
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    .line 107
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 104
    :goto_39
    return v0

    .line 100
    .end local v2    # "other":Landroid/telephony/data/QosBearerSession;
    :cond_3a
    :goto_3a
    return v1
.end method

.method public blacklist getQos()Landroid/telephony/data/Qos;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    return-object v0
.end method

.method public blacklist getQosBearerFilterList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerFilter;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getQosBearerSessionId()I
    .registers 2

    .line 55
    iget v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 92
    iget v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    iget-object v2, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QosBearerSession { qosBearerSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " qosBearerFilterList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    invoke-virtual {v0}, Landroid/telephony/data/Qos;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 70
    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    check-cast v0, Landroid/telephony/data/EpsQos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1d

    .line 72
    :cond_16
    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qos:Landroid/telephony/data/Qos;

    check-cast v0, Landroid/telephony/data/NrQos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    :goto_1d
    iget-object v0, p0, Landroid/telephony/data/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 75
    return-void
.end method
