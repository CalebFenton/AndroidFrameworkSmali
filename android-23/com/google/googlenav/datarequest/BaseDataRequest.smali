.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.super Ljava/lang/Object;
.source "BaseDataRequest.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;


# instance fields
.field private volatile isCancelled:Z

.field private serverFailureCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 15
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->isCancelled:Z

    #@6
    .line 18
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    #@8
    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    #@0
    .prologue
    .line 69
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->isCancelled:Z

    #@2
    return v0
.end method

.method public isForeground()Z
    .locals 1

    #@0
    .prologue
    .line 36
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isImmediate()Z
    .locals 1

    #@0
    .prologue
    .line 28
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isSubmission()Z
    .locals 1

    #@0
    .prologue
    .line 44
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onServerFailure()V
    .locals 1

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    #@6
    .line 83
    return-void
.end method

.method public retryOnFailure()Z
    .locals 2

    #@0
    .prologue
    .line 78
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    #@2
    const/4 v1, 0x3

    #@3
    if-lt v0, v1, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method
