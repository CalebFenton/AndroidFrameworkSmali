.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$ViewOperation;,
        Landroid/view/ViewDebug$PictureCallbackHandler;,
        Landroid/view/ViewDebug$StreamingPictureCallbackHandler;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$PropertyInfo;,
        Landroid/view/ViewDebug$ExportedProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;,
        Landroid/view/ViewDebug$HardwareCanvasProvider;,
        Landroid/view/ViewDebug$SoftwareCanvasProvider;,
        Landroid/view/ViewDebug$CanvasProvider;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$FieldPI;,
        Landroid/view/ViewDebug$MethodPI;
    }
.end annotation


# static fields
.field private static final greylist-max-o CAPTURE_TIMEOUT:I = 0x1770

.field public static final greylist-max-o DEBUG_DRAG:Z = false

.field public static final greylist-max-o DEBUG_POSITIONING:Z = false

.field private static final greylist-max-o REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final greylist-max-o REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final greylist-max-o REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field public static final blacklist REMOTE_COMMAND_DUMP_ENCODED:Ljava/lang/String; = "DUMP_ENCODED"

.field private static final greylist-max-o REMOTE_COMMAND_DUMP_THEME:Ljava/lang/String; = "DUMP_THEME"

.field private static final greylist-max-o REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final blacklist REMOTE_COMMAND_INVOKE_METHOD:Ljava/lang/String; = "INVOKE_METHOD"

.field private static final greylist-max-o REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final greylist-max-o REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final greylist-max-o REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field private static final blacklist SIG_ARRAY:C = '['

.field private static final blacklist SIG_BOOLEAN:C = 'Z'

.field private static final blacklist SIG_BYTE:C = 'B'

.field private static final blacklist SIG_CHAR:C = 'C'

.field private static final blacklist SIG_DOUBLE:C = 'D'

.field private static final blacklist SIG_FLOAT:C = 'F'

.field private static final blacklist SIG_INT:C = 'I'

.field private static final blacklist SIG_LONG:C = 'J'

.field private static final blacklist SIG_SHORT:C = 'S'

.field private static final blacklist SIG_STRING:C = 'R'

.field private static final blacklist SIG_VOID:C = 'V'

.field private static final blacklist TAG:Ljava/lang/String; = "ViewDebug"

.field public static final whitelist TRACE_HIERARCHY:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TRACE_RECYCLER:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist sCapturedViewProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "Landroid/view/ViewDebug$CapturedViewProperty;",
            "*>;>;"
        }
    .end annotation
.end field

.field private static blacklist sExportProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "Landroid/view/ViewDebug$ExportedProperty;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist cacheExportedProperties(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1385
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    sget-object v0, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1386
    return-void

    .line 1389
    :cond_d
    invoke-static {p0}, Landroid/view/ViewDebug;->getExportedProperties(Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_31

    aget-object v3, v0, v2

    .line 1390
    .local v3, "info":Landroid/view/ViewDebug$PropertyInfo;, "Landroid/view/ViewDebug$PropertyInfo<Landroid/view/ViewDebug$ExportedProperty;*>;"
    iget-object v4, v3, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, v3, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1391
    iget-object v4, v3, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    invoke-static {v4}, Landroid/view/ViewDebug;->cacheExportedProperties(Ljava/lang/Class;)V

    .line 1389
    .end local v3    # "info":Landroid/view/ViewDebug$PropertyInfo;, "Landroid/view/ViewDebug$PropertyInfo<Landroid/view/ViewDebug$ExportedProperty;*>;"
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1394
    :cond_31
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 1395
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_d

    .line 1396
    return-void
.end method

.method private static blacklist cacheExportedPropertiesForChildren(Landroid/view/ViewGroup;)V
    .registers 5
    .param p0, "group"    # Landroid/view/ViewGroup;

    .line 1374
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1375
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1f

    .line 1376
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1377
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewDebug;->cacheExportedProperties(Ljava/lang/Class;)V

    .line 1378
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1c

    .line 1379
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3}, Landroid/view/ViewDebug;->cacheExportedPropertiesForChildren(Landroid/view/ViewGroup;)V

    .line 1375
    .end local v2    # "view":Landroid/view/View;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1382
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method public static greylist-max-o capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .registers 7
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "captureView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1109
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1111
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1d

    .line 1112
    const-string v1, "View"

    const-string v2, "Failed to create capture bitmap!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-static {v1, v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1119
    :cond_1d
    const/4 v1, 0x0

    .line 1121
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_1e
    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v1, v2

    .line 1122
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1123
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_3a

    .line 1125
    nop

    .line 1126
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 1128
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1129
    nop

    .line 1130
    return-void

    .line 1125
    :catchall_3a
    move-exception v2

    if-eqz v1, :cond_40

    .line 1126
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 1128
    :cond_40
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1129
    throw v2
.end method

.method private static greylist-max-o capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1102
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1103
    .local v0, "captureView":Landroid/view/View;
    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    .line 1104
    return-void
.end method

.method public static greylist-max-o captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 769
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 770
    .local v0, "outRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->getDisplayFrame(Landroid/graphics/Rect;)V

    .line 772
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 773
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 775
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 777
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_27

    .line 779
    .end local v0    # "outRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 780
    nop

    .line 781
    return-void

    .line 779
    :catchall_27
    move-exception v0

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 780
    throw v0
.end method

