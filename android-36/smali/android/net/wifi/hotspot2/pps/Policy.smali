.class public final Landroid/net/wifi/hotspot2/pps/Policy;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_EXCLUSION_SSIDS:I = 0x80

.field private static final greylist-max-o MAX_PORT_STRING_BYTES:I = 0x40

.field private static final greylist-max-o MAX_SSID_BYTES:I = 0x20

.field private static final greylist-max-o NULL_VALUE:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Policy"


# instance fields
.field private greylist-max-o mExcludedSsidList:[Ljava/lang/String;

.field private greylist-max-o mMaximumBssLoadValue:I

.field private greylist-max-o mMinHomeDownlinkBandwidth:J

.field private greylist-max-o mMinHomeUplinkBandwidth:J

.field private greylist-max-o mMinRoamingDownlinkBandwidth:J

.field private greylist-max-o mMinRoamingUplinkBandwidth:J

.field private greylist-max-o mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

.field private greylist-max-o mPreferredRoamingPartnerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRequiredProtoPortMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 499
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 88
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 105
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 112
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 135
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 148
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 311
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 322
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 333
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/wifi/hotspot2/pps/Policy;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Policy;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 88
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 105
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 112
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 135
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 148
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 311
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 322
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 341
    if-nez p1, :cond_1d

    .line 342
    return-void

    .line 344
    :cond_1d
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 345
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 346
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 347
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 348
    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 349
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 350
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 353
    :cond_42
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-eqz v0, :cond_4e

    .line 354
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 356
    :cond_4e
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-eqz v0, :cond_5a

    .line 357
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 360
    :cond_5a
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v0, :cond_67

    .line 361
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 363
    :cond_67
    return-void
.end method

.method private static greylist-max-o writeProtoPortMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 5
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 568
    .local p1, "protoPortMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 569
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    return-void

    .line 572
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 574
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_16

    .line 577
    :cond_39
    return-void
.end method

.method private static greylist-max-o writeRoamingPartnerList(Landroid/os/Parcel;ILjava/util/List;)V
    .registers 5
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    .line 588
    .local p2, "partnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    if-nez p2, :cond_7

    .line 589
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    return-void

    .line 592
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 594
    .local v1, "partner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    invoke-virtual {p0, v1, p1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 595
    .end local v1    # "partner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    goto :goto_12

    .line 596
    :cond_22
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 385
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 386
    return v0

    .line 388
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 389
    return v2

    .line 391
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Policy;

    .line 393
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/Policy;
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_77

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_77

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_77

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_77

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 397
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-nez v3, :cond_40

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-nez v3, :cond_77

    goto :goto_4a

    :cond_40
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 399
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    :goto_4a
    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    iget v4, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    if-ne v3, v4, :cond_77

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-nez v3, :cond_59

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-nez v3, :cond_77

    goto :goto_63

    :cond_59
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 403
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    :goto_63
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_6c

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_77

    goto :goto_76

    :cond_6c
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 405
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    :goto_76
    goto :goto_78

    :cond_77
    move v0, v2

    .line 393
    :goto_78
    return v0
.end method

.method public greylist-max-o getExcludedSsidList()[Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getMaximumBssLoadValue()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    return v0
.end method

.method public greylist-max-o getMinHomeDownlinkBandwidth()J
    .registers 3

    .line 86
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    return-wide v0
.end method

.method public greylist-max-o getMinHomeUplinkBandwidth()J
    .registers 3

    .line 93
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    return-wide v0
.end method

.method public greylist-max-o getMinRoamingDownlinkBandwidth()J
    .registers 3

    .line 110
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    return-wide v0
.end method

.method public greylist-max-o getMinRoamingUplinkBandwidth()J
    .registers 3

    .line 117
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    return-wide v0
.end method

.method public greylist-max-o getPolicyUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .registers 2

    .line 327
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-object v0
.end method

.method public greylist-max-o getPreferredRoamingPartnerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getRequiredProtoPortMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 410
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 411
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 412
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    iget-object v10, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    filled-new-array/range {v2 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 410
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o setExcludedSsidList([Ljava/lang/String;)V
    .registers 2
    .param p1, "excludedSsidList"    # [Ljava/lang/String;

    .line 125
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 126
    return-void
.end method

.method public greylist-max-o setMaximumBssLoadValue(I)V
    .registers 2
    .param p1, "maximumBssLoadValue"    # I

    .line 150
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 151
    return-void
.end method

.method public greylist-max-o setMinHomeDownlinkBandwidth(J)V
    .registers 3
    .param p1, "minHomeDownlinkBandwidth"    # J

    .line 83
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 84
    return-void
.end method

.method public greylist-max-o setMinHomeUplinkBandwidth(J)V
    .registers 3
    .param p1, "minHomeUplinkBandwidth"    # J

    .line 90
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 91
    return-void
.end method

.method public greylist-max-o setMinRoamingDownlinkBandwidth(J)V
    .registers 3
    .param p1, "minRoamingDownlinkBandwidth"    # J

    .line 107
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 108
    return-void
.end method

.method public greylist-max-o setMinRoamingUplinkBandwidth(J)V
    .registers 3
    .param p1, "minRoamingUplinkBandwidth"    # J

    .line 114
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 115
    return-void
.end method

.method public greylist-max-o setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .registers 2
    .param p1, "policyUpdate"    # Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 324
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 325
    return-void
.end method

.method public greylist-max-o setPreferredRoamingPartnerList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    .line 313
    .local p1, "partnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 314
    return-void
.end method

.method public greylist-max-o setRequiredProtoPortMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "requiredProtoPortMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 138
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MinHomeDownlinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 420
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v1, "MinHomeUplinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v1, "MinRoamingDownlinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, "MinRoamingUplinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v1, "ExcludedSSIDList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 427
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v1, "RequiredProtoPortMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v1, "MaximumBSSLoadValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v1, "PreferredRoamingPartnerList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v1, :cond_96

    .line 433
    const-string v1, "PolicyUpdate Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, "PolicyUpdate End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o validate()Z
    .registers 9

    .line 447
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    const-string v1, "Policy"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 448
    const-string v0, "PolicyUpdate not specified"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return v2

    .line 451
    :cond_d
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->validate()Z

    move-result v0

    if-nez v0, :cond_16

    .line 452
    return v2

    .line 456
    :cond_16
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    if-eqz v0, :cond_68

    .line 457
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v0, v0

    const/16 v3, 0x80

    if-le v0, v3, :cond_3b

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSID exclusion list size exceeded the max: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return v2

    .line 462
    :cond_3b
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_3f
    if-ge v4, v3, :cond_68

    aget-object v5, v0, v4

    .line 463
    .local v5, "ssid":Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_65

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid SSID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return v2

    .line 462
    .end local v5    # "ssid":Ljava/lang/String;
    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 470
    :cond_68
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-eqz v0, :cond_d3

    .line 471
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 472
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 473
    .local v4, "protocol":I
    if-ltz v4, :cond_bc

    const/16 v5, 0xff

    if-le v4, v5, :cond_93

    goto :goto_bc

    .line 477
    :cond_93
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 478
    .local v5, "portNumber":Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    const/16 v7, 0x40

    if-le v6, v7, :cond_bb

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PortNumber string bytes exceeded the max: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v2

    .line 482
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "protocol":I
    .end local v5    # "portNumber":Ljava/lang/String;
    :cond_bb
    goto :goto_76

    .line 474
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "protocol":I
    :cond_bc
    :goto_bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid IP protocol: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return v2

    .line 485
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "protocol":I
    :cond_d3
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-eqz v0, :cond_101

    .line 486
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x10

    if-le v0, v3, :cond_e7

    .line 487
    const-string v0, "Number of the Preferred Roaming Partner exceed the limit"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v2

    .line 490
    :cond_e7
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ed
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_101

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 491
    .local v1, "partner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->validate()Z

    move-result v3

    if-nez v3, :cond_100

    .line 492
    return v2

    .line 494
    .end local v1    # "partner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    :cond_100
    goto :goto_ed

    .line 496
    :cond_101
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 372
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 373
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 374
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 375
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 376
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/net/wifi/hotspot2/pps/Policy;->writeProtoPortMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 378
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-static {p1, p2, v0}, Landroid/net/wifi/hotspot2/pps/Policy;->writeRoamingPartnerList(Landroid/os/Parcel;ILjava/util/List;)V

    .line 380
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 381
    return-void
.end method
