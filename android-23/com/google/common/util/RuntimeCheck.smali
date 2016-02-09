.class public Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;
.super Ljava/lang/Object;
.source "RuntimeCheck.java"


# static fields
.field private static isStartupComplete:Z

.field private static isTrackingStartup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 16
    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;->isTrackingStartup:Z

    #@3
    .line 19
    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;->isStartupComplete:Z

    #@5
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    return-void
.end method

.method public static isTest()Z
    .locals 1

    #@0
    .prologue
    .line 40
    const/4 v0, 0x0

    #@1
    return v0
.end method
