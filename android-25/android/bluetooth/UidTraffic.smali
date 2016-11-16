.class public Landroid/bluetooth/UidTraffic;
.super Ljava/lang/Object;
.source "UidTraffic.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/UidTraffic$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/UidTraffic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppUid:I

.field private mRxBytes:J

.field private mTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 100
    new-instance v0, Landroid/bluetooth/UidTraffic$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/UidTraffic$1;-><init>()V

    #@5
    sput-object v0, Landroid/bluetooth/UidTraffic;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "appUid"    # I

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput p1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    #@5
    .line 30
    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0
    .param p1, "appUid"    # I
    .param p2, "rx"    # J
    .param p4, "tx"    # J

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput p1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    #@5
    .line 36
    iput-wide p2, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    #@7
    .line 37
    iput-wide p4, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    #@9
    .line 34
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    #@9
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    #@f
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    #@15
    .line 40
    return-void
.end method


# virtual methods
.method public addRxBytes(J)V
    .locals 3
    .param p1, "bytes"    # J

    #@0
    .prologue
    .line 62
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    #@5
    .line 61
    return-void
.end method

.method public addTxBytes(J)V
    .locals 3
    .param p1, "bytes"    # J

    #@0
    .prologue
    .line 66
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    #@5
    .line 65
    return-void
.end method

.method public clone()Landroid/bluetooth/UidTraffic;
    .locals 6

    #@0
    .prologue
    .line 88
    new-instance v0, Landroid/bluetooth/UidTraffic;

    #@2
    iget v1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    #@4
    iget-wide v2, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    #@6
    iget-wide v4, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/UidTraffic;-><init>(IJJ)V

    #@b
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/bluetooth/UidTraffic;->clone()Landroid/bluetooth/UidTraffic;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRxBytes()J
    .locals 2

    #@0
    .prologue
    .line 74
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    #@2
    return-wide v0
.end method

.method public getTxBytes()J
    .locals 2

    #@0
    .prologue
    .line 78
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    #@2
    return-wide v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 70
    iget v0, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    #@2
    return v0
.end method

.method public setRxBytes(J)V
    .locals 1
    .param p1, "bytes"    # J

    #@0
    .prologue
    .line 54
    iput-wide p1, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    #@2
    .line 53
    return-void
.end method

.method public setTxBytes(J)V
    .locals 1
    .param p1, "bytes"    # J

    #@0
    .prologue
    .line 58
    iput-wide p1, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    #@2
    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "UidTraffic{mAppUid="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 94
    iget v1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    #@e
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 95
    const-string/jumbo v1, ", mRxBytes="

    #@15
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 95
    iget-wide v2, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    #@1b
    .line 93
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 96
    const-string/jumbo v1, ", mTxBytes="

    #@22
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 96
    iget-wide v2, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    #@28
    .line 93
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 97
    const/16 v1, 0x7d

    #@2e
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 48
    iget v0, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 49
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 50
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 47
    return-void
.end method
