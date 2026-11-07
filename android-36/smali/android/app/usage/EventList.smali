.class public Landroid/app/usage/EventList;
.super Ljava/lang/Object;
.source "EventList.java"


# instance fields
.field private final greylist-max-o mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    return-void
.end method

.method public greylist-max-o firstIndexOnOrAfter(J)I
    .registers 11
    .param p1, "timeStamp"    # J

    .line 105
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 106
    .local v0, "size":I
    move v1, v0

    .line 107
    .local v1, "result":I
    const/4 v2, 0x0

    .line 108
    .local v2, "lo":I
    add-int/lit8 v3, v0, -0x1

    .line 109
    .local v3, "hi":I
    :goto_a
    if-gt v2, v3, :cond_25

    .line 110
    add-int v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    .line 111
    .local v4, "mid":I
    iget-object v5, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageEvents$Event;

    iget-wide v5, v5, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 112
    .local v5, "midTimeStamp":J
    cmp-long v7, v5, p1

    if-ltz v7, :cond_22

    .line 113
    add-int/lit8 v3, v4, -0x1

    .line 114
    move v1, v4

    goto :goto_24

    .line 116
    :cond_22
    add-int/lit8 v2, v4, 0x1

    .line 118
    .end local v4    # "mid":I
    .end local v5    # "midTimeStamp":J
    :goto_24
    goto :goto_a

    .line 119
    :cond_25
    return v1
.end method

.method public greylist-max-o get(I)Landroid/app/usage/UsageEvents$Event;
    .registers 3
    .param p1, "index"    # I

    .line 59
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    return-object v0
.end method

.method public greylist-max-o insert(Landroid/app/usage/UsageEvents$Event;)V
    .registers 7
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 69
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 71
    .local v0, "size":I
    if-eqz v0, :cond_2a

    iget-wide v1, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v3, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageEvents$Event;

    iget-wide v3, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1b

    goto :goto_2a

    .line 77
    :cond_1b
    iget-wide v1, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v1

    .line 78
    .local v1, "insertIndex":I
    iget-object v2, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    return-void

    .line 72
    .end local v1    # "insertIndex":I
    :cond_2a
    :goto_2a
    iget-object v1, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public blacklist merge(Landroid/app/usage/EventList;)V
    .registers 5
    .param p1, "events"    # Landroid/app/usage/EventList;

    .line 130
    invoke-virtual {p1}, Landroid/app/usage/EventList;->size()I

    move-result v0

    .line 131
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 132
    invoke-virtual {p1, v1}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 134
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method public blacklist remove(I)Landroid/app/usage/UsageEvents$Event;
    .registers 4
    .param p1, "index"    # I

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 90
    :catch_9
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 43
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
