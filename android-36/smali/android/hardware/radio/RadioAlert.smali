.class public final Landroid/hardware/radio/RadioAlert;
.super Ljava/lang/Object;
.source "RadioAlert.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioAlert$AlertInfo;,
        Landroid/hardware/radio/RadioAlert$AlertArea;,
        Landroid/hardware/radio/RadioAlert$Polygon;,
        Landroid/hardware/radio/RadioAlert$Coordinate;,
        Landroid/hardware/radio/RadioAlert$Geocode;,
        Landroid/hardware/radio/RadioAlert$AlertCertainty;,
        Landroid/hardware/radio/RadioAlert$AlertSeverity;,
        Landroid/hardware/radio/RadioAlert$AlertUrgency;,
        Landroid/hardware/radio/RadioAlert$AlertCategory;,
        Landroid/hardware/radio/RadioAlert$AlertMessageType;,
        Landroid/hardware/radio/RadioAlert$AlertStatus;
    }
.end annotation


# static fields
.field public static final whitelist CATEGORY_CBRNE:I = 0xa

.field public static final whitelist CATEGORY_ENV:I = 0x7

.field public static final whitelist CATEGORY_FIRE:I = 0x5

.field public static final whitelist CATEGORY_GEO:I = 0x0

.field public static final whitelist CATEGORY_HEALTH:I = 0x6

.field public static final whitelist CATEGORY_INFRA:I = 0x9

.field public static final whitelist CATEGORY_MET:I = 0x1

.field public static final whitelist CATEGORY_OTHER:I = 0xb

.field public static final whitelist CATEGORY_RESCUE:I = 0x4

.field public static final whitelist CATEGORY_SAFETY:I = 0x2

.field public static final whitelist CATEGORY_SECURITY:I = 0x3

.field public static final whitelist CATEGORY_TRANSPORT:I = 0x8

.field public static final whitelist CERTAINTY_LIKELY:I = 0x1

.field public static final whitelist CERTAINTY_OBSERVED:I = 0x0

.field public static final whitelist CERTAINTY_POSSIBLE:I = 0x2

.field public static final whitelist CERTAINTY_UNKNOWN:I = 0x4

.field public static final whitelist CERTAINTY_UNLIKELY:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioAlert;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MESSAGE_TYPE_ALERT:I = 0x0

.field public static final whitelist MESSAGE_TYPE_CANCEL:I = 0x2

.field public static final whitelist MESSAGE_TYPE_UPDATE:I = 0x1

.field public static final whitelist SEVERITY_EXTREME:I = 0x0

.field public static final whitelist SEVERITY_MINOR:I = 0x3

.field public static final whitelist SEVERITY_MODERATE:I = 0x2

.field public static final whitelist SEVERITY_SEVERE:I = 0x1

.field public static final whitelist SEVERITY_UNKNOWN:I = 0x4

.field public static final whitelist STATUS_ACTUAL:I = 0x0

.field public static final whitelist STATUS_EXERCISE:I = 0x1

.field public static final whitelist STATUS_TEST:I = 0x2

.field public static final whitelist URGENCY_EXPECTED:I = 0x1

.field public static final whitelist URGENCY_FUTURE:I = 0x2

.field public static final whitelist URGENCY_IMMEDIATE:I = 0x0

.field public static final whitelist URGENCY_PAST:I = 0x3

.field public static final whitelist URGENCY_UNKNOWN:I = 0x4


# instance fields
.field private final blacklist mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMessageType:I

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 979
    new-instance v0, Landroid/hardware/radio/RadioAlert$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioAlert$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/util/List;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "messageType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertInfo;",
            ">;)V"
        }
    .end annotation

    .line 893
    .local p3, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioAlert$AlertInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput p1, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    .line 895
    iput p2, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    .line 896
    const-string v0, "Alert info list can not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    .line 897
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    .line 901
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/hardware/radio/RadioAlert$AlertInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/hardware/radio/RadioAlert$AlertInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    .line 904
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioAlert-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioAlert;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 968
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 969
    return v0

    .line 971
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioAlert;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioAlert;

    .line 975
    .local v1, "other":Landroid/hardware/radio/RadioAlert;
    iget v3, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    iget v4, v1, Landroid/hardware/radio/RadioAlert;->mStatus:I

    if-ne v3, v4, :cond_23

    iget v3, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    iget v4, v1, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    if-ne v3, v4, :cond_23

    iget-object v3, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    iget-object v4, v1, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    .line 976
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_24

    :cond_23
    move v0, v2

    .line 975
    :goto_24
    return v0

    .line 972
    .end local v1    # "other":Landroid/hardware/radio/RadioAlert;
    :cond_25
    return v2
.end method

.method public whitelist getInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertInfo;",
            ">;"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMessageType()I
    .registers 2

    .line 927
    iget v0, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    return v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 915
    iget v0, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 963
    iget v0, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioAlert [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", infoList= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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

    .line 944
    iget v0, p0, Landroid/hardware/radio/RadioAlert;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    iget v0, p0, Landroid/hardware/radio/RadioAlert;->mMessageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert;->mInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 947
    return-void
.end method
