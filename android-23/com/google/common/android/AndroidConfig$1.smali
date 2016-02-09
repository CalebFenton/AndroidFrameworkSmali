.class Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig$1;
.super Ljava/lang/Object;
.source "AndroidConfig.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->setupGzipper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;)V
    .locals 0

    #@0
    .prologue
    .line 331
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig$1;->this$0:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p1, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 333
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    return-object v0
.end method
