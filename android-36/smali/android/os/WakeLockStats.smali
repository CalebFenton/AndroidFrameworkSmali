.class public final Landroid/os/WakeLockStats;
.super Ljava/lang/Object;
.source "WakeLockStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WakeLockStats$WakeLock;,
        Landroid/os/WakeLockStats$WakeLockData;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WakeLockStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAggregatedWakeLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWakeLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 217
    new-instance v0, Landroid/os/WakeLockStats$1;

    invoke-direct {v0}, Landroid/os/WakeLockStats$1;-><init>()V

    sput-object v0, Landroid/os/WakeLockStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .local v0, "wakelockSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    .line 190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1f

    .line 191
    iget-object v3, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    new-instance v4, Landroid/os/WakeLockStats$WakeLock;

    invoke-direct {v4, p1, v2}, Landroid/os/WakeLockStats$WakeLock;-><init>(Landroid/os/Parcel;Landroid/os/WakeLockStats-IA;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 193
    .end local v1    # "i":I
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    .local v1, "aggregatedWakelockSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    .line 195
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    if-ge v3, v1, :cond_3a

    .line 196
    iget-object v4, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    new-instance v5, Landroid/os/WakeLockStats$WakeLock;

    invoke-direct {v5, p1, v2}, Landroid/os/WakeLockStats$WakeLock;-><init>(Landroid/os/Parcel;Landroid/os/WakeLockStats-IA;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 198
    .end local v3    # "i":I
    :cond_3a
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/WakeLockStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p1, "wakeLocks":Ljava/util/List;, "Ljava/util/List<Landroid/os/WakeLockStats$WakeLock;>;"
    .local p2, "aggregatedWakeLocks":Ljava/util/List;, "Ljava/util/List<Landroid/os/WakeLockStats$WakeLock;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    .line 174
    iput-object p2, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    .line 175
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAggregatedWakeLocks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getWakeLocks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLockStats{mWakeLocks: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mAggregatedWakeLocks: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 202
    iget-object v0, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 203
    .local v0, "wakelockSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 205
    iget-object v2, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WakeLockStats$WakeLock;

    .line 206
    .local v2, "stats":Landroid/os/WakeLockStats$WakeLock;
    invoke-static {v2, p1}, Landroid/os/WakeLockStats$WakeLock;->-$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLock;Landroid/os/Parcel;)V

    .line 204
    .end local v2    # "stats":Landroid/os/WakeLockStats$WakeLock;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 208
    .end local v1    # "i":I
    :cond_1a
    iget-object v1, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 209
    .local v1, "aggregatedWakelockSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, v1, :cond_34

    .line 211
    iget-object v3, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WakeLockStats$WakeLock;

    .line 212
    .local v3, "stats":Landroid/os/WakeLockStats$WakeLock;
    invoke-static {v3, p1}, Landroid/os/WakeLockStats$WakeLock;->-$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLock;Landroid/os/Parcel;)V

    .line 210
    .end local v3    # "stats":Landroid/os/WakeLockStats$WakeLock;
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 214
    .end local v2    # "i":I
    :cond_34
    return-void
.end method
