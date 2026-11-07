.class public final Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeerInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mChanUtil:I

.field private blacklist mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

.field private blacklist mStaCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRateStats(Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;)[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChanUtil(Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mChanUtil:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRateStats(Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStaCount(Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mStaCount:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 633
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    return-void
.end method

.method public constructor blacklist <init>(II[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;)V
    .registers 4
    .param p1, "staCount"    # I
    .param p2, "chanUtil"    # I
    .param p3, "rateStats"    # [Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mStaCount:I

    .line 616
    iput p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mChanUtil:I

    .line 617
    iput-object p3, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    .line 618
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChanUtil()I
    .registers 2

    .line 653
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mChanUtil:I

    return v0
.end method

.method public blacklist getRateStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
            ">;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    if-eqz v0, :cond_b

    .line 659
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 661
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStaCount()I
    .registers 2

    .line 648
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mStaCount:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 627
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mStaCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mChanUtil:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PeerInfo;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 630
    return-void
.end method
