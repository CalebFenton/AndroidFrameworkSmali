.class public Lcom/android/internal/os/RpmStats$PowerStateSubsystem;
.super Ljava/lang/Object;
.source "RpmStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RpmStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerStateSubsystem"
.end annotation


# instance fields
.field public greylist-max-o mStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/RpmStats$PowerStateElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->mStates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public greylist-max-o putState(Ljava/lang/String;JI)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeMs"    # J
    .param p4, "count"    # I

    .line 103
    iget-object v0, p0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->mStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RpmStats$PowerStateElement;

    .line 104
    .local v0, "e":Lcom/android/internal/os/RpmStats$PowerStateElement;
    if-nez v0, :cond_16

    .line 105
    iget-object v1, p0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->mStates:Ljava/util/Map;

    new-instance v2, Lcom/android/internal/os/RpmStats$PowerStateElement;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, p4, v3}, Lcom/android/internal/os/RpmStats$PowerStateElement;-><init>(JILcom/android/internal/os/RpmStats-IA;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 107
    :cond_16
    iput-wide p2, v0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mTimeMs:J

    .line 108
    iput p4, v0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mCount:I

    .line 110
    :goto_1a
    return-void
.end method
