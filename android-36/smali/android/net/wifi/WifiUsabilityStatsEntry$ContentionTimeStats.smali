.class public final Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
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
    name = "ContentionTimeStats"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContentionNumSamples:J

.field private blacklist mContentionTimeAvgMicros:J

.field private blacklist mContentionTimeMaxMicros:J

.field private blacklist mContentionTimeMinMicros:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmContentionNumSamples(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionNumSamples:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentionTimeAvgMicros(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeAvgMicros:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentionTimeMaxMicros(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMaxMicros:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentionTimeMinMicros(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMinMicros:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 264
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    return-void
.end method

.method public constructor whitelist <init>(JJJJ)V
    .registers 9
    .param p1, "timeMin"    # J
    .param p3, "timeMax"    # J
    .param p5, "timeAvg"    # J
    .param p7, "numSamples"    # J

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMinMicros:J

    .line 245
    iput-wide p3, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMaxMicros:J

    .line 246
    iput-wide p5, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeAvgMicros:J

    .line 247
    iput-wide p7, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionNumSamples:J

    .line 248
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getContentionNumSamples()J
    .registers 3

    .line 299
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionNumSamples:J

    return-wide v0
.end method

.method public whitelist getContentionTimeAvgMicros()J
    .registers 3

    .line 291
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeAvgMicros:J

    return-wide v0
.end method

.method public whitelist getContentionTimeMaxMicros()J
    .registers 3

    .line 286
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMaxMicros:J

    return-wide v0
.end method

.method public whitelist getContentionTimeMinMicros()J
    .registers 3

    .line 281
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMinMicros:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 257
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMinMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMaxMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 259
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeAvgMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionNumSamples:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    return-void
.end method
