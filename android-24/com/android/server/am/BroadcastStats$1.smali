.class final Lcom/android/server/am/BroadcastStats$1;
.super Ljava/lang/Object;
.source "BroadcastStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/BroadcastStats$ActionEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/BroadcastStats$ActionEntry;Lcom/android/server/am/BroadcastStats$ActionEntry;)I
    .locals 4
    .param p1, "o1"    # Lcom/android/server/am/BroadcastStats$ActionEntry;
    .param p2, "o2"    # Lcom/android/server/am/BroadcastStats$ActionEntry;

    #@0
    .prologue
    .line 37
    iget-wide v0, p1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    #@2
    iget-wide v2, p2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 38
    const/4 v0, -0x1

    #@9
    return v0

    #@a
    .line 40
    :cond_0
    iget-wide v0, p1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    #@c
    iget-wide v2, p2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    #@e
    cmp-long v0, v0, v2

    #@10
    if-lez v0, :cond_1

    #@12
    .line 41
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 43
    :cond_1
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 36
    check-cast p1, Lcom/android/server/am/BroadcastStats$ActionEntry;

    #@2
    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/BroadcastStats$ActionEntry;

    #@4
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastStats$1;->compare(Lcom/android/server/am/BroadcastStats$ActionEntry;Lcom/android/server/am/BroadcastStats$ActionEntry;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
