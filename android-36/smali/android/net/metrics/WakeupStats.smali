.class public Landroid/net/metrics/WakeupStats;
.super Ljava/lang/Object;
.source "WakeupStats.java"


# static fields
.field private static final greylist-max-o NO_UID:I = -0x1


# instance fields
.field public greylist-max-o applicationWakeups:J

.field public final greylist-max-o creationTimeMs:J

.field public greylist-max-o durationSec:J

.field public final greylist-max-o ethertypes:Landroid/util/SparseIntArray;

.field public final greylist-max-o iface:Ljava/lang/String;

.field public final greylist-max-o ipNextHeaders:Landroid/util/SparseIntArray;

.field public greylist-max-o l2BroadcastCount:J

.field public greylist-max-o l2MulticastCount:J

.field public greylist-max-o l2UnicastCount:J

.field public greylist-max-o noUidWakeups:J

.field public greylist-max-o nonApplicationWakeups:J

.field public greylist-max-o rootWakeups:J

.field public greylist-max-o systemWakeups:J

.field public greylist-max-o totalWakeups:J


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->creationTimeMs:J

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    .line 38
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    .line 39
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    .line 40
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    .line 41
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    .line 42
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    .line 43
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    .line 45
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    .line 46
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    .line 47
    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    .line 49
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    .line 50
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    .line 53
    iput-object p1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private static greylist-max-o increment(Landroid/util/SparseIntArray;I)V
    .registers 3
    .param p0, "counters"    # Landroid/util/SparseIntArray;
    .param p1, "key"    # I

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 134
    .local v0, "newcount":I
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    return-void
.end method


# virtual methods
.method public greylist-max-o countEvent(Landroid/net/metrics/WakeupEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/net/metrics/WakeupEvent;

    .line 63
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    .line 64
    iget v0, p1, Landroid/net/metrics/WakeupEvent;->uid:I

    sparse-switch v0, :sswitch_data_62

    .line 75
    iget v0, p1, Landroid/net/metrics/WakeupEvent;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_2a

    .line 76
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    goto :goto_2f

    .line 69
    :sswitch_18
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    .line 70
    goto :goto_2f

    .line 66
    :sswitch_1e
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    .line 67
    goto :goto_2f

    .line 72
    :sswitch_24
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    .line 73
    goto :goto_2f

    .line 78
    :cond_2a
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    .line 83
    :goto_2f
    iget-object v0, p1, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    if-eqz v0, :cond_4f

    .line 84
    iget-object v0, p1, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->getAddressType()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    goto :goto_4f

    .line 92
    :pswitch_3d
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    .line 93
    goto :goto_4f

    .line 89
    :pswitch_43
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    .line 90
    goto :goto_4f

    .line 86
    :pswitch_49
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    .line 87
    nop

    .line 99
    :cond_4f
    :goto_4f
    iget-object v0, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    iget v1, p1, Landroid/net/metrics/WakeupEvent;->ethertype:I

    invoke-static {v0, v1}, Landroid/net/metrics/WakeupStats;->increment(Landroid/util/SparseIntArray;I)V

    .line 100
    iget v0, p1, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    if-ltz v0, :cond_61

    .line 101
    iget-object v0, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    iget v1, p1, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    invoke-static {v0, v1}, Landroid/net/metrics/WakeupStats;->increment(Landroid/util/SparseIntArray;I)V

    .line 103
    :cond_61
    return-void

    :sswitch_data_62
    .sparse-switch
        -0x1 -> :sswitch_24
        0x0 -> :sswitch_1e
        0x3e8 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_49
        :pswitch_43
        :pswitch_3d
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 107
    invoke-virtual {p0}, Landroid/net/metrics/WakeupStats;->updateDuration()V

    .line 108
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "WakeupStats("

    const-string v2, ")"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 109
    .local v0, "j":Ljava/util/StringJoiner;
    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "total: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "root: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "non-apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 117
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 117
    const-string/jumbo v2, "l2 unicast/multicast/broadcast: %d/%d/%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e8
    iget-object v2, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_114

    .line 120
    iget-object v2, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 121
    .local v2, "eth":I
    iget-object v3, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 122
    .local v3, "count":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "ethertype 0x%x: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 119
    .end local v2    # "eth":I
    .end local v3    # "count":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    .line 124
    .end local v1    # "i":I
    :cond_114
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_115
    iget-object v2, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_142

    .line 125
    iget-object v2, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 126
    .local v2, "proto":I
    iget-object v3, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 127
    .restart local v3    # "count":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "ipNxtHdr %d: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 124
    .end local v2    # "proto":I
    .end local v3    # "count":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_115

    .line 129
    .end local v1    # "i":I
    :cond_142
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o updateDuration()V
    .registers 5

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->creationTimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    .line 59
    return-void
.end method
