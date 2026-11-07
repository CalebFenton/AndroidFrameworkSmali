.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Globals"
.end annotation


# instance fields
.field private blacklist mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

.field private greylist-max-o mColorCallbackRegistered:Z

.field private final greylist-max-o mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/WallpaperManager$OnColorsChangedListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private blacklist mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

.field private blacklist mLocalColorCallbackAreas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mMainLooperHandler:Landroid/os/Handler;

.field private final greylist-max-o mService:Landroid/app/IWallpaperManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$Ng8UFjjVrgNJHwlYbAWyESmpli0(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/WallpaperManager$Globals;->lambda$onWallpaperColorsChanged$1(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalColorCallbackAreas(Landroid/app/WallpaperManager$Globals;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .registers 1

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .registers 4
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 577
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    .line 561
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    .line 563
    new-instance v0, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    .line 578
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 579
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    .line 580
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 581
    return-void
.end method

.method private blacklist getCurrentWallpaperLocked(Landroid/content/Context;IIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "hardware"    # Z
    .param p5, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 861
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 862
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-object v1

    .line 867
    :cond_f
    :try_start_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 868
    .local v7, "params":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPMS.getWallpaperWithFeature_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 869
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 870
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_35} :catch_88

    .line 869
    const/4 v9, 0x1

    move-object v5, p0

    move v6, p2

    move v8, p3

    .end local p2    # "which":I
    .end local p3    # "userId":I
    .local v6, "which":I
    .local v8, "userId":I
    :try_start_39
    invoke-interface/range {v2 .. v9}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 872
    .local p2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_85

    .line 874
    if-nez p2, :cond_43

    .line 875
    return-object v1

    .line 877
    :cond_43
    :try_start_43
    new-instance p3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_48
    .catch Ljava/lang/OutOfMemoryError; {:try_start_43 .. :try_end_48} :catch_78
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_78
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_85

    .line 879
    .local p3, "is":Ljava/io/InputStream;
    :try_start_48
    invoke-static {}, Landroid/app/Flags;->enableConnectedDisplaysWallpaper()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 880
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p3, v2}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .local v0, "src":Landroid/graphics/ImageDecoder$Source;
    goto :goto_60

    .line 883
    .end local v0    # "src":Landroid/graphics/ImageDecoder$Source;
    :cond_58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 885
    .restart local v0    # "src":Landroid/graphics/ImageDecoder$Source;
    :goto_60
    new-instance v2, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;

    invoke-direct {v2, p4, p5}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;-><init>(ZLandroid/app/WallpaperManager$ColorManagementProxy;)V

    invoke-static {v0, v2}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_69
    .catchall {:try_start_48 .. :try_end_69} :catchall_6d

    .line 893
    :try_start_69
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_69 .. :try_end_6c} :catch_78
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_78
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6c} :catch_85

    .line 885
    return-object v2

    .line 877
    .end local v0    # "src":Landroid/graphics/ImageDecoder$Source;
    :catchall_6d
    move-exception v0

    move-object v2, v0

    :try_start_6f
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception v0

    :try_start_74
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "which":I
    .end local v7    # "params":Landroid/os/Bundle;
    .end local v8    # "userId":I
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "hardware":Z
    .end local p5    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :goto_77
    throw v2
    :try_end_78
    .catch Ljava/lang/OutOfMemoryError; {:try_start_74 .. :try_end_78} :catch_78
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_78} :catch_78
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_78} :catch_85

    .line 893
    .end local p3    # "is":Ljava/io/InputStream;
    .restart local v6    # "which":I
    .restart local v7    # "params":Landroid/os/Bundle;
    .restart local v8    # "userId":I
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p4    # "hardware":Z
    .restart local p5    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catch_78
    move-exception v0

    move-object p3, v0

    .line 894
    .local p3, "e":Ljava/lang/Throwable;
    :try_start_7a
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t decode file"

    invoke-static {v0, v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_83} :catch_85

    .line 898
    nop

    .line 899
    .end local v7    # "params":Landroid/os/Bundle;
    .end local p2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "e":Ljava/lang/Throwable;
    return-object v1

    .line 896
    :catch_85
    move-exception v0

    move-object p2, v0

    goto :goto_8c

    .end local v6    # "which":I
    .end local v8    # "userId":I
    .local p2, "which":I
    .local p3, "userId":I
    :catch_88
    move-exception v0

    move v6, p2

    move v8, p3

    move-object p2, v0

    .line 897
    .end local p3    # "userId":I
    .restart local v6    # "which":I
    .restart local v8    # "userId":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_8c
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method private greylist-max-o getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPMS.getDefaultWallpaper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 905
    .local v0, "defaultWallpaper":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 906
    :cond_20
    const/4 v0, 0x0

    .line 907
    const-string v1, "WPMS.openDefaultWallpaper"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 908
    :try_start_26
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_2a} :catch_54
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_54

    .line 909
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 910
    if-eqz v1, :cond_42

    .line 911
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 912
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const-string v3, "WPMS.decodeStream"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 913
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 914
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_48

    .line 916
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_42
    if-eqz v1, :cond_47

    :try_start_44
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/lang/OutOfMemoryError; {:try_start_44 .. :try_end_47} :catch_54
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_54

    .line 918
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_47
    goto :goto_5e

    .line 908
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_48
    move-exception v2

    if-eqz v1, :cond_53

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v3

    :try_start_50
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "which":I
    :cond_53
    :goto_53
    throw v2
    :try_end_54
    .catch Ljava/lang/OutOfMemoryError; {:try_start_50 .. :try_end_54} :catch_54
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_54} :catch_54

    .line 916
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "which":I
    :catch_54
    move-exception v1

    .line 917
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t decode stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5e
    :goto_5e
    monitor-enter p0

    .line 921
    :try_start_5f
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 922
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_66

    .line 923
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 924
    return-object v0

    .line 922
    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1
