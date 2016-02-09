.class public Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;
.super Ljava/lang/Object;
.source "Gunzipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;
    }
.end annotation


# static fields
.field private static final instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;


# instance fields
.field private implementation:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 19
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    #@2
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;-><init>()V

    #@5
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    return-void
.end method

.method public static gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    #@2
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->implementation:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;

    #@4
    invoke-interface {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static setImplementation(Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;)V
    .locals 1
    .param p0, "implementation"    # Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;

    #@0
    .prologue
    .line 29
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    #@2
    iput-object p0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->implementation:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;

    #@4
    .line 30
    return-void
.end method
