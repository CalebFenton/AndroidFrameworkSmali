.class public final Landroid/telephony/data/UrspRule;
.super Ljava/lang/Object;
.source "UrspRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/UrspRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_URSP_PRECEDENCE:I = 0xff

.field public static final blacklist MIN_URSP_PRECEDENCE:I


# instance fields
.field private final blacklist mPrecedence:I

.field private final blacklist mRouteSelectionDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/RouteSelectionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Landroid/telephony/data/UrspRule$1;

    invoke-direct {v0}, Landroid/telephony/data/UrspRule$1;-><init>()V

    sput-object v0, Landroid/telephony/data/UrspRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;Ljava/util/List;)V
    .registers 5
    .param p1, "precedence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/data/RouteSelectionDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p2, "trafficDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/TrafficDescriptor;>;"
    .local p3, "routeSelectionDescriptor":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/RouteSelectionDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/telephony/data/UrspRule;->mPrecedence:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/UrspRule;->mTrafficDescriptors:Ljava/util/List;

    .line 57
    iget-object v0, p0, Landroid/telephony/data/UrspRule;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/UrspRule;->mRouteSelectionDescriptor:Ljava/util/List;

    .line 59
    iget-object v0, p0, Landroid/telephony/data/UrspRule;->mRouteSelectionDescriptor:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/UrspRule;->mPrecedence:I

    .line 64
    sget-object v0, Landroid/telephony/data/TrafficDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/UrspRule;->mTrafficDescriptors:Ljava/util/List;

    .line 65
    sget-object v0, Landroid/telephony/data/RouteSelectionDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/UrspRule;->mRouteSelectionDescriptor:Ljava/util/List;

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/UrspRule-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/UrspRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 122
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4e

    .line 123
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/UrspRule;

    .line 124
    .local v2, "that":Landroid/telephony/data/UrspRule;
    iget v3, p0, Landroid/telephony/data/UrspRule;->mPrecedence:I

    iget v4, v2, Landroid/telephony/data/UrspRule;->mPrecedence:I

    if-ne v3, v4, :cond_4c

    iget-object v3, p0, Landroid/telephony/data/UrspRule;->mTrafficDescriptors:Ljava/util/List;

    .line 125
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/UrspRule;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_4c

    iget-object v3, p0, Landroid/telephony/data/UrspRule;->mTrafficDescriptors:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/UrspRule;->mTrafficDescriptors:Ljava/util/List;

    .line 126
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/telephony/data/UrspRule;->mRouteSelectionDescriptor:Ljava/util/List;

    .line 127
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/UrspRule;->mRouteSelectionDescriptor:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_4c

    iget-object v3, p0, Landroid/telephony/data/UrspRule;->mRouteSelectionDescriptor:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/UrspRule;->mRouteSelectionDescriptor:Ljava/util/List;

    .line 128
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v1

    .line 124
    :goto_4d
    return v0

    .line 122
    .end local v2    # "that":Landroid/telephony/data/UrspRule;
    :cond_4e
    :goto_4e
    return v1
.end method

.method public whitelist getPrecedence()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/telephony/data/UrspRule;->mPrecedence:I

    return v0
.end method

.method public whitelist getRouteSelectionDescriptor()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/RouteSelectionDescriptor;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/telephony/data/UrspRule;->mRouteSelectionDescriptor:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTrafficDescriptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroid/telephony/data/UrspRule;->mTrafficDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 133
    iget v0, p0, Landroid/telephony/data/UrspRule;->mPrecedence:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/UrspRule;->mTrafficDescriptors:Ljava/util/List;

    iget-object v2, p0, Landroid/telephony/data/UrspRule;->mRouteSelectionDescriptor:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{.precedence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/UrspRule;->mPrecedence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", .trafficDescriptors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/UrspRule;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", .routeSelectionDescriptor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/UrspRule;->mRouteSelectionDescriptor:Ljava/util/List;

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
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget v0, p0, Landroid/telephony/data/UrspRule;->mPrecedence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Landroid/telephony/data/UrspRule;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 98
    iget-object v0, p0, Landroid/telephony/data/UrspRule;->mRouteSelectionDescriptor:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 99
    return-void
.end method
