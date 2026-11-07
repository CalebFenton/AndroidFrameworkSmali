.class public final Landroid/net/wifi/hotspot2/pps/HomeSp;
.super Ljava/lang/Object;
.source "HomeSp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/HomeSp;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_SSID_BYTES:I = 0x20

.field private static final greylist-max-o NULL_VALUE:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "HomeSp"


# instance fields
.field private greylist-max-o mFqdn:Ljava/lang/String;

.field private greylist-max-o mFriendlyName:Ljava/lang/String;

.field private greylist-max-o mHomeNetworkIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIconUrl:Ljava/lang/String;

.field private greylist-max-o mMatchAllOis:[J

.field private greylist-max-o mMatchAnyOis:[J

.field private greylist-max-o mOtherHomePartners:[Ljava/lang/String;

.field private greylist-max-o mRoamingConsortiumOis:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 503
    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    .line 151
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    .line 189
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    .line 219
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    .line 275
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    .line 298
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/hotspot2/pps/HomeSp;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    .line 151
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    .line 189
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    .line 219
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    .line 275
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    .line 306
    if-nez p1, :cond_17

    .line 307
    return-void

    .line 309
    :cond_17
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    .line 310
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    .line 311
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    if-eqz v0, :cond_2f

    .line 313
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    .line 315
    :cond_2f
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    if-eqz v0, :cond_3e

    .line 316
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    .line 318
    :cond_3e
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    if-eqz v0, :cond_4d

    .line 319
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    .line 321
    :cond_4d
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    if-eqz v0, :cond_5e

    .line 322
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    .line 325
    :cond_5e
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    if-eqz v0, :cond_6d

    .line 326
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    .line 329
    :cond_6d
    return-void
.end method

.method private static greylist-max-o writeHomeNetworkIds(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 6
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 556
    .local p1, "networkIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez p1, :cond_7

    .line 557
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    return-void

    .line 560
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 562
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 563
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_37

    .line 564
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_44

    .line 566
    :cond_37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 568
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_44
    goto :goto_16

    .line 569
    :cond_45
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 350
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 351
    return v0

    .line 353
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 354
    return v2

    .line 356
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 358
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/HomeSp;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    .line 359
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    .line 360
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    if-nez v3, :cond_34

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    if-nez v3, :cond_67

    goto :goto_3e

    :cond_34
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    .line 362
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    :goto_3e
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    .line 363
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    .line 364
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    .line 365
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    .line 366
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_67

    goto :goto_68

    :cond_67
    move v0, v2

    .line 358
    :goto_68
    return v0
.end method

.method public whitelist getFqdn()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFriendlyName()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getHomeNetworkIds()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    return-object v0
.end method

.method public greylist-max-o getIconUrl()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMatchAllOis()[J
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    return-object v0
.end method

.method public whitelist getMatchAnyOis()[J
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    return-object v0
.end method

.method public greylist-max-o getOtherHomePartners()[Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOtherHomePartnersList()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    if-nez v0, :cond_9

    .line 266
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 268
    :cond_9
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRoamingConsortiumOis()[J
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    return-object v0
.end method

.method public blacklist getUniqueId()I
    .registers 2

    .line 385
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 371
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    iget-object v4, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    .line 372
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    .line 373
    invoke-static {v5}, Ljava/util/Arrays;->hashCode([J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    .line 374
    invoke-static {v7}, Ljava/util/Arrays;->hashCode([J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 371
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setFqdn(Ljava/lang/String;)V
    .registers 2
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public whitelist setFriendlyName(Ljava/lang/String;)V
    .registers 2
    .param p1, "friendlyName"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public greylist-max-o setHomeNetworkIds(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "homeNetworkIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    .line 133
    return-void
.end method

.method public greylist-max-o setIconUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "iconUrl"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public whitelist setMatchAllOis([J)V
    .registers 2
    .param p1, "matchAllOis"    # [J

    .line 162
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    .line 163
    return-void
.end method

.method public whitelist setMatchAnyOis([J)V
    .registers 2
    .param p1, "matchAnyOis"    # [J

    .line 200
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    .line 201
    return-void
.end method

.method public greylist-max-o setOtherHomePartners([Ljava/lang/String;)V
    .registers 2
    .param p1, "otherHomePartners"    # [Ljava/lang/String;

    .line 229
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    .line 230
    return-void
.end method

.method public whitelist setOtherHomePartnersList(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p1, "otherHomePartners":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 240
    return-void

    .line 242
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    .line 243
    return-void
.end method

.method public whitelist setRoamingConsortiumOis([J)V
    .registers 2
    .param p1, "roamingConsortiumOis"    # [J

    .line 283
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    .line 284
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "FQDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, "FriendlyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, "IconURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v1, "HomeNetworkIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, "MatchAllOIs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v1, "MatchAnyOIs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v1, "OtherHomePartners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v1, "RoamingConsortiumOIs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o validate()Z
    .registers 18

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "HomeSp"

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    .line 413
    const-string v1, "Missing FQDN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v3

    .line 416
    :cond_13
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v4, 0xff

    if-le v1, v4, :cond_26

    .line 417
    const-string v1, "FQDN is too long"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return v3

    .line 420
    :cond_26
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 421
    const-string v1, "Missing friendly name"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v3

    .line 424
    :cond_34
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v4, :cond_45

    .line 425
    const-string v1, "Friendly name is too long"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v3

    .line 429
    :cond_45
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    const/16 v5, 0x10

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_bd

    .line 430
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v5, :cond_5b

    .line 431
    const-string v1, "too many SSID in HomeNetworkIDs"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v3

    .line 434
    :cond_5b
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 435
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b7

    .line 436
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    array-length v9, v9

    const/16 v10, 0x20

    if-le v9, v10, :cond_89

    goto :goto_b7

    .line 440
    :cond_89
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b6

    .line 441
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide v11, 0xffffffffffffL

    cmp-long v9, v9, v11

    if-gtz v9, :cond_b0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-gez v9, :cond_b6

    .line 442
    :cond_b0
    const-string v1, "HESSID is out of range"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v3

    .line 445
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_b6
    goto :goto_65

    .line 437
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_b7
    :goto_b7
    const-string v1, "SSID is too long in HomeNetworkIDs"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return v3

    .line 447
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_bd
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    if-eqz v1, :cond_d4

    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v8, 0x800

    if-le v1, v8, :cond_d4

    .line 448
    const-string v1, "Icon URL is too long"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return v3

    .line 451
    :cond_d4
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    const-string v8, "Organization Identifiers is out of range"

    const-wide v9, 0xffffffffffL

    const/16 v11, 0x24

    if-eqz v1, :cond_104

    .line 452
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    array-length v1, v1

    if-le v1, v11, :cond_ec

    .line 453
    const-string v1, "too many match all Organization Identifiers in the profile"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v3

    .line 456
    :cond_ec
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    array-length v12, v1

    move v13, v3

    :goto_f0
    if-ge v13, v12, :cond_104

    aget-wide v14, v1, v13

    .line 457
    .local v14, "oi":J
    cmp-long v16, v14, v9

    if-gtz v16, :cond_100

    cmp-long v16, v14, v6

    if-gez v16, :cond_fd

    goto :goto_100

    .line 456
    .end local v14    # "oi":J
    :cond_fd
    add-int/lit8 v13, v13, 0x1

    goto :goto_f0

    .line 458
    .restart local v14    # "oi":J
    :cond_100
    :goto_100
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return v3

    .line 463
    .end local v14    # "oi":J
    :cond_104
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    if-eqz v1, :cond_12b

    .line 464
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    array-length v1, v1

    if-le v1, v11, :cond_113

    .line 465
    const-string v1, "too many match any Organization Identifiers in the profile"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return v3

    .line 468
    :cond_113
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    array-length v12, v1

    move v13, v3

    :goto_117
    if-ge v13, v12, :cond_12b

    aget-wide v14, v1, v13

    .line 469
    .restart local v14    # "oi":J
    cmp-long v16, v14, v9

    if-gtz v16, :cond_127

    cmp-long v16, v14, v6

    if-gez v16, :cond_124

    goto :goto_127

    .line 468
    .end local v14    # "oi":J
    :cond_124
    add-int/lit8 v13, v13, 0x1

    goto :goto_117

    .line 470
    .restart local v14    # "oi":J
    :cond_127
    :goto_127
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return v3

    .line 475
    .end local v14    # "oi":J
    :cond_12b
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    if-eqz v1, :cond_152

    .line 476
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    array-length v1, v1

    if-le v1, v11, :cond_13a

    .line 477
    const-string v1, "too many Roaming Consortium Organization Identifiers in the profile"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return v3

    .line 481
    :cond_13a
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    array-length v11, v1

    move v12, v3

    :goto_13e
    if-ge v12, v11, :cond_152

    aget-wide v13, v1, v12

    .line 482
    .local v13, "oi":J
    cmp-long v15, v13, v9

    if-gtz v15, :cond_14e

    cmp-long v15, v13, v6

    if-gez v15, :cond_14b

    goto :goto_14e

    .line 481
    .end local v13    # "oi":J
    :cond_14b
    add-int/lit8 v12, v12, 0x1

    goto :goto_13e

    .line 483
    .restart local v13    # "oi":J
    :cond_14e
    :goto_14e
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return v3

    .line 488
    .end local v13    # "oi":J
    :cond_152
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    if-eqz v1, :cond_178

    .line 489
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v5, :cond_161

    .line 490
    const-string v1, "too many other home partners in the profile"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return v3

    .line 493
    :cond_161
    iget-object v1, v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    array-length v5, v1

    move v6, v3

    :goto_165
    if-ge v6, v5, :cond_178

    aget-object v7, v1, v6

    .line 494
    .local v7, "fqdn":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v4, :cond_175

    .line 495
    const-string v1, "FQDN is too long in OtherHomePartners"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return v3

    .line 493
    .end local v7    # "fqdn":Ljava/lang/String;
    :cond_175
    add-int/lit8 v6, v6, 0x1

    goto :goto_165

    .line 500
    :cond_178
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 338
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->writeHomeNetworkIds(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 342
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 343
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 344
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 346
    return-void
.end method
