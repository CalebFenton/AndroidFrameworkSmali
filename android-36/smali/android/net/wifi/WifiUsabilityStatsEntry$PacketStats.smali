.class public final Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;
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
    name = "PacketStats"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mRxSuccess:J

.field private blacklist mTxBad:J

.field private blacklist mTxRetries:J

.field private blacklist mTxSuccess:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmRxSuccess(Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mRxSuccess:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxBad(Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxBad:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxRetries(Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxRetries:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxSuccess(Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxSuccess:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 345
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method

.method public constructor blacklist <init>(JJJJ)V
    .registers 9
    .param p1, "txSuccess"    # J
    .param p3, "txRetries"    # J
    .param p5, "txBad"    # J
    .param p7, "rxSuccess"    # J

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxSuccess:J

    .line 326
    iput-wide p3, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxRetries:J

    .line 327
    iput-wide p5, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxBad:J

    .line 328
    iput-wide p7, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mRxSuccess:J

    .line 329
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRxSuccess()J
    .registers 3

    .line 377
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mRxSuccess:J

    return-wide v0
.end method

.method public blacklist getTxBad()J
    .registers 3

    .line 372
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxBad:J

    return-wide v0
.end method

.method public blacklist getTxRetries()J
    .registers 3

    .line 367
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxRetries:J

    return-wide v0
.end method

.method public blacklist getTxSuccess()J
    .registers 3

    .line 362
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxSuccess:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 338
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 339
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxRetries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 340
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mTxBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 341
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$PacketStats;->mRxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 342
    return-void
.end method
