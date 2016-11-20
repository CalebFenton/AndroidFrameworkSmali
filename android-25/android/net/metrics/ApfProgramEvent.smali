.class public final Landroid/net/metrics/ApfProgramEvent;
.super Ljava/lang/Object;
.source "ApfProgramEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/ApfProgramEvent$1;,
        Landroid/net/metrics/ApfProgramEvent$Decoder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/ApfProgramEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_HAS_IPV4_ADDRESS:I = 0x1

.field public static final FLAG_MULTICAST_FILTER_ON:I


# instance fields
.field public final currentRas:I

.field public final filteredRas:I

.field public final flags:I

.field public final lifetime:J

.field public final programLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 98
    new-instance v0, Landroid/net/metrics/ApfProgramEvent$1;

    #@2
    invoke-direct {v0}, Landroid/net/metrics/ApfProgramEvent$1;-><init>()V

    #@5
    .line 97
    sput-object v0, Landroid/net/metrics/ApfProgramEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 40
    return-void
.end method

.method public constructor <init>(JIIII)V
    .locals 1
    .param p1, "lifetime"    # J
    .param p3, "filteredRas"    # I
    .param p4, "currentRas"    # I
    .param p5, "programLength"    # I
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-wide p1, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    #@5
    .line 62
    iput p3, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    #@7
    .line 63
    iput p4, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    #@9
    .line 64
    iput p5, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    #@b
    .line 65
    iput p6, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    #@d
    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    #@9
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    #@f
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    #@15
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    #@1b
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    #@21
    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/ApfProgramEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/ApfProgramEvent;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static flagsFor(ZZ)I
    .locals 1
    .param p0, "hasIPv4"    # Z
    .param p1, "multicastFilterOn"    # Z

    #@0
    .prologue
    .line 110
    const/4 v0, 0x0

    #@1
    .line 111
    .local v0, "bitfield":I
    if-eqz p0, :cond_0

    #@3
    .line 112
    const/4 v0, 0x2

    #@4
    .line 114
    :cond_0
    if-eqz p1, :cond_1

    #@6
    .line 115
    or-int/lit8 v0, v0, 0x1

    #@8
    .line 117
    :cond_1
    return v0
.end method

.method private static namesOf(I)Ljava/lang/String;
    .locals 7
    .param p0, "bitfield"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    #@6
    move-result v3

    #@7
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 122
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    #@b
    new-array v3, v3, [J

    #@d
    const v4, 0x7fffffff

    #@10
    and-int/2addr v4, p0

    #@11
    int-to-long v4, v4

    #@12
    aput-wide v4, v3, v6

    #@14
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    #@17
    move-result-object v2

    #@18
    .line 124
    .local v2, "set":Ljava/util/BitSet;
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    #@1b
    move-result v0

    #@1c
    .local v0, "bit":I
    :goto_0
    if-ltz v0, :cond_0

    #@1e
    .line 125
    sget-object v3, Landroid/net/metrics/ApfProgramEvent$Decoder;->constants:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Ljava/lang/String;

    #@26
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    .line 124
    add-int/lit8 v3, v0, 0x1

    #@2b
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    #@2e
    move-result v0

    #@2f
    goto :goto_0

    #@30
    .line 127
    :cond_0
    const-string/jumbo v3, "|"

    #@33
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 92
    iget-wide v2, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    #@2
    const-wide v4, 0x7fffffffffffffffL

    #@7
    cmp-long v1, v2, v4

    #@9
    if-gez v1, :cond_0

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    iget-wide v2, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    #@12
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "s"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 93
    .local v0, "lifetimeString":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "ApfProgramEvent(%d/%d RAs %dB %s %s)"

    #@24
    const/4 v2, 0x5

    #@25
    new-array v2, v2, [Ljava/lang/Object;

    #@27
    .line 94
    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    #@29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v3

    #@2d
    const/4 v4, 0x0

    #@2e
    aput-object v3, v2, v4

    #@30
    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    #@32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v3

    #@36
    const/4 v4, 0x1

    #@37
    aput-object v3, v2, v4

    #@39
    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    #@3b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v3

    #@3f
    const/4 v4, 0x2

    #@40
    aput-object v3, v2, v4

    #@42
    const/4 v3, 0x3

    #@43
    aput-object v0, v2, v3

    #@45
    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    #@47
    invoke-static {v3}, Landroid/net/metrics/ApfProgramEvent;->namesOf(I)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    const/4 v4, 0x4

    #@4c
    aput-object v3, v2, v4

    #@4e
    .line 93
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    return-object v1

    #@53
    .line 92
    .end local v0    # "lifetimeString":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "forever"

    #@56
    .restart local v0    # "lifetimeString":Ljava/lang/String;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 78
    iget-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 79
    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 80
    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 81
    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 77
    return-void
.end method