.method private static greylist-max-o captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .registers 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    if-eqz p2, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 788
    .local v0, "localVisible":Z
    :goto_d
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_79

    .line 789
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    .line 790
    .local v3, "id":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 791
    .local v4, "name":Ljava/lang/String;
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2f

    .line 792
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 795
    :cond_2f
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 796
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 797
    if-eqz v0, :cond_39

    move v5, v2

    goto :goto_3a

    :cond_39
    move v5, v1

    :goto_3a
    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 799
    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 801
    .local v6, "position":[I
    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 803
    aget v1, v6, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 804
    aget v1, v6, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 805
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 807
    invoke-static {p0, v2}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 808
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_76

    .line 809
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 810
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    mul-int/2addr v7, v5

    invoke-direct {v2, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 811
    .local v2, "arrayOut":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v5, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 812
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 813
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 815
    .end local v2    # "arrayOut":Ljava/io/ByteArrayOutputStream;
    :cond_76
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 818
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "id":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "position":[I
    :cond_79
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_91

    .line 819
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 820
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 822
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_85
    if-ge v3, v2, :cond_91

    .line 823
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1, v0}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 822
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 827
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_91
    iget-object v1, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v1, :cond_9e

    .line 828
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    iget-object v1, v1, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 829
    .local v1, "overlayContainer":Landroid/view/ViewGroup;
    invoke-static {v1, p1, v0}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 831
    .end local v1    # "overlayContainer":Landroid/view/ViewGroup;
    :cond_9e
    return-void
.end method

.method private static blacklist convertToPropertyInfos([Ljava/lang/reflect/Method;[Ljava/lang/reflect/Field;Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;
    .registers 6
    .param p0, "methods"    # [Ljava/lang/reflect/Method;
    .param p1, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">([",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "TT;*>;"
        }
    .end annotation

    .line 1458
    .local p2, "property":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/stream/Stream;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/view/ViewDebug$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2}, Landroid/view/ViewDebug$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1459
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/view/ViewDebug$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2}, Landroid/view/ViewDebug$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1458
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1460
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/view/ViewDebug$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/view/ViewDebug$$ExternalSyntheticLambda6;-><init>()V

    .line 1461
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/view/ViewDebug$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/view/ViewDebug$$ExternalSyntheticLambda7;-><init>()V

    .line 1462
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ViewDebug$PropertyInfo;

    .line 1458
    return-object v0
.end method

.method public static blacklist deserializeMethodParameters([Ljava/lang/Object;[Ljava/lang/Class;Ljava/nio/ByteBuffer;)V
    .registers 12
    .param p0, "args"    # [Ljava/lang/Object;
    .param p2, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;
        }
    .end annotation

    .line 2028
    .local p1, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_8

    move v0, v3

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2030
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v1, p0

    if-ge v0, v1, :cond_147

    .line 2031
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v1

    .line 2032
    .local v1, "typeSignature":C
    const/16 v4, 0x5b

    if-ne v1, v4, :cond_1a

    move v4, v3

    goto :goto_1b

    :cond_1a
    move v4, v2

    .line 2033
    .local v4, "isArray":Z
    :goto_1b
    if-eqz v4, :cond_65

    .line 2034
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    .line 2035
    .local v5, "arrayType":C
    const/16 v6, 0x42

    if-ne v5, v6, :cond_42

    .line 2042
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 2043
    .local v6, "arrayLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-gt v6, v7, :cond_3c

    .line 2049
    new-array v7, v6, [B

    .line 2050
    .local v7, "byteArray":[B
    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2052
    const-class v8, [B

    aput-object v8, p1, v0

    .line 2053
    aput-object v7, p0, v0

    .line 2054
    .end local v5    # "arrayType":C
    .end local v6    # "arrayLength":I
    .end local v7    # "byteArray":[B
    goto/16 :goto_143

    .line 2046
    .restart local v5    # "arrayType":C
    .restart local v6    # "arrayLength":I
    :cond_3c
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 2037
    .end local v6    # "arrayLength":I
    :cond_42
    new-instance v2, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported array parameter type ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") to invoke view method @argument "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2055
    .end local v5    # "arrayType":C
    :cond_65
    sparse-switch v1, :sswitch_data_148

    .line 2097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", unrecognized type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ViewDebug"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance v2, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported parameter type ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") to invoke view method."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2057
    :sswitch_a9
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, p1, v0

    .line 2058
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-eqz v5, :cond_b5

    move v5, v3

    goto :goto_b6

    :cond_b5
    move v5, v2

    :goto_b6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, p0, v0

    .line 2059
    goto/16 :goto_143

    .line 2069
    :sswitch_be
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v5, p1, v0

    .line 2070
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, p0, v0

    .line 2071
    goto/16 :goto_143

    .line 2089
    :sswitch_ce
    const-class v5, Ljava/lang/String;

    aput-object v5, p1, v0

    .line 2090
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v5

    .line 2091
    .local v5, "stringUtf8ByteCount":I
    new-array v6, v5, [B

    .line 2092
    .local v6, "rawStringBuffer":[B
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2093
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v7, p0, v0

    .line 2094
    goto :goto_143

    .line 2077
    .end local v5    # "stringUtf8ByteCount":I
    .end local v6    # "rawStringBuffer":[B
    :sswitch_e9
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, p1, v0

    .line 2078
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, p0, v0

    .line 2079
    goto :goto_143

    .line 2073
    :sswitch_f8
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, p1, v0

    .line 2074
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p0, v0

    .line 2075
    goto :goto_143

    .line 2081
    :sswitch_107
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, p1, v0

    .line 2082
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, p0, v0

    .line 2083
    goto :goto_143

    .line 2085
    :sswitch_116
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v5, p1, v0

    .line 2086
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, p0, v0

    .line 2087
    goto :goto_143

    .line 2065
    :sswitch_125
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v5, p1, v0

    .line 2066
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, p0, v0

    .line 2067
    goto :goto_143

    .line 2061
    :sswitch_134
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v5, p1, v0

    .line 2062
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, p0, v0

    .line 2063
    nop

    .line 2030
    .end local v1    # "typeSignature":C
    .end local v4    # "isArray":Z
    :goto_143
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 2105
    .end local v0    # "i":I
    :cond_147
    return-void

    :sswitch_data_148
    .sparse-switch
        0x42 -> :sswitch_134
        0x43 -> :sswitch_125
        0x44 -> :sswitch_116
        0x46 -> :sswitch_107
        0x49 -> :sswitch_f8
        0x4a -> :sswitch_e9
        0x52 -> :sswitch_ce
        0x53 -> :sswitch_be
        0x5a -> :sswitch_a9
    .end sparse-switch
.end method

.method static greylist dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 548
    const-string v0, "DUMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 549
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    goto/16 :goto_94

    .line 550
    :cond_13
    const-string v0, "DUMP_THEME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 551
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V

    goto/16 :goto_94

    .line 552
    :cond_20
    const-string v0, "DUMP_ENCODED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 553
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dumpEncoded(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_94

    .line 554
    :cond_2c
    const-string v0, "CAPTURE_LAYERS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 555
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_94

    .line 557
    :cond_3d
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "params":[Ljava/lang/String;
    const-string v2, "CAPTURE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 559
    aget-object v1, v0, v1

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_94

    .line 560
    :cond_51
    const-string v2, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 561
    aget-object v1, v0, v1

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_94

    .line 562
    :cond_5f
    const-string v2, "INVALIDATE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 563
    aget-object v1, v0, v1

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_94

    .line 564
    :cond_6d
    const-string v2, "REQUEST_LAYOUT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 565
    aget-object v1, v0, v1

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_94

    .line 566
    :cond_7b
    const-string v2, "PROFILE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 567
    aget-object v1, v0, v1

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_94

    .line 568
    :cond_89
    const-string v1, "INVOKE_METHOD"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 569
    invoke-static {p0, p3, v0}, Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 572
    .end local v0    # "params":[Ljava/lang/String;
    :cond_94
    :goto_94
    return-void
.end method

.method public static greylist-max-r dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .registers 14
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1170
    const/4 v1, 0x0

    .line 1172
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, p3, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v3, 0x8000

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_50
    .catchall {:try_start_1 .. :try_end_11} :catchall_4b

    move-object v6, v0

    .line 1173
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v6, "out":Ljava/io/BufferedWriter;
    :try_start_12
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1174
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_28

    .line 1175
    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    .line 1176
    .local v5, "group":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_45
    .catchall {:try_start_12 .. :try_end_21} :catchall_3f

    const/4 v7, 0x0

    move v8, p1

    move v9, p2

    .end local p1    # "skipChildren":Z
    .end local p2    # "includeProperties":Z
    .local v8, "skipChildren":Z
    .local v9, "includeProperties":Z
    :try_start_24
    invoke-static/range {v4 .. v9}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    goto :goto_2a

    .line 1174
    .end local v5    # "group":Landroid/view/ViewGroup;
    .end local v8    # "skipChildren":Z
    .end local v9    # "includeProperties":Z
    .restart local p1    # "skipChildren":Z
    .restart local p2    # "includeProperties":Z
    :cond_28
    move v8, p1

    move v9, p2

    .line 1179
    .end local p1    # "skipChildren":Z
    .end local p2    # "includeProperties":Z
    .restart local v8    # "skipChildren":Z
    .restart local v9    # "includeProperties":Z
    :goto_2a
    const-string p1, "DONE."

    invoke-virtual {v6, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_32} :catch_3b
    .catchall {:try_start_24 .. :try_end_32} :catchall_37

    .line 1184
    .end local v0    # "view":Landroid/view/View;
    nop

    .line 1185
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    goto :goto_62

    .line 1184
    :catchall_37
    move-exception v0

    move-object p1, v0

    move-object v1, v6

    goto :goto_65

    .line 1181
    :catch_3b
    move-exception v0

    move-object p1, v0

    move-object v1, v6

    goto :goto_54

    .line 1184
    .end local v8    # "skipChildren":Z
    .end local v9    # "includeProperties":Z
    .restart local p1    # "skipChildren":Z
    .restart local p2    # "includeProperties":Z
    :catchall_3f
    move-exception v0

    move v8, p1

    move v9, p2

    move-object p1, v0

    move-object v1, v6

    .end local p1    # "skipChildren":Z
    .end local p2    # "includeProperties":Z
    .restart local v8    # "skipChildren":Z
    .restart local v9    # "includeProperties":Z
    goto :goto_65

    .line 1181
    .end local v8    # "skipChildren":Z
    .end local v9    # "includeProperties":Z
    .restart local p1    # "skipChildren":Z
    .restart local p2    # "includeProperties":Z
    :catch_45
    move-exception v0

    move v8, p1

    move v9, p2

    move-object p1, v0

    move-object v1, v6

    .end local p1    # "skipChildren":Z
    .end local p2    # "includeProperties":Z
    .restart local v8    # "skipChildren":Z
    .restart local v9    # "includeProperties":Z
    goto :goto_54

    .line 1184
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .end local v8    # "skipChildren":Z
    .end local v9    # "includeProperties":Z
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    .restart local p1    # "skipChildren":Z
    .restart local p2    # "includeProperties":Z
    :catchall_4b
    move-exception v0

    move v8, p1

    move v9, p2

    move-object p1, v0

    .end local p1    # "skipChildren":Z
    .end local p2    # "includeProperties":Z
    .restart local v8    # "skipChildren":Z
    .restart local v9    # "includeProperties":Z
    goto :goto_65

    .line 1181
    .end local v8    # "skipChildren":Z
    .end local v9    # "includeProperties":Z
    .restart local p1    # "skipChildren":Z
    .restart local p2    # "includeProperties":Z
    :catch_50
    move-exception v0

    move v8, p1

    move v9, p2

    move-object p1, v0

    .line 1182
    .end local p2    # "includeProperties":Z
    .restart local v8    # "skipChildren":Z
    .restart local v9    # "includeProperties":Z
    .local p1, "e":Ljava/lang/Exception;
    :goto_54
    :try_start_54
    const-string p2, "View"

    const-string v0, "Problem dumping the view:"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_63

    .line 1184
    nop

    .end local p1    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_61

    .line 1185
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1188
    :cond_61
    move-object v6, v1

    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    :goto_62
    return-void

    .line 1184
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :catchall_63
    move-exception v0

    move-object p1, v0

    :goto_65
    if-eqz v1, :cond_6a

    .line 1185
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1187
    :cond_6a
    throw p1
.end method

.method public static whitelist dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "view"    # Ljava/lang/Object;

    .line 1834
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1835
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1836
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->exportCapturedViewProperties(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    return-void
.end method

.method private static blacklist dumpEncoded(Landroid/view/View;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1216
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1218
    .local v0, "baOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v1, v0}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 1219
    .local v1, "encoder":Landroid/view/ViewHierarchyEncoder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewHierarchyEncoder;->setUserPropertiesEnabled(Z)V

    .line 1220
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    const-string/jumbo v3, "window:left"

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1221
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    const-string/jumbo v3, "window:top"

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1222
    invoke-virtual {p0, v1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 1223
    invoke-virtual {v1}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    .line 1224
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1225
    return-void
.end method

.method public static greylist-max-o dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1232
    const-string v0, "\n"

    const/4 v1, 0x0

    .line 1234
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_3
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v3, p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v4, 0x8000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v1, v2

    .line 1235
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1236
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1235
    invoke-static {v2, v3}, Landroid/view/ViewDebug;->getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;

    move-result-object v2

    .line 1237
    .local v2, "attributes":[Ljava/lang/String;
    if-eqz v2, :cond_63

    .line 1238
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    array-length v4, v2

    if-ge v3, v4, :cond_63

    .line 1239
    aget-object v4, v2, v3

    if-eqz v4, :cond_60

    .line 1240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1238
    :cond_60
    add-int/lit8 v3, v3, 0x2

    goto :goto_2b

    .line 1245
    .end local v3    # "i":I
    :cond_63
    const-string v0, "DONE."

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_72
    .catchall {:try_start_3 .. :try_end_6b} :catchall_70

    .line 1250
    .end local v2    # "attributes":[Ljava/lang/String;
    nop

    .line 1251
    :goto_6c
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_7e

    .line 1250
    :catchall_70
    move-exception v0

    goto :goto_7f

    .line 1247
    :catch_72
    move-exception v0

    .line 1248
    .local v0, "e":Ljava/lang/Exception;
    :try_start_73
    const-string v2, "View"

    const-string v3, "Problem dumping View Theme:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_70

    .line 1250
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_7e

    .line 1251
    goto :goto_6c

    .line 1254
    :cond_7e
    :goto_7e
    return-void

    .line 1250
    :goto_7f
    if-eqz v1, :cond_84

    .line 1251
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1253
    :cond_84
    throw v0
.end method

.method private static greylist-max-o dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .line 1434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x20

    if-ge v0, p3, :cond_b

    .line 1435
    :try_start_5
    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 1434
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1437
    .end local v0    # "i":I
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "className":Ljava/lang/String;
    const-string v2, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1439
    const-string v2, "ViewOverlay"

    move-object v0, v2

    .line 1441
    :cond_1e
    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1442
    const/16 v2, 0x40

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1443
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 1445
    if-eqz p4, :cond_39

    .line 1446
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1448
    :cond_39
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3c} :catch_3f

    .line 1452
    .end local v0    # "className":Ljava/lang/String;
    nop

    .line 1453
    const/4 v0, 0x1

    return v0

    .line 1449
    :catch_3f
    move-exception v0

    .line 1450
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "View"

    const-string v2, "Error while dumping hierarchy tree"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const/4 v1, 0x0

    return v1
.end method

.method private static greylist-max-o dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "skipChildren"    # Z
    .param p5, "includeProperties"    # Z

    .line 1338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewDebug;->cacheExportedProperties(Ljava/lang/Class;)V

    .line 1339
    if-nez p4, :cond_c

    .line 1340
    invoke-static {p1}, Landroid/view/ViewDebug;->cacheExportedPropertiesForChildren(Landroid/view/ViewGroup;)V

    .line 1343
    :cond_c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1345
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1d

    .line 1346
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v1

    goto :goto_1e

    .line 1345
    :cond_1d
    move-object v1, v0

    .line 1349
    .end local v0    # "handler":Landroid/os/Handler;
    .local v1, "handler":Landroid/os/Handler;
    :goto_1e
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2c

    .line 1350
    invoke-static/range {p0 .. p5}, Landroid/view/ViewDebug;->dumpViewHierarchyOnUIThread(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 1371
    return-void

    .line 1353
    :cond_2c
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v3, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "group":Landroid/view/ViewGroup;
    .end local p2    # "out":Ljava/io/BufferedWriter;
    .end local p3    # "level":I
    .end local p4    # "skipChildren":Z
    .end local p5    # "includeProperties":Z
    .local v4, "context":Landroid/content/Context;
    .local v5, "group":Landroid/view/ViewGroup;
    .local v6, "out":Ljava/io/BufferedWriter;
    .local v7, "level":I
    .local v8, "skipChildren":Z
    .local v9, "includeProperties":Z
    invoke-direct/range {v3 .. v9}, Landroid/view/ViewDebug$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "group":Landroid/view/ViewGroup;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .end local v7    # "level":I
    .end local v8    # "skipChildren":Z
    .end local v9    # "includeProperties":Z
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "group":Landroid/view/ViewGroup;
    .restart local p2    # "out":Ljava/io/BufferedWriter;
    .restart local p3    # "level":I
    .restart local p4    # "skipChildren":Z
    .restart local p5    # "includeProperties":Z
    const/4 v2, 0x0

    invoke-direct {v0, v3, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    move-object v2, v0

    .line 1356
    .local v2, "task":Ljava/util/concurrent/FutureTask;
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v3

    .line 1357
    .local v3, "msg":Landroid/os/Message;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1358
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1361
    :goto_49
    :try_start_49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1770

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_50} :catch_58
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_49 .. :try_end_50} :catch_51
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_49 .. :try_end_50} :catch_51

    .line 1362
    return-void

    .line 1365
    :catch_51
    move-exception v0

    .line 1367
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1363
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_58
    move-exception v0

    .line 1368
    goto :goto_49
.end method

.method private static blacklist dumpViewHierarchyOnUIThread(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "skipChildren"    # Z
    .param p5, "includeProperties"    # Z

    .line 1401
    move v5, p5

    invoke-static {p0, p1, p2, p3, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1402
    return-void

    .line 1405
    :cond_8
    if-eqz p4, :cond_b

    .line 1406
    return-void

    .line 1409
    :cond_b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1410
    .local v6, "count":I
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_11
    if-ge v7, v6, :cond_42

    .line 1411
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1412
    .local v8, "view":Landroid/view/View;
    instance-of v1, v8, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    .line 1413
    move-object v1, v8

    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchyOnUIThread(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    goto :goto_2c

    .line 1416
    :cond_27
    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, v8, p2, v1, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    .line 1418
    :goto_2c
    iget-object v1, v8, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v1, :cond_3e

    .line 1419
    invoke-virtual {v8}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v9

    .line 1420
    .local v9, "overlay":Landroid/view/ViewOverlay;
    iget-object v1, v9, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 1421
    .local v1, "overlayContainer":Landroid/view/ViewGroup;
    add-int/lit8 v3, p3, 0x2

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchyOnUIThread(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 1410
    .end local v1    # "overlayContainer":Landroid/view/ViewGroup;
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "overlay":Landroid/view/ViewOverlay;
    :cond_3e
    add-int/lit8 v7, v7, 0x1

    move v5, p5

    goto :goto_11

    .line 1425
    .end local v7    # "i":I
    :cond_42
    instance-of v0, p1, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v0, :cond_4e

    .line 1426
    move-object v0, p1

    check-cast v0, Landroid/view/ViewDebug$HierarchyHandler;

    add-int/lit8 v1, p3, 0x1

    invoke-interface {v0, p2, v1}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    .line 1428
    :cond_4e
    return-void
.end method

.method private static greylist-max-o dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1483
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1484
    return-void
.end method

.method private static greylist-max-o dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1489
    if-nez p1, :cond_19

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=4,null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1491
    return-void

    .line 1494
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1496
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->writeExportedProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1497
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1498
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1d

    .line 1499
    return-void
.end method

.method public static greylist-max-o dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1197
    new-instance v0, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v0, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 1198
    .local v0, "encoder":Landroid/view/ViewHierarchyEncoder;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1200
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/view/ViewDebug$3;

    invoke-direct {v2, v0, p0, v1}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/ViewHierarchyEncoder;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1210
    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1211
    invoke-virtual {v0}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    .line 1212
    return-void
.end method

.method private static blacklist exportCapturedViewProperties(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1794
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "null"

    if-nez p0, :cond_5

    .line 1795
    return-object v0

    .line 1798
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1800
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->getCapturedViewProperties(Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_7c

    aget-object v5, v2, v4

    .line 1802
    .local v5, "pi":Landroid/view/ViewDebug$PropertyInfo;, "Landroid/view/ViewDebug$PropertyInfo<Landroid/view/ViewDebug$CapturedViewProperty;*>;"
    :try_start_14
    invoke-virtual {v5, p0}, Landroid/view/ViewDebug$PropertyInfo;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1804
    .local v6, "methodValue":Ljava/lang/Object;
    iget-object v7, v5, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-interface {v7}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 1806
    iget-object v7, v5, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/view/ViewDebug;->exportCapturedViewProperties(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 1809
    :cond_41
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    if-eqz v6, :cond_69

    .line 1812
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1813
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    nop

    .end local v7    # "value":Ljava/lang/String;
    goto :goto_6c

    .line 1815
    :cond_69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    :goto_6c
    iget-object v7, v5, Landroid/view/ViewDebug$PropertyInfo;->valueSuffix:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_77} :catch_78

    .line 1821
    .end local v6    # "methodValue":Ljava/lang/Object;
    :goto_77
    goto :goto_79

    .line 1819
    :catch_78
    move-exception v6

    .line 1800
    .end local v5    # "pi":Landroid/view/ViewDebug$PropertyInfo;, "Landroid/view/ViewDebug$PropertyInfo<Landroid/view/ViewDebug$CapturedViewProperty;*>;"
    :goto_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1823
    :cond_7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "property"    # Landroid/view/ViewDebug$ExportedProperty;
    .param p3, "array"    # [I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1697
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v2

    .line 1698
    .local v2, "indexMapping":[Landroid/view/ViewDebug$IntToString;
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_f

    move v3, v5

    goto :goto_10

    :cond_f
    move v3, v4

    .line 1700
    .local v3, "hasIndexMapping":Z
    :goto_10
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v6

    .line 1701
    .local v6, "mapping":[Landroid/view/ViewDebug$IntToString;
    array-length v7, v6

    if-lez v7, :cond_19

    move v7, v5

    goto :goto_1a

    :cond_19
    move v7, v4

    .line 1703
    .local v7, "hasMapping":Z
    :goto_1a
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v8

    if-eqz v8, :cond_23

    if-eqz v0, :cond_23

    move v4, v5

    .line 1704
    .local v4, "resolveId":Z
    :cond_23
    array-length v5, v1

    .line 1706
    .local v5, "valuesCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_25
    if-ge v8, v5, :cond_76

    .line 1708
    const/4 v9, 0x0

    .line 1710
    .local v9, "value":Ljava/lang/String;
    aget v10, v1, v8

    .line 1712
    .local v10, "intValue":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 1713
    .local v11, "name":Ljava/lang/String;
    if-eqz v3, :cond_44

    .line 1714
    array-length v12, v2

    .line 1715
    .local v12, "mappingCount":I
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_32
    if-ge v13, v12, :cond_44

    .line 1716
    aget-object v14, v2, v13

    .line 1717
    .local v14, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v15

    if-ne v15, v8, :cond_41

    .line 1718
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v11

    .line 1719
    goto :goto_44

    .line 1715
    .end local v14    # "mapped":Landroid/view/ViewDebug$IntToString;
    :cond_41
    add-int/lit8 v13, v13, 0x1

    goto :goto_32

    .line 1724
    .end local v12    # "mappingCount":I
    .end local v13    # "k":I
    :cond_44
    :goto_44
    if-eqz v7, :cond_5a

    .line 1725
    array-length v12, v6

    .line 1726
    .restart local v12    # "mappingCount":I
    const/4 v13, 0x0

    .restart local v13    # "k":I
    :goto_48
    if-ge v13, v12, :cond_5a

    .line 1727
    aget-object v14, v6, v13

    .line 1728
    .restart local v14    # "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v15

    if-ne v15, v10, :cond_57

    .line 1729
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v9

    .line 1730
    goto :goto_5a

    .line 1726
    .end local v14    # "mapped":Landroid/view/ViewDebug$IntToString;
    :cond_57
    add-int/lit8 v13, v13, 0x1

    goto :goto_48

    .line 1735
    .end local v12    # "mappingCount":I
    .end local v13    # "k":I
    :cond_5a
    :goto_5a
    if-eqz v4, :cond_66

    .line 1736
    if-nez v9, :cond_6a

    invoke-static {v0, v10}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    check-cast v9, Ljava/lang/String;

    goto :goto_6a

    .line 1738
    :cond_66
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1741
    :cond_6a
    :goto_6a
    move-object/from16 v12, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-static {v12, v13, v11, v14, v9}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1706
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "intValue":I
    .end local v11    # "name":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_76
    move-object/from16 v12, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 1743
    .end local v8    # "j":I
    return-void
.end method

.method private static greylist-max-o exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .registers 13
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "mapping"    # [Landroid/view/ViewDebug$FlagToString;
    .param p2, "intValue"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1604
    array-length v0, p1

    .line 1605
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v0, :cond_30

    .line 1606
    aget-object v2, p1, v1

    .line 1607
    .local v2, "flagMapping":Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v2}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v3

    .line 1608
    .local v3, "ifTrue":Z
    invoke-interface {v2}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v4

    and-int/2addr v4, p2

    .line 1609
    .local v4, "maskResult":I
    invoke-interface {v2}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v5

    if-ne v4, v5, :cond_17

    const/4 v5, 0x1

    goto :goto_18

    :cond_17
    const/4 v5, 0x0

    .line 1610
    .local v5, "test":Z
    :goto_18
    if-eqz v5, :cond_1c

    if-nez v3, :cond_20

    :cond_1c
    if-nez v5, :cond_2d

    if-nez v3, :cond_2d

    .line 1611
    :cond_20
    invoke-interface {v2}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v6

    .line 1612
    .local v6, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 1613
    .local v7, "value":Ljava/lang/String;
    const-string v8, ""

    invoke-static {p0, p3, v6, v8, v7}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1605
    .end local v2    # "flagMapping":Landroid/view/ViewDebug$FlagToString;
    .end local v3    # "ifTrue":Z
    .end local v4    # "maskResult":I
    .end local v5    # "test":Z
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1616
    .end local v1    # "j":I
    :cond_30
    return-void
.end method

.method public static greylist-max-o findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 8
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .line 577
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2f

    .line 578
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "ids":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 580
    .local v1, "className":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 582
    .local v3, "hashCode":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 583
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2d

    .line 584
    move-object v2, v4

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, v1, v3}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 586
    .end local v0    # "ids":[Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "hashCode":I
    .end local v4    # "view":Landroid/view/View;
    :cond_2d
    nop

    .line 592
    return-object v2

    .line 588
    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 589
    .local v0, "id":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .registers 7
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .line 1291
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1292
    return-object p0

    .line 1295
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1296
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_49

    .line 1297
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1298
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_21

    .line 1299
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    .line 1300
    .local v3, "found":Landroid/view/View;
    if-eqz v3, :cond_20

    .line 1301
    return-object v3

    .line 1300
    .end local v3    # "found":Landroid/view/View;
    :cond_20
    goto :goto_28

    .line 1303
    :cond_21
    invoke-static {v2, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1304
    return-object v2

    .line 1303
    :cond_28
    :goto_28
    nop

    .line 1306
    iget-object v3, v2, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v3, :cond_38

    .line 1307
    iget-object v3, v2, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    iget-object v3, v3, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    .line 1309
    .restart local v3    # "found":Landroid/view/View;
    if-eqz v3, :cond_38

    .line 1310
    return-object v3

    .line 1313
    .end local v3    # "found":Landroid/view/View;
    :cond_38
    instance-of v3, v2, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v3, :cond_46

    .line 1314
    move-object v3, v2

    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    .line 1315
    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    .line 1316
    .restart local v3    # "found":Landroid/view/View;
    if-eqz v3, :cond_46

    .line 1317
    return-object v3

    .line 1296
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "found":Landroid/view/View;
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1321
    .end local v1    # "i":I
    :cond_49
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1654
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->getFlagMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$FlagToString;

    move-result-object v0

    .line 1655
    .local v0, "mapping":[Landroid/view/ViewDebug$FlagToString;
    if-nez v0, :cond_b

    .line 1656
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1658
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1659
    .local v1, "result":Ljava/lang/StringBuilder;
    array-length v2, v0

    .line 1660
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_12
    const/4 v4, 0x1

    if-ge v3, v2, :cond_3c

    .line 1661
    aget-object v5, v0, v3

    .line 1662
    .local v5, "flagMapping":Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v5}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v6

    .line 1663
    .local v6, "ifTrue":Z
    invoke-interface {v5}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v7

    and-int/2addr v7, p2

    .line 1664
    .local v7, "maskResult":I
    invoke-interface {v5}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v8

    if-ne v7, v8, :cond_27

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    .line 1665
    .local v4, "test":Z
    :goto_28
    if-eqz v4, :cond_39

    if-eqz v6, :cond_39

    .line 1666
    invoke-interface {v5}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v8

    .line 1667
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1660
    .end local v4    # "test":Z
    .end local v5    # "flagMapping":Landroid/view/ViewDebug$FlagToString;
    .end local v6    # "ifTrue":Z
    .end local v7    # "maskResult":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1670
    .end local v3    # "j":I
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4a

    .line 1671
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1673
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static greylist-max-o formatIntToHexString(I)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # I

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getCapturedViewProperties(Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "Landroid/view/ViewDebug$CapturedViewProperty;",
            "*>;"
        }
    .end annotation

    .line 1778
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/view/ViewDebug;->sCapturedViewProperties:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 1779
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/ViewDebug;->sCapturedViewProperties:Ljava/util/HashMap;

    .line 1781
    :cond_b
    sget-object v0, Landroid/view/ViewDebug;->sCapturedViewProperties:Ljava/util/HashMap;

    .line 1784
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Landroid/view/ViewDebug$PropertyInfo<Landroid/view/ViewDebug$CapturedViewProperty;*>;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/ViewDebug$PropertyInfo;

    .line 1785
    .local v1, "infos":[Landroid/view/ViewDebug$PropertyInfo;, "[Landroid/view/ViewDebug$PropertyInfo<Landroid/view/ViewDebug$CapturedViewProperty;*>;"
    if-nez v1, :cond_26

    .line 1786
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const-class v4, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-static {v2, v3, v4}, Landroid/view/ViewDebug;->convertToPropertyInfos([Ljava/lang/reflect/Method;[Ljava/lang/reflect/Field;Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object v1

    .line 1788
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    :cond_26
    return-object v1
.end method

.method private static blacklist getExportedProperties(Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "Landroid/view/ViewDebug$ExportedProperty;",
            "*>;"
        }
    .end annotation

    .line 1466
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 1467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    .line 1469
    :cond_b
    sget-object v0, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    .line 1470
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Landroid/view/ViewDebug$PropertyInfo<Landroid/view/ViewDebug$ExportedProperty;*>;>;"
    sget-object v1, Landroid/view/ViewDebug;->sExportProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/ViewDebug$PropertyInfo;

    .line 1472
    .local v1, "properties":[Landroid/view/ViewDebug$PropertyInfo;, "[Landroid/view/ViewDebug$PropertyInfo<Landroid/view/ViewDebug$ExportedProperty;*>;"
    if-nez v1, :cond_28

    .line 1473
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1474
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const-class v4, Landroid/view/ViewDebug$ExportedProperty;

    .line 1473
    invoke-static {v2, v3, v4}, Landroid/view/ViewDebug;->convertToPropertyInfos([Ljava/lang/reflect/Method;[Ljava/lang/reflect/Field;Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object v1

    .line 1475
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    :cond_28
    return-object v1
.end method

.method private static greylist-max-o getFlagMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$FlagToString;
    .registers 4
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/view/ViewDebug$FlagToString;"
        }
    .end annotation

    .line 1678
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$ExportedProperty;

    .line 1679
    invoke-interface {v0}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1678
    return-object v0

    .line 1680
    :catch_11
    move-exception v0

    .line 1681
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o getMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$IntToString;
    .registers 4
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/view/ViewDebug$IntToString;"
        }
    .end annotation

    .line 1687
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v0}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 1688
    :catch_11
    move-exception v0

    .line 1689
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;
    .registers 13
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1267
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1268
    .local v0, "outValue":Landroid/util/TypedValue;
    const-string v1, "null"

    .line 1269
    .local v1, "nullString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1270
    .local v2, "i":I
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getAllAttributes()[I

    move-result-object v3

    .line 1271
    .local v3, "attributes":[I
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 1272
    .local v4, "data":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_47

    aget v7, v3, v6

    .line 1274
    .local v7, "attributeId":I
    :try_start_17
    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    .line 1275
    add-int/lit8 v8, v2, 0x1

    const/4 v9, 0x1

    invoke-virtual {p1, v7, v0, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 1276
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_30

    :cond_2f
    move-object v10, v1

    :goto_30
    aput-object v10, v4, v8

    .line 1277
    add-int/lit8 v2, v2, 0x2

    .line 1280
    iget v8, v0, Landroid/util/TypedValue;->type:I

    if-ne v8, v9, :cond_42

    .line 1281
    add-int/lit8 v8, v2, -0x1

    iget v9, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_42} :catch_43

    .line 1285
    :cond_42
    goto :goto_44

    .line 1283
    :catch_43
    move-exception v8

    .line 1272
    .end local v7    # "attributeId":I
    :goto_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 1287
    :cond_47
    return-object v4
.end method

.method public static greylist getViewInstanceCount()J
    .registers 2

    .line 480
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-r getViewRootImplCount()J
    .registers 2

    .line 492
    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "integer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1629
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->getMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$IntToString;

    move-result-object v0

    .line 1630
    .local v0, "mapping":[Landroid/view/ViewDebug$IntToString;
    if-nez v0, :cond_b

    .line 1631
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1633
    :cond_b
    array-length v1, v0

    .line 1634
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_d
    if-ge v2, v1, :cond_1f

    .line 1635
    aget-object v3, v0, v2

    .line 1636
    .local v3, "map":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v3}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v4

    if-ne v4, p2, :cond_1c

    .line 1637
    invoke-interface {v3}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1634
    .end local v3    # "map":Landroid/view/ViewDebug$IntToString;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1640
    .end local v2    # "j":I
    :cond_1f
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o invalidate(Landroid/view/View;Ljava/lang/String;)V
    .registers 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .line 596
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 597
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 598
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 600
    :cond_9
    return-void
.end method

.method private static blacklist invokeViewMethod(Landroid/view/View;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .registers 10
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1842
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v2, 0x8000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1844
    .local v0, "out":Ljava/io/BufferedWriter;
    :try_start_d
    array-length v1, p2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5f

    .line 1847
    const/4 v1, 0x0

    aget-object v3, p2, v1

    invoke-static {p0, v3}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 1848
    .local v3, "targetView":Landroid/view/View;
    if-eqz v3, :cond_44

    .line 1851
    const/4 v4, 0x1

    aget-object v4, p2, v4

    .line 1852
    .local v4, "method":Ljava/lang/String;
    array-length v5, p2

    if-ge v5, v2, :cond_23

    .line 1853
    new-array v1, v1, [B

    goto :goto_29

    .line 1854
    :cond_23
    aget-object v1, p2, v2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1852
    :goto_29
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1855
    .local v1, "args":Ljava/nio/ByteBuffer;
    invoke-static {v3, v4, v1}, Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/lang/String;Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    .line 1856
    .local v5, "result":[B
    const-string v6, "1"

    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 1858
    invoke-static {v5, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .end local v1    # "args":Ljava/nio/ByteBuffer;
    .end local v3    # "targetView":Landroid/view/View;
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "result":[B
    goto :goto_7c

    .line 1849
    .restart local v3    # "targetView":Landroid/view/View;
    :cond_44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v1, p2, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":Ljava/io/BufferedWriter;
    .end local p0    # "root":Landroid/view/View;
    .end local p1    # "clientStream":Ljava/io/OutputStream;
    .end local p2    # "params":[Ljava/lang/String;
    throw v2

    .line 1845
    .end local v3    # "targetView":Landroid/view/View;
    .restart local v0    # "out":Ljava/io/BufferedWriter;
    .restart local p0    # "root":Landroid/view/View;
    .restart local p1    # "clientStream":Ljava/io/OutputStream;
    .restart local p2    # "params":[Ljava/lang/String;
    :cond_5f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing parameter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":Ljava/io/BufferedWriter;
    .end local p0    # "root":Landroid/view/View;
    .end local p1    # "clientStream":Ljava/io/OutputStream;
    .end local p2    # "params":[Ljava/lang/String;
    throw v1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_67} :catch_69
    .catchall {:try_start_d .. :try_end_67} :catchall_67

    .line 1866
    .restart local v0    # "out":Ljava/io/BufferedWriter;
    .restart local p0    # "root":Landroid/view/View;
    .restart local p1    # "clientStream":Ljava/io/OutputStream;
    .restart local p2    # "params":[Ljava/lang/String;
    :catchall_67
    move-exception v1

    goto :goto_81

    .line 1860
    :catch_69
    move-exception v1

    .line 1861
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6a
    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 1863
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_7c
    .catchall {:try_start_6a .. :try_end_7c} :catchall_67

    .line 1866
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1867
    nop

    .line 1868
    return-void

    .line 1866
    :goto_81
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1867
    throw v1
.end method

.method public static blacklist invokeViewMethod(Landroid/view/View;Ljava/lang/String;Ljava/nio/ByteBuffer;)[B
    .registers 11
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;
        }
    .end annotation

    .line 1883
    const-string v0, "ViewDebug"

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1884
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 1885
    .local v2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    .local v1, "args":[Ljava/lang/Object;
    goto :goto_1a

    .line 1887
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v2    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_e
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 1888
    .local v1, "nArgs":I
    new-array v2, v1, [Ljava/lang/Class;

    .line 1889
    .restart local v2    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v3, v1, [Ljava/lang/Object;

    .line 1891
    .local v3, "args":[Ljava/lang/Object;
    invoke-static {v3, v2, p2}, Landroid/view/ViewDebug;->deserializeMethodParameters([Ljava/lang/Object;[Ljava/lang/Class;Ljava/nio/ByteBuffer;)V

    move-object v1, v3

    .line 1896
    .end local v3    # "args":[Ljava/lang/Object;
    .local v1, "args":[Ljava/lang/Object;
    :goto_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_22} :catch_78

    .line 1901
    .local v3, "method":Ljava/lang/reflect/Method;
    nop

    .line 1905
    :try_start_23
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v5, Landroid/view/ViewDebug$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3, p0, v1}, Landroid/view/ViewDebug$$ExternalSyntheticLambda3;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;)V

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1906
    .local v4, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1907
    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v5

    .line 1908
    .local v5, "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 1909
    .local v6, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/view/ViewDebug;->serializeReturnValue(Ljava/lang/Class;Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_40} :catch_41

    return-object v0

    .line 1910
    .end local v4    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_41
    move-exception v4

    .line 1911
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while invoking method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1913
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_72

    .line 1914
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1916
    :cond_72
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1897
    .end local v0    # "msg":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_78
    move-exception v3

    .line 1898
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    new-instance v0, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1900
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .line 1325
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, p2, :cond_22

    .line 1326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "viewClassName":Ljava/lang/String;
    const-string v1, "ViewOverlay"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1328
    const-string v1, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1330
    :cond_1d
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1333
    .end local v0    # "viewClassName":Ljava/lang/String;
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$convertToPropertyInfos$6(Ljava/lang/Class;Ljava/lang/reflect/Method;)Landroid/view/ViewDebug$PropertyInfo;
    .registers 3
    .param p0, "property"    # Ljava/lang/Class;
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .line 1458
    invoke-static {p1, p0}, Landroid/view/ViewDebug$PropertyInfo;->forMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Landroid/view/ViewDebug$PropertyInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$convertToPropertyInfos$7(Ljava/lang/Class;Ljava/lang/reflect/Field;)Landroid/view/ViewDebug$PropertyInfo;
    .registers 3
    .param p0, "property"    # Ljava/lang/Class;
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .line 1459
    invoke-static {p1, p0}, Landroid/view/ViewDebug$PropertyInfo;->forField(Ljava/lang/reflect/Field;Ljava/lang/Class;)Landroid/view/ViewDebug$PropertyInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$convertToPropertyInfos$8(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "i"    # Ljava/lang/Object;

    .line 1461
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic blacklist lambda$convertToPropertyInfos$9(I)[Landroid/view/ViewDebug$PropertyInfo;
    .registers 2
    .param p0, "x$0"    # I

    .line 1462
    new-array v0, p0, [Landroid/view/ViewDebug$PropertyInfo;

    return-object v0
.end method

.method static synthetic blacklist lambda$dumpViewHierarchy$5(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "skipChildren"    # Z
    .param p5, "includeProperties"    # Z

    .line 1354
    invoke-static/range {p0 .. p5}, Landroid/view/ViewDebug;->dumpViewHierarchyOnUIThread(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    return-void
.end method

.method static synthetic blacklist lambda$invokeViewMethod$10(Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1905
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$performViewCapture$4(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .registers 7
    .param p0, "captureView"    # Landroid/view/View;
    .param p1, "cache"    # [Landroid/graphics/Bitmap;
    .param p2, "skipChildren"    # Z
    .param p3, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 1139
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1140
    new-instance v0, Landroid/view/ViewDebug$HardwareCanvasProvider;

    invoke-direct {v0}, Landroid/view/ViewDebug$HardwareCanvasProvider;-><init>()V

    goto :goto_11

    :cond_c
    new-instance v0, Landroid/view/ViewDebug$SoftwareCanvasProvider;

    invoke-direct {v0}, Landroid/view/ViewDebug$SoftwareCanvasProvider;-><init>()V

    .line 1141
    .local v0, "provider":Landroid/view/ViewDebug$CanvasProvider;
    :goto_11
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_18} :catch_1b
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    .line 1145
    .end local v0    # "provider":Landroid/view/ViewDebug$CanvasProvider;
    goto :goto_24

    :catchall_19
    move-exception v0

    goto :goto_29

    .line 1142
    :catch_1b
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1c
    const-string v1, "View"

    const-string v2, "Out of memory for bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 1145
    nop

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :goto_24
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1146
    nop

    .line 1147
    return-void

    .line 1145
    :goto_29
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1146
    throw v0
.end method

.method static synthetic blacklist lambda$profileViewDraw$1(Landroid/view/View;Landroid/graphics/RecordingCanvas;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 711
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic blacklist lambda$profileViewDraw$2(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 720
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic blacklist lambda$profileViewLayout$0(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 699
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v1, p0, Landroid/view/View;->mTop:I

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method static synthetic blacklist lambda$profileViewOperation$3(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 8
    .param p0, "operation"    # Landroid/view/ViewDebug$ViewOperation;
    .param p1, "duration"    # [J
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 740
    :try_start_0
    invoke-interface {p0}, Landroid/view/ViewDebug$ViewOperation;->pre()V

    .line 741
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    .line 743
    .local v0, "start":J
    invoke-interface {p0}, Landroid/view/ViewDebug$ViewOperation;->run()V

    .line 744
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/4 v4, 0x0

    aput-wide v2, p1, v4
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_17

    .line 746
    .end local v0    # "start":J
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 747
    nop

    .line 748
    return-void

    .line 746
    :catchall_17
    move-exception v0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 747
    throw v0
.end method

.method public static greylist-max-o outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "target"    # Landroid/view/View;

    .line 840
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 841
    return-void
.end method

.method private static greylist-max-o outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 835
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 836
    return-void
.end method

.method private static greylist-max-o performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "captureView"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z

    .line 1133
    if-eqz p0, :cond_3d

    .line 1134
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1135
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v1, [Landroid/graphics/Bitmap;

    .line 1137
    .local v1, "cache":[Landroid/graphics/Bitmap;
    new-instance v2, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v1, p1, v0}, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;-><init>(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1150
    :try_start_12
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1770

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1151
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1c} :catch_1d

    return-object v2

    .line 1152
    :catch_1d
    move-exception v2

    .line 1153
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not complete the capture of the view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1158
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v1    # "cache":[Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 8
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 617
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 619
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v4, 0x8000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v1, v2

    .line 621
    if-eqz v0, :cond_19

    .line 622
    invoke-static {v0, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    goto :goto_21

    .line 624
    :cond_19
    const-string v2, "-1 -1 -1"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 627
    :goto_21
    const-string v2, "DONE."

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_30
    .catchall {:try_start_5 .. :try_end_29} :catchall_2e

    .line 632
    nop

    .line 633
    :goto_2a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_3c

    .line 632
    :catchall_2e
    move-exception v2

    goto :goto_3d

    .line 629
    :catch_30
    move-exception v2

    .line 630
    .local v2, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v3, "View"

    const-string v4, "Problem profiling the view:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    .line 632
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3c

    .line 633
    goto :goto_2a

    .line 636
    :cond_3c
    :goto_3c
    return-void

    .line 632
    :goto_3d
    if-eqz v1, :cond_42

    .line 633
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 635
    :cond_42
    throw v2
.end method

.method private static blacklist profileViewAndChildren(Landroid/view/View;Landroid/graphics/RenderNode;Ljava/io/BufferedWriter;Z)V
    .registers 15
    .param p0, "view"    # Landroid/view/View;
    .param p1, "node"    # Landroid/graphics/RenderNode;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    const-wide/16 v0, 0x0

    if-nez p3, :cond_d

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_b

    goto :goto_d

    .line 649
    :cond_b
    move-wide v2, v0

    goto :goto_11

    :cond_d
    :goto_d
    invoke-static {p0}, Landroid/view/ViewDebug;->profileViewMeasure(Landroid/view/View;)J

    move-result-wide v2

    .line 651
    .local v2, "durationMeasure":J
    :goto_11
    if-nez p3, :cond_1c

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_1a

    goto :goto_1c

    .line 652
    :cond_1a
    move-wide v4, v0

    goto :goto_20

    :cond_1c
    :goto_1c
    invoke-static {p0}, Landroid/view/ViewDebug;->profileViewLayout(Landroid/view/View;)J

    move-result-wide v4

    .line 654
    .local v4, "durationLayout":J
    :goto_20
    const/16 v6, 0x20

    if-nez p3, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v7

    if-eqz v7, :cond_31

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_30

    goto :goto_31

    .line 655
    :cond_30
    goto :goto_35

    :cond_31
    :goto_31
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->profileViewDraw(Landroid/view/View;Landroid/graphics/RenderNode;)J

    move-result-wide v0

    .line 657
    .local v0, "durationDraw":J
    :goto_35
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 659
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 661
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 663
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_6c

    .line 664
    move-object v6, p0

    check-cast v6, Landroid/view/ViewGroup;

    .line 665
    .local v6, "group":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 666
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5f
    if-ge v8, v7, :cond_6c

    .line 667
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, p1, p2, v10}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Landroid/graphics/RenderNode;Ljava/io/BufferedWriter;Z)V

    .line 666
    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    .line 670
    .end local v6    # "group":Landroid/view/ViewGroup;
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_6c
    return-void
.end method

.method public static greylist-max-o profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    const-string v0, "ViewDebug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    .line 642
    .local v0, "node":Landroid/graphics/RenderNode;
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Landroid/graphics/RenderNode;Ljava/io/BufferedWriter;Z)V

    .line 643
    return-void
.end method

.method private static blacklist profileViewDraw(Landroid/view/View;Landroid/graphics/RenderNode;)J
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 703
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 704
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_d

    .line 705
    const-wide/16 v1, 0x0

    return-wide v1

    .line 708
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 709
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v1

    .line 711
    .local v1, "canvas":Landroid/graphics/RecordingCanvas;
    :try_start_1b
    new-instance v2, Landroid/view/ViewDebug$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroid/view/ViewDebug$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Landroid/graphics/RecordingCanvas;)V

    invoke-static {p0, v2}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v2
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    .line 713
    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 711
    return-wide v2

    .line 713
    :catchall_28
    move-exception v2

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 714
    throw v2

    .line 716
    .end local v1    # "canvas":Landroid/graphics/RecordingCanvas;
    :cond_2d
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 718
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 720
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    :try_start_3d
    new-instance v4, Landroid/view/ViewDebug$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Landroid/view/ViewDebug$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-static {p0, v4}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v4
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_4d

    .line 722
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 723
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 720
    return-wide v4

    .line 722
    :catchall_4d
    move-exception v4

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 723
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 724
    throw v4
.end method

.method private static greylist-max-o profileViewLayout(Landroid/view/View;)J
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 698
    new-instance v0, Landroid/view/ViewDebug$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/ViewDebug$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static greylist-max-o profileViewMeasure(Landroid/view/View;)J
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 673
    new-instance v0, Landroid/view/ViewDebug$2;

    invoke-direct {v0, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static greylist-max-o profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .registers 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "operation"    # Landroid/view/ViewDebug$ViewOperation;

    .line 735
    const-string v0, "Could not complete the profiling of the view "

    const-string v1, "View"

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 736
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v3, v3, [J

    .line 738
    .local v3, "duration":[J
    new-instance v4, Landroid/view/ViewDebug$$ExternalSyntheticLambda9;

    invoke-direct {v4, p1, v3, v2}, Landroid/view/ViewDebug$$ExternalSyntheticLambda9;-><init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 751
    const-wide/16 v4, -0x1

    :try_start_16
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1770

    invoke-virtual {v2, v7, v8, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 752
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_34} :catch_3a

    .line 753
    return-wide v4

    .line 759
    :cond_35
    nop

    .line 761
    const/4 v0, 0x0

    aget-wide v0, v3, v0

    return-wide v0

    .line 755
    :catch_3a
    move-exception v6

    .line 756
    .local v6, "e":Ljava/lang/InterruptedException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 758
    return-wide v4
.end method

.method private static greylist-max-o requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .line 603
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 604
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_e

    .line 605
    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 611
    :cond_e
    return-void
.end method

.method static greylist-max-o resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 1747
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1748
    .local v0, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_3f

    .line 1750
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1751
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_25} :catch_26

    .local v1, "fieldValue":Ljava/lang/Object;
    goto :goto_3e

    .line 1752
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :catch_26
    move-exception v1

    .line 1753
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1754
    .local v1, "fieldValue":Ljava/lang/Object;
    :goto_3e
    goto :goto_41

    .line 1756
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :cond_3f
    const-string v1, "NO_ID"

    .line 1758
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :goto_41
    return-object v1
.end method

.method public static blacklist serializeReturnValue(Ljava/lang/Class;Ljava/lang/Object;)[B
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2114
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2115
    .local v0, "byteOutStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2117
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    const/16 v3, 0x42

    if-eqz v2, :cond_4f

    .line 2118
    const-class v2, [B

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2123
    move-object v2, p1

    check-cast v2, [B

    .line 2124
    .local v2, "byteArray":[B
    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2125
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2126
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2127
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 2128
    .end local v2    # "byteArray":[B
    goto/16 :goto_12f

    .line 2120
    :cond_30
    new-instance v2, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported array return type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/ViewDebug$ViewMethodInvocationSerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2128
    :cond_4f
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 2129
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2130
    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    goto/16 :goto_12f

    .line 2131
    :cond_68
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 2132
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2133
    move-object v2, p1

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_12f

    .line 2134
    :cond_7f
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 2135
    const/16 v2, 0x43

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2136
    move-object v2, p1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto/16 :goto_12f

    .line 2137
    :cond_98
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 2138
    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2139
    move-object v2, p1

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto/16 :goto_12f

    .line 2140
    :cond_b1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 2141
    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2142
    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_12f

    .line 2143
    :cond_c9
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 2144
    const/16 v2, 0x4a

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2145
    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_12f

    .line 2146
    :cond_e1
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 2147
    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2148
    move-object v2, p1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_12f

    .line 2149
    :cond_f9
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 2150
    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2151
    move-object v2, p1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_12f

    .line 2152
    :cond_111
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 2153
    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2154
    if-eqz p1, :cond_124

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    goto :goto_126

    :cond_124
    const-string v2, ""

    :goto_126
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_12f

    .line 2156
    :cond_12a
    const/16 v2, 0x56

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2159
    :goto_12f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1925
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1926
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1927
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_24

    .line 1932
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1934
    new-instance v2, Landroid/view/ViewDebug$4;

    invoke-direct {v2, p0, v0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1940
    return-void

    .line 1928
    :cond_24
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only integer layout parameters can be set. Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1929
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .registers 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    return-void
.end method

.method public static whitelist startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .registers 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    return-void
.end method

.method public static greylist startRenderingCommandsCapture(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Ljava/lang/AutoCloseable;
    .registers 7
    .param p0, "tree"    # Landroid/view/View;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/OutputStream;",
            ">;)",
            "Ljava/lang/AutoCloseable;"
        }
    .end annotation

    .line 1084
    .local p2, "callback":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/OutputStream;>;"
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1085
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_24

    .line 1088
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    .line 1092
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 1093
    .local v1, "renderer":Landroid/graphics/HardwareRenderer;
    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 1094
    new-instance v3, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;

    invoke-direct {v3, v1, p2, p1, v2}, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;-><init>(Landroid/graphics/HardwareRenderer;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Landroid/view/ViewDebug-IA;)V

    return-object v3

    .line 1096
    :cond_1b
    return-object v2

    .line 1089
    .end local v1    # "renderer":Landroid/graphics/HardwareRenderer;
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called on the wrong thread. Must be called on the thread that owns the given View"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1086
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given view isn\'t attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist startRenderingCommandsCapture(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/lang/AutoCloseable;
    .registers 7
    .param p0, "tree"    # Landroid/view/View;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function<",
            "Landroid/graphics/Picture;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/AutoCloseable;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 947
    .local p2, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/graphics/Picture;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 948
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_24

    .line 951
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    .line 955
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 956
    .local v1, "renderer":Landroid/graphics/HardwareRenderer;
    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 957
    new-instance v3, Landroid/view/ViewDebug$PictureCallbackHandler;

    invoke-direct {v3, v1, p2, p1, v2}, Landroid/view/ViewDebug$PictureCallbackHandler;-><init>(Landroid/graphics/HardwareRenderer;Ljava/util/function/Function;Ljava/util/concurrent/Executor;Landroid/view/ViewDebug-IA;)V

    return-object v3

    .line 959
    :cond_1b
    return-object v2

    .line 952
    .end local v1    # "renderer":Landroid/graphics/HardwareRenderer;
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called on the wrong thread. Must be called on the thread that owns the given View"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 949
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given view isn\'t attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist stopHierarchyTracing()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    return-void
.end method

.method public static whitelist stopRecyclerTracing()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 517
    return-void
.end method

.method public static whitelist trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$HierarchyTraceType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 525
    return-void
.end method

.method public static varargs whitelist trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$RecyclerTraceType;
    .param p2, "parameters"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    return-void
.end method

.method private static greylist-max-o writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1593
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1596
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1597
    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1598
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 1599
    return-void
.end method

.method private static blacklist writeExportedProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1507
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v7, p4

    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedProperties(Ljava/lang/Class;)[Landroid/view/ViewDebug$PropertyInfo;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v10, v0

    :goto_9
    if-ge v10, v9, :cond_1ef

    aget-object v11, v8, v10

    .line 1511
    .local v11, "info":Landroid/view/ViewDebug$PropertyInfo;, "Landroid/view/ViewDebug$PropertyInfo<Landroid/view/ViewDebug$ExportedProperty;*>;"
    move-object/from16 v12, p1

    :try_start_f
    invoke-virtual {v11, v12}, Landroid/view/ViewDebug$PropertyInfo;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_1e5

    .line 1515
    .local v0, "value":Ljava/lang/Object;
    nop

    .line 1518
    iget-object v1, v11, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v1, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v1}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v11, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v2, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_40

    :cond_3e
    const-string v1, ""

    :goto_40
    move-object v13, v1

    .line 1520
    .local v13, "categoryPrefix":Ljava/lang/String;
    iget-object v1, v11, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x5f

    if-eq v1, v2, :cond_104

    iget-object v1, v11, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_55

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    goto/16 :goto_108

    .line 1560
    :cond_55
    iget-object v1, v11, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    const-class v2, [I

    if-ne v1, v2, :cond_89

    .line 1561
    move-object v4, v0

    check-cast v4, [I

    .line 1562
    .local v4, "array":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1563
    .local v5, "valuePrefix":Ljava/lang/String;
    iget-object v1, v11, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    move-object v3, v1

    check-cast v3, Landroid/view/ViewDebug$ExportedProperty;

    iget-object v6, v11, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1566
    goto/16 :goto_1eb

    .line 1567
    .end local v4    # "array":[I
    .end local v5    # "valuePrefix":Ljava/lang/String;
    :cond_89
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v11, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    if-ne v3, v4, :cond_d4

    .line 1568
    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    .line 1569
    .local v3, "array":[Ljava/lang/String;
    iget-object v4, v11, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v4

    if-eqz v4, :cond_1eb

    if-eqz v3, :cond_1eb

    .line 1570
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_a3
    array-length v5, v3

    if-ge v4, v5, :cond_d2

    .line 1571
    aget-object v5, v3, v4

    if-eqz v5, :cond_cf

    .line 1572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v3, v4

    iget-object v14, v11, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    .line 1573
    add-int/lit8 v15, v4, 0x1

    aget-object v15, v3, v15

    if-nez v15, :cond_c8

    const-string v15, "null"

    goto :goto_cc

    :cond_c8
    add-int/lit8 v15, v4, 0x1

    aget-object v15, v3, v15

    .line 1572
    :goto_cc
    invoke-static {v2, v5, v6, v14, v15}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1570
    :cond_cf
    add-int/lit8 v4, v4, 0x2

    goto :goto_a3

    .end local v4    # "j":I
    :cond_d2
    goto/16 :goto_1eb

    .line 1579
    .end local v3    # "array":[Ljava/lang/String;
    :cond_d4
    iget-object v3, v11, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_1cc

    .line 1580
    iget-object v3, v11, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v3, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v3

    if-eqz v3, :cond_1cc

    .line 1581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1582
    goto/16 :goto_1eb

    .line 1520
    :cond_104
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1521
    :goto_108
    iget-object v4, v11, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v4

    if-eqz v4, :cond_121

    if-eqz v1, :cond_121

    .line 1522
    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1523
    .local v3, "id":I
    invoke-static {v1, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    .line 1525
    .end local v3    # "id":I
    goto/16 :goto_1cc

    :cond_121
    iget-object v4, v11, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->formatToHexString()Z

    move-result v4

    if-eqz v4, :cond_164

    .line 1526
    iget-object v3, v11, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_13e

    .line 1527
    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1cc

    .line 1528
    :cond_13e
    iget-object v3, v11, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_1cc

    .line 1529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Byte;

    .line 1530
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1cc

    .line 1533
    :cond_164
    iget-object v4, v11, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v4

    .line 1534
    .local v4, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v5, v4

    if-lez v5, :cond_194

    .line 1535
    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1536
    .local v5, "intValue":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v11, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1538
    .local v3, "valuePrefix":Ljava/lang/String;
    invoke-static {v2, v4, v5, v3}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1541
    .end local v3    # "valuePrefix":Ljava/lang/String;
    .end local v5    # "intValue":I
    :cond_194
    iget-object v3, v11, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    check-cast v3, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v3

    .line 1542
    .local v3, "mapping":[Landroid/view/ViewDebug$IntToString;
    array-length v5, v3

    if-lez v5, :cond_1c9

    .line 1543
    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1544
    .restart local v5    # "intValue":I
    const/4 v6, 0x0

    .line 1545
    .local v6, "mapped":Z
    array-length v14, v3

    .line 1546
    .local v14, "mappingCount":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1a9
    if-ge v15, v14, :cond_1c0

    .line 1547
    aget-object v16, v3, v15

    .line 1548
    .local v16, "mapper":Landroid/view/ViewDebug$IntToString;
    move-object/from16 v17, v0

    .end local v0    # "value":Ljava/lang/Object;
    .local v17, "value":Ljava/lang/Object;
    invoke-interface/range {v16 .. v16}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v0

    if-ne v0, v5, :cond_1bb

    .line 1549
    invoke-interface/range {v16 .. v16}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v0

    .line 1550
    .end local v17    # "value":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    const/4 v6, 0x1

    .line 1551
    goto :goto_1c2

    .line 1546
    .end local v0    # "value":Ljava/lang/Object;
    .end local v16    # "mapper":Landroid/view/ViewDebug$IntToString;
    .restart local v17    # "value":Ljava/lang/Object;
    :cond_1bb
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    goto :goto_1a9

    .end local v17    # "value":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1c0
    move-object/from16 v17, v0

    .line 1555
    .end local v15    # "j":I
    :goto_1c2
    if-nez v6, :cond_1cb

    .line 1556
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1cb

    .line 1542
    .end local v5    # "intValue":I
    .end local v6    # "mapped":Z
    .end local v14    # "mappingCount":I
    :cond_1c9
    move-object/from16 v17, v0

    .line 1559
    .end local v3    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v4    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    :cond_1cb
    :goto_1cb
    nop

    .line 1586
    :cond_1cc
    :goto_1cc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v11, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    iget-object v5, v11, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v0}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1eb

    .line 1512
    .end local v0    # "value":Ljava/lang/Object;
    .end local v13    # "categoryPrefix":Ljava/lang/String;
    :catch_1e5
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1514
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 1507
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "info":Landroid/view/ViewDebug$PropertyInfo;, "Landroid/view/ViewDebug$PropertyInfo<Landroid/view/ViewDebug$ExportedProperty;*>;"
    :cond_1eb
    :goto_1eb
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 1588
    :cond_1ef
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v2, p2

    return-void
.end method

.method private static greylist-max-o writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .registers 7
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1762
    const-string v0, ","

    if-eqz p1, :cond_38

    .line 1763
    const-string v1, "[EXCEPTION]"

    .line 1765
    .local v1, "output":Ljava/lang/String;
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "\\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_25

    .line 1767
    .end local v1    # "output":Ljava/lang/String;
    .local v2, "output":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1770
    nop

    .line 1771
    .end local v2    # "output":Ljava/lang/String;
    goto :goto_3d

    .line 1767
    .restart local v1    # "output":Ljava/lang/String;
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1770
    throw v2

    .line 1772
    .end local v1    # "output":Ljava/lang/String;
    :cond_38
    const-string v0, "4,null"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1774
    :goto_3d
    return-void
.end method
