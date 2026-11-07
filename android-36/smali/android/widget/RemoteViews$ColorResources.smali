.class public final Landroid/widget/RemoteViews$ColorResources;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorResources"
.end annotation


# static fields
.field private static final blacklist ARSC_ENTRY_SIZE:I = 0x10

.field private static final blacklist FIRST_RESOURCE_COLOR_ID:I = 0x106001d

.field private static final blacklist LAST_RESOURCE_COLOR_ID:I = 0x10600d1

.field private static final blacklist OVERLAY_NAME:Ljava/lang/String; = "remote_views_color_resources"

.field private static final blacklist OVERLAY_TARGET_PACKAGE_NAME:Ljava/lang/String; = "android"


# instance fields
.field private final blacklist mColorMapping:Landroid/util/SparseIntArray;

.field private final blacklist mLoader:Landroid/content/res/loader/ResourcesLoader;


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/loader/ResourcesLoader;Landroid/util/SparseIntArray;)V
    .registers 3
    .param p1, "loader"    # Landroid/content/res/loader/ResourcesLoader;
    .param p2, "colorMapping"    # Landroid/util/SparseIntArray;

    .line 8733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8734
    iput-object p1, p0, Landroid/widget/RemoteViews$ColorResources;->mLoader:Landroid/content/res/loader/ResourcesLoader;

    .line 8735
    iput-object p2, p0, Landroid/widget/RemoteViews$ColorResources;->mColorMapping:Landroid/util/SparseIntArray;

    .line 8736
    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorMapping"    # Landroid/util/SparseIntArray;

    .line 8814
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Landroid/widget/RemoteViews$ColorResources;->createCompiledResourcesContent(Landroid/content/Context;Landroid/util/SparseIntArray;)[B

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_60

    .line 8815
    .local v1, "contentBytes":[B
    if-nez v1, :cond_8

    .line 8816
    return-object v0

    .line 8818
    :cond_8
    const/4 v2, 0x0

    .line 8820
    .local v2, "arscFile":Ljava/io/FileDescriptor;
    :try_start_9
    const-string/jumbo v3, "remote_views_theme_colors.arsc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/system/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 8822
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_58

    .line 8823
    .local v3, "pipeWriter":Ljava/io/OutputStream;
    :try_start_17
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 8825
    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_4e

    .line 8826
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_1e
    new-instance v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v5}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    .line 8827
    .local v5, "colorsLoader":Landroid/content/res/loader/ResourcesLoader;
    nop

    .line 8828
    invoke-static {v4, v0}, Landroid/content/res/loader/ResourcesProvider;->loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v6

    .line 8827
    invoke-virtual {v5, v6}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V

    .line 8829
    new-instance v6, Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/widget/RemoteViews$ColorResources;-><init>(Landroid/content/res/loader/ResourcesLoader;Landroid/util/SparseIntArray;)V
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_42

    .line 8830
    if-eqz v4, :cond_39

    :try_start_36
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_4e

    .line 8831
    :cond_39
    :try_start_39
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_58

    .line 8833
    if-eqz v2, :cond_41

    .line 8834
    :try_start_3e
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_60

    .line 8829
    :cond_41
    return-object v6

    .line 8825
    .end local v5    # "colorsLoader":Landroid/content/res/loader/ResourcesLoader;
    :catchall_42
    move-exception v5

    if-eqz v4, :cond_4d

    :try_start_45
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v6

    :try_start_4a
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentBytes":[B
    .end local v2    # "arscFile":Ljava/io/FileDescriptor;
    .end local v3    # "pipeWriter":Ljava/io/OutputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :cond_4d
    :goto_4d
    throw v5
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    .line 8822
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "contentBytes":[B
    .restart local v2    # "arscFile":Ljava/io/FileDescriptor;
    .restart local v3    # "pipeWriter":Ljava/io/OutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :catchall_4e
    move-exception v4

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v5

    :try_start_54
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentBytes":[B
    .end local v2    # "arscFile":Ljava/io/FileDescriptor;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :goto_57
    throw v4
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    .line 8833
    .end local v3    # "pipeWriter":Ljava/io/OutputStream;
    .restart local v1    # "contentBytes":[B
    .restart local v2    # "arscFile":Ljava/io/FileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :catchall_58
    move-exception v3

    if-eqz v2, :cond_5e

    .line 8834
    :try_start_5b
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 8836
    :cond_5e
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Landroid/util/SparseIntArray;
    throw v3
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_60

    .line 8837
    .end local v1    # "contentBytes":[B
    .end local v2    # "arscFile":Ljava/io/FileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :catch_60
    move-exception v1

    .line 8838
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "RemoteViews"

    const-string v3, "Failed to setup the context for theme colors"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8840
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method private static blacklist createCompiledResourcesContent(Landroid/content/Context;Landroid/util/SparseIntArray;)[B
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorResources"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8773
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1100007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 8775
    .local v0, "input":Ljava/io/InputStream;
    :try_start_b
    invoke-static {v0}, Landroid/widget/RemoteViews$ColorResources;->readFileContent(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 8776
    .local v1, "rawContent":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_52

    .line 8777
    .end local v1    # "rawContent":Ljava/io/ByteArrayOutputStream;
    .local v2, "content":[B
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 8778
    .end local v0    # "input":Ljava/io/InputStream;
    :cond_18
    array-length v0, v2

    add-int/lit16 v0, v0, -0xd10

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    .line 8780
    .local v0, "valuesOffset":I
    if-gez v0, :cond_28

    .line 8781
    const-string v1, "RemoteViews"

    const-string v3, "ARSC file for theme colors is invalid."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8782
    const/4 v1, 0x0

    return-object v1

    .line 8784
    :cond_28
    const v3, 0x106001d

    .local v3, "colorRes":I
    :goto_2b
    const v4, 0x10600d1

    if-gt v3, v4, :cond_51

    .line 8787
    const v4, 0xffff

    and-int/2addr v4, v3

    .line 8788
    .local v4, "index":I
    mul-int/lit8 v5, v4, 0x10

    add-int/2addr v5, v0

    .line 8789
    .local v5, "offset":I
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 8791
    .local v6, "value":I
    const/4 v7, 0x0

    .local v7, "b":I
    :goto_40
    if-ge v7, v1, :cond_4e

    .line 8792
    add-int v8, v5, v7

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 8793
    shr-int/lit8 v6, v6, 0x8

    .line 8791
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 8785
    .end local v4    # "index":I
    .end local v5    # "offset":I
    .end local v6    # "value":I
    .end local v7    # "b":I
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 8796
    .end local v3    # "colorRes":I
    :cond_51
    return-object v2

    .line 8773
    .end local v2    # "content":[B
    .local v0, "input":Ljava/io/InputStream;
    :catchall_52
    move-exception v1

    if-eqz v0, :cond_5d

    :try_start_55
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    throw v1
.end method

.method public static blacklist createWithOverlay(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorMapping"    # Landroid/util/SparseIntArray;

    .line 8859
    const-string v0, "android"

    const-string v1, "RemoteViews"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 8860
    .local v3, "owningPackage":Ljava/lang/String;
    new-instance v4, Landroid/content/om/FabricatedOverlay$Builder;

    const-string/jumbo v5, "remote_views_color_resources"

    invoke-direct {v4, v3, v5, v0}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8861
    invoke-virtual {v4}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object v4

    .line 8863
    .local v4, "overlay":Landroid/content/om/FabricatedOverlay;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_35

    .line 8864
    nop

    .line 8865
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 8866
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 8864
    const/16 v8, 0x1c

    invoke-virtual {v4, v6, v8, v7, v2}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 8863
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 8868
    .end local v5    # "i":I
    :cond_35
    const-class v5, Landroid/content/om/OverlayManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayManager;

    .line 8869
    .local v5, "overlayManager":Landroid/content/om/OverlayManager;
    new-instance v6, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v6}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 8871
    invoke-virtual {v6, v4}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v6

    .line 8872
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/content/om/OverlayManagerTransaction$Builder;->setSelfTargeting(Z)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v6

    .line 8873
    .local v6, "transaction":Landroid/content/om/OverlayManagerTransaction$Builder;
    invoke-virtual {v6}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/om/OverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 8875
    nop

    .line 8876
    invoke-virtual {v5, v0}, Landroid/content/om/OverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 8877
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v7, Landroid/widget/RemoteViews$ColorResources$$ExternalSyntheticLambda0;

    invoke-direct {v7, v3}, Landroid/widget/RemoteViews$ColorResources$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 8878
    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 8880
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 8881
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/om/OverlayInfo;

    .line 8882
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    if-nez v0, :cond_7b

    .line 8883
    const-string v7, "Failed to get overlay info "

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8884
    return-object v2

    .line 8886
    :cond_7b
    new-instance v7, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v7}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    .line 8887
    .local v7, "colorsLoader":Landroid/content/res/loader/ResourcesLoader;
    invoke-static {v0}, Landroid/content/res/loader/ResourcesProvider;->loadOverlay(Landroid/content/om/OverlayInfo;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V

    .line 8888
    new-instance v8, Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Landroid/widget/RemoteViews$ColorResources;-><init>(Landroid/content/res/loader/ResourcesLoader;Landroid/util/SparseIntArray;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_90} :catch_91

    return-object v8

    .line 8889
    .end local v0    # "overlayInfo":Landroid/content/om/OverlayInfo;
    .end local v3    # "owningPackage":Ljava/lang/String;
    .end local v4    # "overlay":Landroid/content/om/FabricatedOverlay;
    .end local v5    # "overlayManager":Landroid/content/om/OverlayManager;
    .end local v6    # "transaction":Landroid/content/om/OverlayManagerTransaction$Builder;
    .end local v7    # "colorsLoader":Landroid/content/res/loader/ResourcesLoader;
    :catch_91
    move-exception v0

    .line 8890
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Failed to add theme color overlay into loader"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8892
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v2
.end method

.method static synthetic blacklist lambda$createWithOverlay$0(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .registers 4
    .param p0, "owningPackage"    # Ljava/lang/String;
    .param p1, "info"    # Landroid/content/om/OverlayInfo;

    .line 8878
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    const-string/jumbo v1, "remote_views_color_resources"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 8879
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 8878
    :goto_16
    return v0
.end method

.method private static blacklist readFileContent(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .registers 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8752
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 8753
    .local v0, "content":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 8754
    .local v1, "buffer":[B
    :goto_b
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_1a

    .line 8755
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 8756
    .local v2, "read":I
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 8757
    .end local v2    # "read":I
    goto :goto_b

    .line 8758
    :cond_1a
    return-object v0
.end method


# virtual methods
.method public blacklist apply(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 8744
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/res/loader/ResourcesLoader;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/RemoteViews$ColorResources;->mLoader:Landroid/content/res/loader/ResourcesLoader;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 8745
    return-void
.end method

.method public blacklist getColorMapping()Landroid/util/SparseIntArray;
    .registers 2

    .line 8748
    iget-object v0, p0, Landroid/widget/RemoteViews$ColorResources;->mColorMapping:Landroid/util/SparseIntArray;

    return-object v0
.end method