.end method

.method private blacklist isStaticWallpaper(I)Z
    .registers 4
    .param p1, "which"    # I

    .line 933
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_11

    .line 938
    :try_start_4
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->isStaticWallpaper(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 939
    :catch_b
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 934
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic blacklist lambda$getCurrentWallpaperLocked$2(ZLandroid/app/WallpaperManager$ColorManagementProxy;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 6
    .param p0, "hardware"    # Z
    .param p1, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;
    .param p2, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p3, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p4, "source"    # Landroid/graphics/ImageDecoder$Source;

    .line 887
    xor-int/lit8 v0, p0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 889
    if-eqz p1, :cond_a

    .line 890
    invoke-virtual {p1, p2, p3}, Landroid/app/WallpaperManager$ColorManagementProxy;->doColorManagement(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;)V

    .line 892
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onWallpaperColorsChanged$1(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .registers 7
    .param p1, "listener"    # Landroid/util/Pair;
    .param p2, "colors"    # Landroid/app/WallpaperColors;
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 702
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    monitor-enter v0

    .line 703
    :try_start_5
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 704
    .local v1, "stillExists":Z
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_16

    .line 705
    if-eqz v1, :cond_15

    .line 706
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-interface {v0, p2, p3, p4}, Landroid/app/WallpaperManager$OnColorsChangedListener;->onColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 708
    :cond_15
    return-void

    .line 704
    .end local v1    # "stillExists":Z
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method static synthetic blacklist lambda$removeOnColorsChangedListener$0(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/util/Pair;)Z
    .registers 3
    .param p0, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 676
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 13
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .line 620
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    monitor-enter p0

    .line 621
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_51

    if-eqz v1, :cond_31

    :try_start_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 622
    .local v1, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 623
    .local v2, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-nez v2, :cond_26

    .line 624
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 625
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_26
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2b

    .line 628
    nop

    .end local v1    # "area":Landroid/graphics/RectF;
    .end local v2    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    goto :goto_5

    .line 637
    :catchall_2b
    move-exception v0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    goto :goto_56

    .line 631
    :cond_31
    :try_start_31
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_35} :catch_40
    .catchall {:try_start_31 .. :try_end_35} :catchall_51

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "displayId":I
    .local v3, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v4, "which":I
    .local v5, "userId":I
    .local v6, "displayId":I
    :try_start_39
    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3d
    .catchall {:try_start_39 .. :try_end_3c} :catchall_58

    .line 636
    goto :goto_4f

    .line 633
    :catch_3d
    move-exception v0

    move-object p2, v0

    goto :goto_46

    .end local v3    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v4    # "which":I
    .end local v5    # "userId":I
    .end local v6    # "displayId":I
    .restart local p2    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "displayId":I
    :catch_40
    move-exception v0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object p2, v0

    .line 635
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "displayId":I
    .restart local v3    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v4    # "which":I
    .restart local v5    # "userId":I
    .restart local v6    # "displayId":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_46
    :try_start_46
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Can\'t register for local color updates"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local p2    # "e":Landroid/os/RemoteException;
    :goto_4f
    monitor-exit p0

    .line 638
    return-void

    .line 637
    .end local v3    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v4    # "which":I
    .end local v5    # "userId":I
    .end local v6    # "displayId":I
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "displayId":I
    :catchall_51
    move-exception v0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "displayId":I
    .restart local v3    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v4    # "which":I
    .restart local v5    # "userId":I
    .restart local v6    # "displayId":I
    :goto_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_58

    throw v0

    :catchall_58
    move-exception v0

    goto :goto_56
.end method

.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V
    .registers 8
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 603
    monitor-enter p0

    .line 604
    :try_start_1
    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-nez v0, :cond_18

    .line 606
    :try_start_5
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p3, p4}, Landroid/app/IWallpaperManager;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e
    .catchall {:try_start_5 .. :try_end_d} :catchall_24

    .line 611
    goto :goto_18

    .line 608
    :catch_e
    move-exception v0

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_f
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    monitor-exit p0

    .line 615
    return-void

    .line 614
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw v0
.end method

.method greylist-max-o forgetLoadedWallpaper()V
    .registers 2

    .line 853
    monitor-enter p0

    .line 854
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    .line 855
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 856
    monitor-exit p0

    .line 857
    return-void

    .line 856
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method blacklist getWallpaperColors(III)Landroid/app/WallpaperColors;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 714
    invoke-static {p1}, Landroid/app/WallpaperManager;->-$$Nest$smcheckExactlyOneWallpaperFlagSet(I)V

    .line 717
    :try_start_3
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    .line 718
    :catch_a
    move-exception v0

    .line 721
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o onWallpaperChanged()V
    .registers 1

    .line 589
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 590
    return-void
.end method

.method public greylist-max-o onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .registers 12
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 692
    monitor-enter p0

    .line 693
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    move-object v4, v1

    .line 694
    .local v4, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    .line 695
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_3c

    if-nez v2, :cond_26

    .line 696
    :try_start_1c
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_20

    move-object v1, v2

    goto :goto_26

    .line 710
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v4    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    :catchall_20
    move-exception v0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    goto :goto_41

    .line 698
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v4    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    :cond_26
    :goto_26
    :try_start_26
    new-instance v2, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_3c

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    .end local p1    # "colors":Landroid/app/WallpaperColors;
    .end local p2    # "which":I
    .end local p3    # "userId":I
    .local v5, "colors":Landroid/app/WallpaperColors;
    .local v6, "which":I
    .local v7, "userId":I
    :try_start_2c
    invoke-direct/range {v2 .. v7}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 709
    move-object p1, v5

    move p2, v6

    move p3, v7

    .end local v1    # "handler":Landroid/os/Handler;
    .end local v4    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    goto :goto_7

    .line 710
    .end local v5    # "colors":Landroid/app/WallpaperColors;
    .end local v6    # "which":I
    .end local v7    # "userId":I
    .restart local p1    # "colors":Landroid/app/WallpaperColors;
    .restart local p2    # "which":I
    .restart local p3    # "userId":I
    :cond_36
    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    .end local p1    # "colors":Landroid/app/WallpaperColors;
    .end local p2    # "which":I
    .end local p3    # "userId":I
    .restart local v5    # "colors":Landroid/app/WallpaperColors;
    .restart local v6    # "which":I
    .restart local v7    # "userId":I
    monitor-exit p0

    .line 711
    return-void

    .line 710
    .end local v5    # "colors":Landroid/app/WallpaperColors;
    .end local v6    # "which":I
    .end local v7    # "userId":I
    .restart local p1    # "colors":Landroid/app/WallpaperColors;
    .restart local p2    # "which":I
    .restart local p3    # "userId":I
    :catchall_3c
    move-exception v0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    .end local p1    # "colors":Landroid/app/WallpaperColors;
    .end local p2    # "which":I
    .end local p3    # "userId":I
    .restart local v5    # "colors":Landroid/app/WallpaperColors;
    .restart local v6    # "which":I
    .restart local v7    # "userId":I
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_43

    throw v0

    :catchall_43
    move-exception v0

    goto :goto_41
.end method

.method public blacklist peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "hardware"    # Z
    .param p6, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 742
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 744
    :try_start_5
    const-string v0, "WPMS.isWallpaperSupported"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_21
    .catchall {:try_start_5 .. :try_end_14} :catchall_1f

    if-nez v0, :cond_1b

    .line 746
    nop

    .line 751
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 746
    return-object v1

    .line 751
    :cond_1b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 752
    goto :goto_2b

    .line 751
    :catchall_1f
    move-exception v0

    goto :goto_27

    .line 748
    :catch_21
    move-exception v0

    .line 749
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_22
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    throw v1
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 751
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :goto_27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 752
    throw v0

    .line 754
    :cond_2b
    :goto_2b
    monitor-enter p0

    .line 755
    :try_start_2c
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_103

    if-eqz v0, :cond_4f

    :try_start_30
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    invoke-virtual {v0, p4, p3}, Landroid/app/WallpaperManager$CachedWallpaper;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "android.permission.READ_WALLPAPER_INTERNAL"

    .line 756
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4f

    .line 757
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    iget-object v0, v0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_46

    return-object v0

    .line 795
    :catchall_46
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    goto/16 :goto_10a

    .line 759
    :cond_4f
    :try_start_4f
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;
    :try_end_51
    .catchall {:try_start_4f .. :try_end_51} :catchall_103

    .line 760
    const/4 v2, 0x0

    .line 762
    .local v2, "currentWallpaper":Landroid/graphics/Bitmap;
    :try_start_52
    const-string v0, "WPMS.getCurrentWallpaperLocked"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_52 .. :try_end_57} :catch_bb
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_57} :catch_78
    .catchall {:try_start_52 .. :try_end_57} :catchall_6e

    .line 763
    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .local v4, "context":Landroid/content/Context;
    .local v5, "which":I
    .local v6, "userId":I
    .local v7, "hardware":Z
    .local v8, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :try_start_5d
    invoke-direct/range {v3 .. v8}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;IIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_61
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5d .. :try_end_61} :catch_6a
    .catch Ljava/lang/SecurityException; {:try_start_5d .. :try_end_61} :catch_67
    .catchall {:try_start_5d .. :try_end_61} :catchall_fc

    move-object v2, p1

    .line 789
    :goto_62
    :try_start_62
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_10c

    .line 790
    goto/16 :goto_de

    .line 767
    :catch_67
    move-exception v0

    move-object p1, v0

    goto :goto_80

    .line 765
    :catch_6a
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c3

    .line 789
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "hardware":Z
    .end local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catchall_6e
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    move-object p1, v0

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "hardware":Z
    .restart local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    goto/16 :goto_fe

    .line 767
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "hardware":Z
    .end local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catch_78
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    move-object p1, v0

    .line 774
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "hardware":Z
    .restart local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .local p1, "e":Ljava/lang/SecurityException;
    :goto_80
    const-wide/32 p3, 0xe4ad173

    :try_start_83
    invoke-static {p3, p4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p3

    if-eqz p3, :cond_a5

    .line 775
    const-wide/32 p3, 0xe2815da

    invoke-static {p3, p4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p3

    if-nez p3, :cond_a5

    .line 776
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "No permission to access wallpaper, returning default wallpaper to avoid crashing legacy app."

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 p3, 0x1

    invoke-direct {p0, v4, p3}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_a0
    .catchall {:try_start_83 .. :try_end_a0} :catchall_fc

    .line 789
    :try_start_a0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_10c

    .line 778
    return-object p3

    .line 781
    :cond_a5
    :try_start_a5
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p4, 0x1b

    if-ge p3, p4, :cond_b9

    .line 782
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 786
    :cond_b9
    nop

    .end local v2    # "currentWallpaper":Landroid/graphics/Bitmap;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "hardware":Z
    .end local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p2    # "returnDefault":Z
    throw p1

    .line 765
    .restart local v2    # "currentWallpaper":Landroid/graphics/Bitmap;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .local p1, "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catch_bb
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    move-object p1, v0

    .line 766
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "hardware":Z
    .restart local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .local p1, "e":Ljava/lang/OutOfMemoryError;
    :goto_c3
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Out of memory loading the current wallpaper: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_a5 .. :try_end_dd} :catchall_fc

    goto :goto_62

    .line 791
    .end local p1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_de
    if-eqz v2, :cond_e9

    .line 792
    :try_start_e0
    new-instance p1, Landroid/app/WallpaperManager$CachedWallpaper;

    invoke-direct {p1, v2, v6, v5}, Landroid/app/WallpaperManager$CachedWallpaper;-><init>(Landroid/graphics/Bitmap;II)V

    iput-object p1, v3, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    .line 793
    monitor-exit p0

    return-object v2

    .line 795
    .end local v2    # "currentWallpaper":Landroid/graphics/Bitmap;
    :cond_e9
    monitor-exit p0
    :try_end_ea
    .catchall {:try_start_e0 .. :try_end_ea} :catchall_10c

    .line 796
    if-nez p2, :cond_f7

    const/4 p1, 0x2

    if-ne v5, p1, :cond_f6

    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->isStaticWallpaper(I)Z

    move-result p1

    if-eqz p1, :cond_f6

    goto :goto_f7

    .line 799
    :cond_f6
    return-object v1

    .line 797
    :cond_f7
    :goto_f7
    invoke-direct {p0, v4, v5}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 789
    .restart local v2    # "currentWallpaper":Landroid/graphics/Bitmap;
    :catchall_fc
    move-exception v0

    move-object p1, v0

    :goto_fe
    :try_start_fe
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 790
    nop

    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "hardware":Z
    .end local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p2    # "returnDefault":Z
    throw p1

    .line 795
    .end local v2    # "currentWallpaper":Landroid/graphics/Bitmap;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .local p1, "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catchall_103
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "hardware":Z
    .restart local v8    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :goto_10a
    monitor-exit p0
    :try_end_10b
    .catchall {:try_start_fe .. :try_end_10b} :catchall_10c

    throw v0

    :catchall_10c
    move-exception v0

    goto :goto_10a
.end method

.method public blacklist peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 726
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .local v1, "context":Landroid/content/Context;
    .local v2, "returnDefault":Z
    .local v3, "which":I
    .local v6, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist peekWallpaperDimensions(Landroid/content/Context;ZII)Landroid/graphics/Rect;
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 805
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_1d

    .line 807
    :try_start_4
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 808
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_17

    return-object v0

    .line 812
    :cond_16
    goto :goto_1d

    .line 810
    :catch_17
    move-exception v0

    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 815
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    const/4 v8, 0x0

    .line 816
    .local v8, "dimensions":Landroid/graphics/Rect;
    monitor-enter p0

    .line 817
    :try_start_1f
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_b5

    .line 818
    .local v5, "params":Landroid/os/Bundle;
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_27
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 819
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 818
    const/4 v7, 0x1

    move-object v3, p0

    move v4, p3

    move/from16 v6, p4

    invoke-interface/range {v0 .. v7}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3a} :catch_6b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3a} :catch_69
    .catchall {:try_start_27 .. :try_end_3a} :catchall_b5

    move-object v1, v0

    .line 822
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_63

    .line 823
    :try_start_3d
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 824
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 825
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, v9, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 826
    new-instance v2, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v11, v11, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_56

    move-object v8, v2

    .end local v8    # "dimensions":Landroid/graphics/Rect;
    .local v2, "dimensions":Landroid/graphics/Rect;
    goto :goto_63

    .line 818
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "dimensions":Landroid/graphics/Rect;
    .restart local v8    # "dimensions":Landroid/graphics/Rect;
    :catchall_56
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_62

    :try_start_5a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v0

    :try_start_5f
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "params":Landroid/os/Bundle;
    .end local v8    # "dimensions":Landroid/graphics/Rect;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "userId":I
    :cond_62
    :goto_62
    throw v2

    .line 828
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v8    # "dimensions":Landroid/graphics/Rect;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    :cond_63
    :goto_63
    if-eqz v1, :cond_68

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_68} :catch_6b
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_68} :catch_69
    .catchall {:try_start_5f .. :try_end_68} :catchall_b5

    .line 832
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_68
    goto :goto_77

    .line 830
    :catch_69
    move-exception v0

    goto :goto_77

    .line 828
    :catch_6b
    move-exception v0

    .line 829
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_6c
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "peek wallpaper dimensions failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 832
    nop

    .line 833
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "params":Landroid/os/Bundle;
    :goto_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_b5

    .line 835
    if-eqz v8, :cond_86

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_b4

    :cond_86
    if-nez p2, :cond_91

    const/4 v0, 0x2

    if-ne p3, v0, :cond_b4

    .line 836
    invoke-direct {p0, v0}, Landroid/app/WallpaperManager$Globals;->isStaticWallpaper(I)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 837
    :cond_91
    invoke-static {p1, p3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v2

    .line 838
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_b4

    .line 840
    :try_start_97
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 841
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 842
    invoke-static {v2, v9, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 843
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v5, v11, v11, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_aa
    .catchall {:try_start_97 .. :try_end_aa} :catchall_af

    move-object v8, v5

    .line 845
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 846
    goto :goto_b4

    .line 845
    :catchall_af
    move-exception v0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 846
    throw v0

    .line 849
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_b4
    :goto_b4
    return-object v8

    .line 833
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v0
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V
    .registers 13
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 643
    monitor-enter p0

    .line 644
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    move-object v1, v0

    .line 645
    .local v1, "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_17

    move v5, p2

    move v6, p3

    move v7, p4

    goto/16 :goto_72

    .line 648
    :cond_17
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_74

    if-eqz v2, :cond_42

    :try_start_27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;

    .line 649
    .local v2, "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 650
    .local v3, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v3, :cond_3c

    if-eq v2, p1, :cond_3c

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_3d

    .line 651
    .end local v2    # "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .end local v3    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_3c
    goto :goto_21

    .line 663
    .end local v1    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :catchall_3d
    move-exception v0

    move v5, p2

    move v6, p3

    move v7, p4

    goto :goto_78

    .line 653
    .restart local v1    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_5b

    .line 655
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_51} :catch_5f
    .catchall {:try_start_42 .. :try_end_51} :catchall_74

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p2    # "which":I
    .end local p3    # "userId":I
    .end local p4    # "displayId":I
    .local v5, "which":I
    .local v6, "userId":I
    .local v7, "displayId":I
    :try_start_54
    invoke-interface/range {v2 .. v7}, Landroid/app/IWallpaperManager;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_7a

    goto :goto_5e

    .line 659
    :catch_58
    move-exception v0

    move-object p2, v0

    goto :goto_64

    .line 653
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "displayId":I
    .restart local p2    # "which":I
    .restart local p3    # "userId":I
    .restart local p4    # "displayId":I
    :cond_5b
    move v5, p2

    move v6, p3

    move v7, p4

    .line 662
    .end local p2    # "which":I
    .end local p3    # "userId":I
    .end local p4    # "displayId":I
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "displayId":I
    :goto_5e
    goto :goto_6d

    .line 659
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "displayId":I
    .restart local p2    # "which":I
    .restart local p3    # "userId":I
    .restart local p4    # "displayId":I
    :catch_5f
    move-exception v0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object p2, v0

    .line 661
    .end local p3    # "userId":I
    .end local p4    # "displayId":I
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "displayId":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_64
    :try_start_64
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Can\'t unregister for local color updates"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    .end local v1    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    .end local p2    # "e":Landroid/os/RemoteException;
    :goto_6d
    monitor-exit p0

    .line 664
    return-void

    .line 645
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "displayId":I
    .restart local v1    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    .local p2, "which":I
    .restart local p3    # "userId":I
    .restart local p4    # "displayId":I
    :cond_6f
    move v5, p2

    move v6, p3

    move v7, p4

    .line 646
    .end local p2    # "which":I
    .end local p3    # "userId":I
    .end local p4    # "displayId":I
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "displayId":I
    :goto_72
    monitor-exit p0

    return-void

    .line 663
    .end local v1    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    .end local v5    # "which":I
    .end local v6    # "userId":I
    .end local v7    # "displayId":I
    .restart local p2    # "which":I
    .restart local p3    # "userId":I
    .restart local p4    # "displayId":I
    :catchall_74
    move-exception v0

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p2    # "which":I
    .end local p3    # "userId":I
    .end local p4    # "displayId":I
    .restart local v5    # "which":I
    .restart local v6    # "userId":I
    .restart local v7    # "displayId":I
    :goto_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_64 .. :try_end_79} :catchall_7a

    throw v0

    :catchall_7a
    move-exception v0

    goto :goto_78
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V
    .registers 7
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 675
    monitor-enter p0

    .line 676
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;-><init>(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 678
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z

    if-eqz v0, :cond_2a

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2c

    .line 681
    :try_start_1a
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p2, p3}, Landroid/app/IWallpaperManager;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2c

    .line 685
    goto :goto_2a

    .line 682
    :catch_20
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_21
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t unregister color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    monitor-exit p0

    .line 688
    return-void

    .line 687
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw v0
.end method
