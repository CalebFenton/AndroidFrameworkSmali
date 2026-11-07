.class public final Landroid/bluetooth/UidTraffic;
.super Ljava/lang/Object;
.source "UidTraffic.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/UidTraffic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppUid:I

.field private blacklist mRxBytes:J

.field private blacklist mTxBytes:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Landroid/bluetooth/UidTraffic$1;

    invoke-direct {v0}, Landroid/bluetooth/UidTraffic$1;-><init>()V

    sput-object v0, Landroid/bluetooth/UidTraffic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJJ)V
    .registers 6
    .param p1, "appUid"    # I
    .param p2, "rx"    # J
    .param p4, "tx"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    .line 37
    iput-wide p2, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 38
    iput-wide p4, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    .line 39
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/UidTraffic-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/UidTraffic;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist addRxBytes(J)V
    .registers 5
    .param p1, "bytes"    # J

    .line 68
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 69
    return-void
.end method

.method public blacklist addTxBytes(J)V
    .registers 5
    .param p1, "bytes"    # J

    .line 73
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    .line 74
    return-void
.end method

.method public whitelist clone()Landroid/bluetooth/UidTraffic;
    .registers 7

    .line 106
    new-instance v0, Landroid/bluetooth/UidTraffic;

    iget v1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    iget-wide v2, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    iget-wide v4, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/UidTraffic;-><init>(IJJ)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Landroid/bluetooth/UidTraffic;->clone()Landroid/bluetooth/UidTraffic;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRxBytes()J
    .registers 3

    .line 87
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    return-wide v0
.end method

.method public whitelist getTxBytes()J
    .registers 3

    .line 94
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    return-wide v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 80
    iget v0, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    return v0
.end method

.method public blacklist setRxBytes(J)V
    .registers 3
    .param p1, "bytes"    # J

    .line 58
    iput-wide p1, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 59
    return-void
.end method

.method public blacklist setTxBytes(J)V
    .registers 3
    .param p1, "bytes"    # J

    .line 63
    iput-wide p1, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    .line 64
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidTraffic{mAppUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 51
    iget v0, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    return-void
.end method
