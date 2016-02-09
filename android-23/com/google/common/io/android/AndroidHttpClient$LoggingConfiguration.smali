.class Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingConfiguration"
.end annotation


# instance fields
.field private final level:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static synthetic access$500(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;

    #@0
    .prologue
    .line 336
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->isLoggable()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$700(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    #@0
    .prologue
    .line 336
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private isLoggable()Z
    .locals 2

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    #@2
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->level:I

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private println(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 357
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->level:I

    #@2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    #@4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    #@7
    .line 358
    return-void
.end method
