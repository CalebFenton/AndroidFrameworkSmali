.class public abstract Landroid_maps_conflict_avoidance/com/google/common/io/BaseHttpConnectionFactory;
.super Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;
.source "BaseHttpConnectionFactory.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    const-string/jumbo v0, "HttpWorks"

    #@3
    .line 23
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;-><init>(Ljava/lang/String;)V

    #@6
    .line 24
    return-void
.end method
