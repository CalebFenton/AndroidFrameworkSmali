.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static blacklist sPending:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Landroid/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2909
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist cancelThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2951
    sget-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2952
    :try_start_3
    sget-object v1, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CancellationSignal;

    .line 2953
    .local v1, "signal":Landroid/os/CancellationSignal;
    if-eqz v1, :cond_10

    .line 2954
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 2956
    .end local v1    # "signal":Landroid/os/CancellationSignal;
    :cond_10
    monitor-exit v0

    .line 2957
    return-void

    .line 2956
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method static blacklist getThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "kind"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2920
    invoke-static {p2}, Landroid/provider/MediaStore$ThumbnailConstants;->getKindSize(I)Landroid/util/Size;

    move-result-object v0

    .line 2922
    .local v0, "size":Landroid/util/Size;
    const/4 v1, 0x0

    .line 2923
    .local v1, "signal":Landroid/os/CancellationSignal;
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2924
    :try_start_8
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CancellationSignal;

    move-object v1, v3

    .line 2925
    if-nez v1, :cond_1e

    .line 2926
    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    move-object v1, v3

    .line 2927
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2929
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_67

    .line 2932
    :try_start_1f
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_32
    .catchall {:try_start_1f .. :try_end_23} :catchall_30

    .line 2937
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 2938
    :try_start_26
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    monitor-exit v3

    .line 2932
    return-object v2

    .line 2939
    :catchall_2d
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw v2

    .line 2937
    :catchall_30
    move-exception v2

    goto :goto_5a

    .line 2933
    :catch_32
    move-exception v2

    .line 2934
    .local v2, "e":Ljava/io/IOException;
    :try_start_33
    const-string v3, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to obtain thumbnail for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_30

    .line 2935
    nop

    .line 2937
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 2938
    :try_start_4f
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    monitor-exit v3

    .line 2935
    const/4 v3, 0x0

    return-object v3

    .line 2939
    :catchall_57
    move-exception v4

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_57

    throw v4

    .line 2937
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5a
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 2938
    :try_start_5d
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sPending:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_64

    .line 2940
    throw v2

    .line 2939
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v3
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2

    .line 2929
    :catchall_67
    move-exception v3

    :try_start_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v3
.end method
