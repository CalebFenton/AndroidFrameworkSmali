.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/labs/SimpleLab;
.super Ljava/lang/Object;
.source "SimpleLab.java"


# instance fields
.field private active:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 12
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/SimpleLab;->active:Z

    #@6
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 23
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/SimpleLab;->active:Z

    #@2
    return v0
.end method
