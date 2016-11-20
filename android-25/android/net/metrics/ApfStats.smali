.class public final Landroid/net/metrics/ApfStats;
.super Ljava/lang/Object;
.source "ApfStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/ApfStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/ApfStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final droppedRas:I

.field public final durationMs:J

.field public final matchingRas:I

.field public final maxProgramSize:I

.field public final parseErrors:I

.field public final programUpdates:I

.field public final receivedRas:I

.field public final zeroLifetimeRas:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 94
    new-instance v0, Landroid/net/metrics/ApfStats$1;

    #@2
    invoke-direct {v0}, Landroid/net/metrics/ApfStats$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/metrics/ApfStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(JIIIIIII)V
    .locals 1
    .param p1, "durationMs"    # J
    .param p3, "receivedRas"    # I
    .param p4, "matchingRas"    # I
    .param p5, "droppedRas"    # I
    .param p6, "zeroLifetimeRas"    # I
    .param p7, "parseErrors"    # I
    .param p8, "programUpdates"    # I
    .param p9, "maxProgramSize"    # I

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-wide p1, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    #@5
    .line 43
    iput p3, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    #@7
    .line 44
    iput p4, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    #@9
    .line 45
    iput p5, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    #@b
    .line 46
    iput p6, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    #@d
    .line 47
    iput p7, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    #@f
    .line 48
    iput p8, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    #@11
    .line 49
    iput p9, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    #@13
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    #@9
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    #@f
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    #@15
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    #@1b
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    #@21
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    #@27
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    #@2d
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    #@33
    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/ApfStats;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/ApfStats;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "ApfStats("

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 83
    const-string/jumbo v1, "%dms "

    #@d
    new-array v2, v7, [Ljava/lang/Object;

    #@f
    iget-wide v4, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    #@11
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v2, v6

    #@17
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 84
    const-string/jumbo v1, "%dB RA: {"

    #@22
    new-array v2, v7, [Ljava/lang/Object;

    #@24
    iget v3, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    #@26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v3

    #@2a
    aput-object v3, v2, v6

    #@2c
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 85
    const-string/jumbo v1, "%d received, "

    #@37
    new-array v2, v7, [Ljava/lang/Object;

    #@39
    iget v3, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    #@3b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v3

    #@3f
    aput-object v3, v2, v6

    #@41
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 86
    const-string/jumbo v1, "%d matching, "

    #@4c
    new-array v2, v7, [Ljava/lang/Object;

    #@4e
    iget v3, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    #@50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v3

    #@54
    aput-object v3, v2, v6

    #@56
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 87
    const-string/jumbo v1, "%d dropped, "

    #@61
    new-array v2, v7, [Ljava/lang/Object;

    #@63
    iget v3, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    #@65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v3

    #@69
    aput-object v3, v2, v6

    #@6b
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 88
    const-string/jumbo v1, "%d zero lifetime, "

    #@76
    new-array v2, v7, [Ljava/lang/Object;

    #@78
    iget v3, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    #@7a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v3

    #@7e
    aput-object v3, v2, v6

    #@80
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    .line 89
    const-string/jumbo v1, "%d parse errors, "

    #@8b
    new-array v2, v7, [Ljava/lang/Object;

    #@8d
    iget v3, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    #@8f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@92
    move-result-object v3

    #@93
    aput-object v3, v2, v6

    #@95
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    .line 90
    const-string/jumbo v1, "%d program updates})"

    #@a0
    new-array v2, v7, [Ljava/lang/Object;

    #@a2
    iget v3, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    #@a4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a7
    move-result-object v3

    #@a8
    aput-object v3, v2, v6

    #@aa
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ad
    move-result-object v1

    #@ae
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v0

    #@b2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v0

    #@b6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 65
    iget-wide v0, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 66
    iget v0, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 67
    iget v0, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 68
    iget v0, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 69
    iget v0, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 70
    iget v0, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 71
    iget v0, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 72
    iget v0, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 64
    return-void
.end method
