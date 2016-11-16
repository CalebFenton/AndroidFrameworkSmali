.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$ExportedProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$ViewOperation;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final DEBUG_DRAG:Z = false

.field public static final DEBUG_POSITIONING:Z = false

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_DUMP_THEME:Ljava/lang/String; = "DUMP_THEME"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final TRACE_HIERARCHY:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRACE_RECYCLER:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 318
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    #@3
    .line 319
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    #@5
    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1125
    instance-of v9, p1, Landroid/view/View;

    #@3
    if-nez v9, :cond_0

    #@5
    .line 1126
    nop

    #@6
    nop

    #@7
    invoke-virtual {p0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v8

    #@b
    return-object v8

    #@c
    :cond_0
    move-object v7, p1

    #@d
    .line 1129
    nop

    #@e
    nop

    #@f
    .line 1130
    .local v7, "view":Landroid/view/View;
    new-instance v0, Landroid/view/ViewDebug$8;

    #@11
    invoke-direct {v0, p0, v7}, Landroid/view/ViewDebug$8;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;)V

    #@14
    .line 1136
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/concurrent/FutureTask;

    #@16
    invoke-direct {v4, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    #@19
    .line 1138
    .local v4, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    invoke-virtual {v7}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v5

    #@1d
    .line 1140
    .local v5, "handler":Landroid/os/Handler;
    if-nez v5, :cond_1

    #@1f
    .line 1141
    new-instance v5, Landroid/os/Handler;

    #@21
    .end local v5    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@24
    move-result-object v8

    #@25
    invoke-direct {v5, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@28
    .line 1143
    .restart local v5    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2b
    .line 1146
    :goto_0
    const-wide/16 v8, 0xfa0

    #@2d
    :try_start_0
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@2f
    invoke-virtual {v4, v8, v9, v10}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    move-result-object v8

    #@33
    return-object v8

    #@34
    .line 1158
    :catch_0
    move-exception v2

    #@35
    .line 1159
    .local v2, "e":Ljava/util/concurrent/CancellationException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@37
    const-string/jumbo v9, "Unexpected cancellation exception"

    #@3a
    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3d
    throw v8

    #@3e
    .line 1147
    .end local v2    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v3

    #@3f
    .line 1148
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@42
    move-result-object v6

    #@43
    .line 1149
    .local v6, "t":Ljava/lang/Throwable;
    instance-of v8, v6, Ljava/lang/IllegalAccessException;

    #@45
    if-eqz v8, :cond_2

    #@47
    .line 1150
    nop

    #@48
    nop

    #@49
    .end local v6    # "t":Ljava/lang/Throwable;
    throw v6

    #@4a
    .line 1152
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    instance-of v8, v6, Ljava/lang/reflect/InvocationTargetException;

    #@4c
    if-eqz v8, :cond_3

    #@4e
    .line 1153
    nop

    #@4f
    nop

    #@50
    .end local v6    # "t":Ljava/lang/Throwable;
    throw v6

    #@51
    .line 1155
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    #@53
    const-string/jumbo v9, "Unexpected exception"

    #@56
    invoke-direct {v8, v9, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@59
    throw v8

    #@5a
    .line 1156
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    #@5b
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public static capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .locals 6
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "captureView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 755
    const/4 v3, 0x0

    #@2
    invoke-static {p2, v3}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    #@5
    move-result-object v0

    #@6
    .line 757
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    #@8
    .line 758
    const-string/jumbo v3, "View"

    #@b
    const-string/jumbo v4, "Failed to create capture bitmap!"

    #@e
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 761
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@18
    move-result-object v3

    #@19
    .line 762
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@1b
    .line 761
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1e
    move-result-object v0

    #@1f
    .line 765
    :cond_0
    const/4 v1, 0x0

    #@20
    .line 767
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    #@22
    const v3, 0x8000

    #@25
    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 768
    .local v2, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@2a
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    const/16 v4, 0x64

    #@2c
    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@2f
    .line 769
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    .line 771
    if-eqz v2, :cond_1

    #@34
    .line 772
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    #@37
    .line 774
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #@3a
    .line 754
    return-void

    #@3b
    .line 770
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v3

    #@3c
    .line 771
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    :goto_0
    if-eqz v1, :cond_2

    #@3e
    .line 772
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    #@41
    .line 774
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #@44
    .line 770
    throw v3

    #@45
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    #@46
    move-object v1, v2

    #@47
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .local v1, "out":Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 748
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 749
    .local v0, "captureView":Landroid/view/View;
    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    #@7
    .line 746
    return-void
.end method

.method public static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .locals 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 667
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    #@2
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 669
    .local v1, "outRect":Landroid/graphics/Rect;
    :try_start_1
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    #@9
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b
    iget-object v3, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    #@d
    invoke-interface {v2, v3, v1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 674
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@13
    move-result v2

    #@14
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@17
    .line 675
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1e
    .line 677
    const/4 v2, 0x1

    #@1f
    invoke-static {p0, p1, v2}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    #@22
    .line 679
    const/4 v2, 0x2

    #@23
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    .line 681
    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    #@29
    .line 664
    return-void

    #@2a
    .line 680
    .end local v1    # "outRect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    #@2b
    .line 681
    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    #@2e
    .line 680
    throw v2

    #@2f
    .line 670
    .restart local v1    # "outRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    #@30
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 688
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v10

    #@4
    if-nez v10, :cond_3

    #@6
    move v6, p2

    #@7
    .line 690
    :goto_0
    iget v10, p0, Landroid/view/View;->mPrivateFlags:I

    #@9
    and-int/lit16 v10, v10, 0x80

    #@b
    const/16 v11, 0x80

    #@d
    if-eq v10, v11, :cond_2

    #@f
    .line 691
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    #@12
    move-result v5

    #@13
    .line 692
    .local v5, "id":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v10

    #@17
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1a
    move-result-object v7

    #@1b
    .line 693
    .local v7, "name":Ljava/lang/String;
    const/4 v10, -0x1

    #@1c
    if-eq v5, v10, :cond_0

    #@1e
    .line 694
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@21
    move-result-object v10

    #@22
    invoke-static {v10, v5}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    #@25
    move-result-object v10

    #@26
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    .line 697
    :cond_0
    const/4 v10, 0x1

    #@2b
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->write(I)V

    #@2e
    .line 698
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@31
    .line 699
    if-eqz v6, :cond_4

    #@33
    const/4 v10, 0x1

    #@34
    :goto_1
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@37
    .line 701
    const/4 v10, 0x2

    #@38
    new-array v9, v10, [I

    #@3a
    .line 703
    .local v9, "position":[I
    invoke-virtual {p0, v9}, Landroid/view/View;->getLocationInWindow([I)V

    #@3d
    .line 705
    const/4 v10, 0x0

    #@3e
    aget v10, v9, v10

    #@40
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@43
    .line 706
    const/4 v10, 0x1

    #@44
    aget v10, v9, v10

    #@46
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@49
    .line 707
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    #@4c
    .line 709
    const/4 v10, 0x1

    #@4d
    invoke-static {p0, v10}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    #@50
    move-result-object v1

    #@51
    .line 710
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    #@53
    .line 711
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@55
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    #@58
    move-result v10

    #@59
    .line 712
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    #@5c
    move-result v11

    #@5d
    .line 711
    mul-int/2addr v10, v11

    #@5e
    mul-int/lit8 v10, v10, 0x2

    #@60
    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@63
    .line 713
    .local v0, "arrayOut":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@65
    const/16 v11, 0x64

    #@67
    invoke-virtual {v1, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@6a
    .line 714
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@6d
    move-result v10

    #@6e
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@71
    .line 715
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    #@74
    .line 717
    .end local v0    # "arrayOut":Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    #@77
    .line 720
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "position":[I
    :cond_2
    instance-of v10, p0, Landroid/view/ViewGroup;

    #@79
    if-eqz v10, :cond_5

    #@7b
    move-object v3, p0

    #@7c
    .line 721
    nop

    #@7d
    nop

    #@7e
    .line 722
    .local v3, "group":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    #@81
    move-result v2

    #@82
    .line 724
    .local v2, "count":I
    const/4 v4, 0x0

    #@83
    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_5

    #@85
    .line 725
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@88
    move-result-object v10

    #@89
    invoke-static {v10, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    #@8c
    .line 724
    add-int/lit8 v4, v4, 0x1

    #@8e
    goto :goto_2

    #@8f
    .line 688
    .end local v2    # "count":I
    .end local v3    # "group":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    :cond_3
    const/4 v6, 0x0

    #@90
    .local v6, "localVisible":Z
    goto/16 :goto_0

    #@92
    .line 699
    .end local v6    # "localVisible":Z
    .restart local v5    # "id":I
    .restart local v7    # "name":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    #@93
    goto :goto_1

    #@94
    .line 729
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    #@96
    if-eqz v10, :cond_6

    #@98
    .line 730
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    #@9b
    move-result-object v10

    #@9c
    iget-object v8, v10, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    #@9e
    .line 731
    .local v8, "overlayContainer":Landroid/view/ViewGroup;
    invoke-static {v8, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    #@a1
    .line 686
    .end local v8    # "overlayContainer":Landroid/view/ViewGroup;
    :cond_6
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1562
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    #@2
    .line 1563
    const-string/jumbo v8, "null"

    #@5
    return-object v8

    #@6
    .line 1566
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 1567
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    #@e
    move-result-object v4

    #@f
    .line 1569
    .local v4, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v4

    #@10
    .line 1570
    .local v0, "count":I
    const/4 v5, 0x0

    #@11
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    #@13
    .line 1571
    aget-object v2, v4, v5

    #@15
    .line 1573
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    .line 1575
    .local v3, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 1576
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1577
    const-string/jumbo v8, "="

    #@26
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 1579
    if-eqz v3, :cond_1

    #@2b
    .line 1580
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    const-string/jumbo v9, "\n"

    #@32
    const-string/jumbo v10, "\\n"

    #@35
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@38
    move-result-object v7

    #@39
    .line 1581
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 1585
    .end local v7    # "value":Ljava/lang/String;
    :goto_1
    const/16 v8, 0x20

    #@3e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 1570
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1583
    .restart local v3    # "fieldValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v8, "null"

    #@47
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    goto :goto_1

    #@4b
    .line 1586
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@4c
    .local v1, "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    #@4d
    .line 1591
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    return-object v8
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1519
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    #@2
    .line 1520
    const-string/jumbo v12, "null"

    #@5
    return-object v12

    #@6
    .line 1523
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 1524
    .local v10, "sb":Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    #@e
    move-result-object v7

    #@f
    .line 1526
    .local v7, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v7

    #@10
    .line 1527
    .local v1, "count":I
    const/4 v4, 0x0

    #@11
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    #@13
    .line 1528
    aget-object v5, v7, v4

    #@15
    .line 1530
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    #@16
    :try_start_0
    nop

    #@17
    nop

    #@18
    invoke-virtual {v5, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    .line 1531
    .local v6, "methodValue":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@1f
    move-result-object v9

    #@20
    .line 1533
    .local v9, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Landroid/view/ViewDebug$CapturedViewProperty;

    #@22
    invoke-virtual {v5, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@25
    move-result-object v8

    #@26
    check-cast v8, Landroid/view/ViewDebug$CapturedViewProperty;

    #@28
    .line 1534
    .local v8, "property":Landroid/view/ViewDebug$CapturedViewProperty;
    invoke-interface {v8}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    #@2b
    move-result v12

    #@2c
    if-eqz v12, :cond_1

    #@2e
    .line 1536
    new-instance v12, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@36
    move-result-object v13

    #@37
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v12

    #@3b
    const-string/jumbo v13, "#"

    #@3e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v12

    #@42
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v12

    #@46
    invoke-static {v6, v9, v12}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v12

    #@4a
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 1527
    .end local v6    # "methodValue":Ljava/lang/Object;
    .end local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 1538
    .restart local v6    # "methodValue":Ljava/lang/Object;
    .restart local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object/from16 v0, p2

    #@52
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 1539
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@58
    move-result-object v12

    #@59
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 1540
    const-string/jumbo v12, "()="

    #@5f
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 1542
    if-eqz v6, :cond_2

    #@64
    .line 1543
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@67
    move-result-object v12

    #@68
    const-string/jumbo v13, "\n"

    #@6b
    const-string/jumbo v14, "\\n"

    #@6e
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@71
    move-result-object v11

    #@72
    .line 1544
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 1548
    .end local v11    # "value":Ljava/lang/String;
    :goto_2
    const-string/jumbo v12, "; "

    #@78
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    goto :goto_1

    #@7c
    .line 1550
    .end local v6    # "methodValue":Ljava/lang/Object;
    .end local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    #@7d
    .local v2, "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    #@7e
    .line 1546
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v6    # "methodValue":Ljava/lang/Object;
    .restart local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string/jumbo v12, "null"

    #@81
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    #@84
    goto :goto_2

    #@85
    .line 1553
    .end local v6    # "methodValue":Ljava/lang/Object;
    .end local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    #@86
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    #@87
    .line 1558
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v12

    #@8b
    return-object v12
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    #@0
    .prologue
    .line 1457
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 1458
    new-instance v6, Ljava/util/HashMap;

    #@6
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@9
    sput-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    #@b
    .line 1460
    :cond_0
    sget-object v5, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    #@d
    .line 1462
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, [Ljava/lang/reflect/Field;

    #@13
    .line 1463
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    #@15
    .line 1464
    return-object v2

    #@16
    .line 1467
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    #@18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 1468
    .local v3, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@1e
    move-result-object v2

    #@1f
    .line 1470
    array-length v0, v2

    #@20
    .line 1471
    .local v0, "count":I
    const/4 v4, 0x0

    #@21
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    #@23
    .line 1472
    aget-object v1, v2, v4

    #@25
    .line 1473
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    #@27
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_2

    #@2d
    .line 1474
    const/4 v6, 0x1

    #@2e
    invoke-virtual {v1, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    #@31
    .line 1475
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 1471
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@36
    goto :goto_0

    #@37
    .line 1479
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v6

    #@3b
    new-array v6, v6, [Ljava/lang/reflect/Field;

    #@3d
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    #@43
    .line 1480
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 1482
    return-object v2
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .prologue
    .line 1486
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 1487
    new-instance v6, Ljava/util/HashMap;

    #@6
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@9
    sput-object v6, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    #@b
    .line 1489
    :cond_0
    sget-object v3, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    #@d
    .line 1491
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, [Ljava/lang/reflect/Method;

    #@13
    .line 1492
    .local v5, "methods":[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    #@15
    .line 1493
    return-object v5

    #@16
    .line 1496
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 1497
    .local v1, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    #@1e
    move-result-object v5

    #@1f
    .line 1499
    array-length v0, v5

    #@20
    .line 1500
    .local v0, "count":I
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@23
    .line 1501
    aget-object v4, v5, v2

    #@25
    .line 1502
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@28
    move-result-object v6

    #@29
    array-length v6, v6

    #@2a
    if-nez v6, :cond_2

    #@2c
    .line 1503
    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    #@2e
    invoke-virtual {v4, v6}, Ljava/lang/reflect/AbstractMethod;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@31
    move-result v6

    #@32
    .line 1502
    if-eqz v6, :cond_2

    #@34
    .line 1504
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@37
    move-result-object v6

    #@38
    const-class v7, Ljava/lang/Void;

    #@3a
    if-eq v6, v7, :cond_2

    #@3c
    .line 1505
    const/4 v6, 0x1

    #@3d
    invoke-virtual {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    #@40
    .line 1506
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    .line 1500
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1510
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v6

    #@4a
    new-array v6, v6, [Ljava/lang/reflect/Method;

    #@4c
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4f
    move-result-object v5

    #@50
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    #@52
    .line 1511
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 1513
    return-object v5
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@4
    move-result-object p0

    #@5
    .line 440
    const-string/jumbo v1, "DUMP"

    #@8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 441
    const/4 v1, 0x1

    #@f
    invoke-static {p0, v2, v1, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    #@12
    .line 435
    :cond_0
    :goto_0
    return-void

    #@13
    .line 442
    :cond_1
    const-string/jumbo v1, "DUMP_THEME"

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 443
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V

    #@1f
    goto :goto_0

    #@20
    .line 444
    :cond_2
    const-string/jumbo v1, "CAPTURE_LAYERS"

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 445
    new-instance v1, Ljava/io/DataOutputStream;

    #@2b
    invoke-direct {v1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@2e
    invoke-static {p0, v1}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    #@31
    goto :goto_0

    #@32
    .line 447
    :cond_3
    const-string/jumbo v1, " "

    #@35
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 448
    .local v0, "params":[Ljava/lang/String;
    const-string/jumbo v1, "CAPTURE"

    #@3c
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_4

    #@42
    .line 449
    aget-object v1, v0, v2

    #@44
    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    #@47
    goto :goto_0

    #@48
    .line 450
    :cond_4
    const-string/jumbo v1, "OUTPUT_DISPLAYLIST"

    #@4b
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_5

    #@51
    .line 451
    aget-object v1, v0, v2

    #@53
    invoke-static {p0, v1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    #@56
    goto :goto_0

    #@57
    .line 452
    :cond_5
    const-string/jumbo v1, "INVALIDATE"

    #@5a
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5d
    move-result v1

    #@5e
    if-eqz v1, :cond_6

    #@60
    .line 453
    aget-object v1, v0, v2

    #@62
    invoke-static {p0, v1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    #@65
    goto :goto_0

    #@66
    .line 454
    :cond_6
    const-string/jumbo v1, "REQUEST_LAYOUT"

    #@69
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_7

    #@6f
    .line 455
    aget-object v1, v0, v2

    #@71
    invoke-static {p0, v1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    #@74
    goto :goto_0

    #@75
    .line 456
    :cond_7
    const-string/jumbo v1, "PROFILE"

    #@78
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_0

    #@7e
    .line 457
    aget-object v1, v0, v2

    #@80
    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    #@83
    goto :goto_0
.end method

.method public static dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .locals 10
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 815
    const/4 v8, 0x0

    #@1
    .line 817
    .local v8, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    #@3
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@5
    const-string/jumbo v4, "utf-8"

    #@8
    invoke-direct {v1, p3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@b
    const v4, 0x8000

    #@e
    invoke-direct {v3, v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 818
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@14
    move-result-object v9

    #@15
    .line 819
    .local v9, "view":Landroid/view/View;
    instance-of v1, v9, Landroid/view/ViewGroup;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 820
    move-object v0, v9

    #@1a
    nop

    #@1b
    nop

    #@1c
    move-object v2, v0

    #@1d
    .line 821
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@20
    move-result-object v1

    #@21
    const/4 v4, 0x0

    #@22
    move v5, p1

    #@23
    move v6, p2

    #@24
    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    #@27
    .line 824
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_0
    const-string/jumbo v1, "DONE."

    #@2a
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@2d
    .line 825
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@30
    .line 829
    if-eqz v3, :cond_1

    #@32
    .line 830
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    #@35
    .line 814
    .end local v9    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    #@36
    .line 826
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v7

    #@37
    .local v7, "e":Ljava/lang/Exception;
    move-object v3, v8

    #@38
    .line 827
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_1
    :try_start_2
    const-string/jumbo v1, "View"

    #@3b
    const-string/jumbo v4, "Problem dumping the view:"

    #@3e
    invoke-static {v1, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@41
    .line 829
    if-eqz v3, :cond_1

    #@43
    .line 830
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    #@46
    goto :goto_0

    #@47
    .line 828
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v1

    #@48
    move-object v3, v8

    #@49
    .line 829
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v3, :cond_2

    #@4b
    .line 830
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    #@4e
    .line 828
    :cond_2
    throw v1

    #@4f
    :catchall_1
    move-exception v1

    #@50
    goto :goto_2

    #@51
    .line 826
    :catch_1
    move-exception v7

    #@52
    .restart local v7    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "view"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 1603
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, ": "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@21
    .line 1604
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, ""

    #@24
    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 1605
    const-string/jumbo v2, ""

    #@2e
    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 1606
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1601
    return-void
.end method

.method public static dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 862
    const/4 v3, 0x0

    #@1
    .line 864
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    #@3
    new-instance v5, Ljava/io/OutputStreamWriter;

    #@5
    const-string/jumbo v6, "utf-8"

    #@8
    invoke-direct {v5, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@b
    const v6, 0x8000

    #@e
    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 865
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@18
    move-result-object v5

    #@19
    .line 866
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@20
    move-result-object v6

    #@21
    .line 865
    invoke-static {v5, v6}, Landroid/view/ViewDebug;->getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 867
    .local v0, "attributes":[Ljava/lang/String;
    if-eqz v0, :cond_1

    #@27
    .line 868
    const/4 v2, 0x0

    #@28
    .local v2, "i":I
    :goto_0
    array-length v5, v0

    #@29
    if-ge v2, v5, :cond_1

    #@2b
    .line 869
    aget-object v5, v0, v2

    #@2d
    if-eqz v5, :cond_0

    #@2f
    .line 870
    new-instance v5, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    aget-object v6, v0, v2

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    const-string/jumbo v6, "\n"

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@48
    .line 871
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    add-int/lit8 v6, v2, 0x1

    #@4f
    aget-object v6, v0, v6

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    const-string/jumbo v6, "\n"

    #@58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@63
    .line 868
    :cond_0
    add-int/lit8 v2, v2, 0x2

    #@65
    goto :goto_0

    #@66
    .line 875
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v5, "DONE."

    #@69
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6c
    .line 876
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@6f
    .line 880
    if-eqz v4, :cond_2

    #@71
    .line 881
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    #@74
    :cond_2
    move-object v3, v4

    #@75
    .line 861
    .end local v0    # "attributes":[Ljava/lang/String;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    :cond_3
    :goto_1
    return-void

    #@76
    .line 877
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    #@77
    .line 878
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string/jumbo v5, "View"

    #@7a
    const-string/jumbo v6, "Problem dumping View Theme:"

    #@7d
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@80
    .line 880
    if-eqz v3, :cond_3

    #@82
    .line 881
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    #@85
    goto :goto_1

    #@86
    .line 879
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@87
    .line 880
    :goto_3
    if-eqz v3, :cond_4

    #@89
    .line 881
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    #@8c
    .line 879
    :cond_4
    throw v5

    #@8d
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    #@8e
    move-object v3, v4

    #@8f
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    goto :goto_3

    #@90
    .line 877
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    #@91
    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    #@92
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method private static dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    #@0
    .prologue
    .line 1001
    const/4 v2, 0x0

    #@1
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    #@3
    .line 1002
    const/16 v3, 0x20

    #@5
    :try_start_0
    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    #@8
    .line 1001
    add-int/lit8 v2, v2, 0x1

    #@a
    goto :goto_0

    #@b
    .line 1004
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1005
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v3, "android.view.ViewOverlay$OverlayViewGroup"

    #@16
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 1006
    const-string/jumbo v0, "ViewOverlay"

    #@1f
    .line 1008
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@22
    .line 1009
    const/16 v3, 0x40

    #@24
    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    #@27
    .line 1010
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@2a
    move-result v3

    #@2b
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@32
    .line 1011
    const/16 v3, 0x20

    #@34
    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    #@37
    .line 1012
    if-eqz p4, :cond_2

    #@39
    .line 1013
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    #@3c
    .line 1015
    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 1020
    const/4 v3, 0x1

    #@40
    return v3

    #@41
    .line 1016
    .end local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@42
    .line 1017
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "View"

    #@45
    const-string/jumbo v4, "Error while dumping hierarchy tree"

    #@48
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 1018
    const/4 v3, 0x0

    #@4c
    return v3
.end method

.method private static dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "skipChildren"    # Z
    .param p5, "includeProperties"    # Z

    #@0
    .prologue
    .line 968
    invoke-static {p0, p1, p2, p3, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 969
    return-void

    #@7
    .line 972
    :cond_0
    if-eqz p4, :cond_1

    #@9
    .line 973
    return-void

    #@a
    .line 976
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v6

    #@e
    .line 977
    .local v6, "count":I
    const/4 v7, 0x0

    #@f
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_4

    #@11
    .line 978
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v9

    #@15
    .line 979
    .local v9, "view":Landroid/view/View;
    instance-of v0, v9, Landroid/view/ViewGroup;

    #@17
    if-eqz v0, :cond_3

    #@19
    move-object v1, v9

    #@1a
    .line 980
    nop

    #@1b
    nop

    #@1c
    add-int/lit8 v3, p3, 0x1

    #@1e
    move-object v0, p0

    #@1f
    move-object v2, p2

    #@20
    move v4, p4

    #@21
    move v5, p5

    #@22
    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    #@25
    .line 985
    :goto_1
    iget-object v0, v9, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 986
    invoke-virtual {v9}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    #@2c
    move-result-object v8

    #@2d
    .line 987
    .local v8, "overlay":Landroid/view/ViewOverlay;
    iget-object v1, v8, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    #@2f
    .line 988
    .local v1, "overlayContainer":Landroid/view/ViewGroup;
    add-int/lit8 v3, p3, 0x2

    #@31
    move-object v0, p0

    #@32
    move-object v2, p2

    #@33
    move v4, p4

    #@34
    move v5, p5

    #@35
    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    #@38
    .line 977
    .end local v1    # "overlayContainer":Landroid/view/ViewGroup;
    .end local v8    # "overlay":Landroid/view/ViewOverlay;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 983
    :cond_3
    add-int/lit8 v0, p3, 0x1

    #@3d
    invoke-static {p0, v9, p2, v0, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    #@40
    goto :goto_1

    #@41
    .line 992
    .end local v9    # "view":Landroid/view/View;
    :cond_4
    instance-of v0, p1, Landroid/view/ViewDebug$HierarchyHandler;

    #@43
    if-eqz v0, :cond_5

    #@45
    .line 993
    check-cast p1, Landroid/view/ViewDebug$HierarchyHandler;

    #@47
    .end local p1    # "group":Landroid/view/ViewGroup;
    add-int/lit8 v0, p3, 0x1

    #@49
    invoke-interface {p1, p2, v0}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    #@4c
    .line 967
    :cond_5
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1103
    const-string/jumbo v0, ""

    #@3
    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    #@6
    .line 1101
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1109
    if-nez p1, :cond_0

    #@2
    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, "=4,null "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@19
    .line 1111
    return-void

    #@1a
    .line 1114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v0

    #@1e
    .line 1116
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    #@21
    .line 1117
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    #@24
    .line 1118
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@27
    move-result-object v0

    #@28
    .line 1119
    const-class v1, Ljava/lang/Object;

    #@2a
    if-ne v0, v1, :cond_1

    #@2c
    .line 1107
    return-void
.end method

.method public static dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 842
    new-instance v0, Landroid/view/ViewHierarchyEncoder;

    #@2
    invoke-direct {v0, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    #@5
    .line 843
    .local v0, "encoder":Landroid/view/ViewHierarchyEncoder;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@b
    .line 845
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/view/ViewDebug$7;

    #@d
    invoke-direct {v2, p0, v0, v1}, Landroid/view/ViewDebug$7;-><init>(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;Ljava/util/concurrent/CountDownLatch;)V

    #@10
    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@13
    .line 853
    const-wide/16 v2, 0x2

    #@15
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@17
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    #@1a
    .line 854
    invoke-virtual {v0}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    #@1d
    .line 841
    return-void
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 26
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
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1254
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    #@3
    move-result-object v14

    #@4
    .line 1256
    .local v14, "fields":[Ljava/lang/reflect/Field;
    array-length v10, v14

    #@5
    .line 1257
    .local v10, "count":I
    const/16 v16, 0x0

    #@7
    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    #@9
    if-ge v0, v10, :cond_10

    #@b
    .line 1258
    aget-object v12, v14, v16

    #@d
    .line 1262
    .local v12, "field":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    #@e
    .line 1263
    .local v13, "fieldValue":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@11
    move-result-object v24

    #@12
    .line 1264
    .local v24, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    #@14
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    #@1a
    .line 1266
    .local v4, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_4

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, ":"

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v9

    #@3c
    .line 1268
    .local v9, "categoryPrefix":Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@3e
    move-object/from16 v0, v24

    #@40
    if-eq v0, v2, :cond_0

    #@42
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@44
    move-object/from16 v0, v24

    #@46
    if-ne v0, v2, :cond_b

    #@48
    .line 1269
    :cond_0
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_5

    #@4e
    if-eqz p0, :cond_5

    #@50
    .line 1270
    move-object/from16 v0, p1

    #@52
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@55
    move-result v17

    #@56
    .line 1271
    .local v17, "id":I
    move-object/from16 v0, p0

    #@58
    move/from16 v1, v17

    #@5a
    invoke-static {v0, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    #@5d
    move-result-object v13

    #@5e
    .line 1335
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v17    # "id":I
    :cond_1
    :goto_2
    if-nez v13, :cond_2

    #@60
    .line 1336
    move-object/from16 v0, p1

    #@62
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    move-result-object v13

    #@66
    .line 1339
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    move-object/from16 v0, p4

    #@71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    const-string/jumbo v7, ""

    #@80
    move-object/from16 v0, p2

    #@82
    invoke-static {v0, v2, v3, v7, v13}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@85
    .line 1257
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_3
    add-int/lit8 v16, v16, 0x1

    #@87
    goto :goto_0

    #@88
    .line 1266
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v13    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const-string/jumbo v9, ""

    #@8b
    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    goto :goto_1

    #@8c
    .line 1273
    :cond_5
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    #@8f
    move-result-object v15

    #@90
    .line 1274
    .local v15, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v2, v15

    #@91
    if-lez v2, :cond_6

    #@93
    .line 1275
    move-object/from16 v0, p1

    #@95
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@98
    move-result v18

    #@99
    .line 1277
    .local v18, "intValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    move-object/from16 v0, p4

    #@a4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@ab
    move-result-object v3

    #@ac
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v2

    #@b0
    const/16 v3, 0x5f

    #@b2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v6

    #@ba
    .line 1278
    .local v6, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    #@bc
    move/from16 v1, v18

    #@be
    invoke-static {v0, v15, v1, v6}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    #@c1
    .line 1281
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v18    # "intValue":I
    :cond_6
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    #@c4
    move-result-object v21

    #@c5
    .line 1282
    .local v21, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v21

    #@c7
    array-length v2, v0

    #@c8
    if-lez v2, :cond_8

    #@ca
    .line 1283
    move-object/from16 v0, p1

    #@cc
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@cf
    move-result v18

    #@d0
    .line 1284
    .restart local v18    # "intValue":I
    move-object/from16 v0, v21

    #@d2
    array-length v0, v0

    #@d3
    move/from16 v22, v0

    #@d5
    .line 1285
    .local v22, "mappingCount":I
    const/16 v19, 0x0

    #@d7
    .local v19, "j":I
    :goto_4
    move/from16 v0, v19

    #@d9
    move/from16 v1, v22

    #@db
    if-ge v0, v1, :cond_7

    #@dd
    .line 1286
    aget-object v20, v21, v19

    #@df
    .line 1287
    .local v20, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v20 .. v20}, Landroid/view/ViewDebug$IntToString;->from()I

    #@e2
    move-result v2

    #@e3
    move/from16 v0, v18

    #@e5
    if-ne v2, v0, :cond_9

    #@e7
    .line 1288
    invoke-interface/range {v20 .. v20}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    #@ea
    move-result-object v13

    #@eb
    .line 1293
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v20    # "mapped":Landroid/view/ViewDebug$IntToString;
    :cond_7
    if-nez v13, :cond_8

    #@ed
    .line 1294
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f0
    move-result-object v13

    #@f1
    .line 1298
    .end local v18    # "intValue":I
    .end local v19    # "j":I
    .end local v22    # "mappingCount":I
    :cond_8
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->formatToHexString()Z

    #@f4
    move-result v2

    #@f5
    if-eqz v2, :cond_1

    #@f7
    .line 1299
    move-object/from16 v0, p1

    #@f9
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@fc
    move-result-object v13

    #@fd
    .line 1300
    .restart local v13    # "fieldValue":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@ff
    move-object/from16 v0, v24

    #@101
    if-ne v0, v2, :cond_a

    #@103
    .line 1301
    move-object v0, v13

    #@104
    check-cast v0, Ljava/lang/Integer;

    #@106
    move-object v2, v0

    #@107
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@10a
    move-result v2

    #@10b
    invoke-static {v2}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    #@10e
    move-result-object v13

    #@10f
    goto/16 :goto_2

    #@111
    .line 1285
    .restart local v18    # "intValue":I
    .restart local v19    # "j":I
    .restart local v20    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v22    # "mappingCount":I
    :cond_9
    add-int/lit8 v19, v19, 0x1

    #@113
    goto :goto_4

    #@114
    .line 1302
    .end local v18    # "intValue":I
    .end local v19    # "j":I
    .end local v20    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v22    # "mappingCount":I
    :cond_a
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@116
    move-object/from16 v0, v24

    #@118
    if-ne v0, v2, :cond_1

    #@11a
    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v3, "0x"

    #@122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v3

    #@126
    move-object v0, v13

    #@127
    check-cast v0, Ljava/lang/Byte;

    #@129
    move-object v2, v0

    #@12a
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    #@12d
    move-result v2

    #@12e
    const/4 v7, 0x1

    #@12f
    invoke-static {v2, v7}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    #@132
    move-result-object v2

    #@133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v2

    #@137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v13

    #@13b
    goto/16 :goto_2

    #@13d
    .line 1307
    .end local v15    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v21    # "mapping":[Landroid/view/ViewDebug$IntToString;
    :cond_b
    const-class v2, [I

    #@13f
    move-object/from16 v0, v24

    #@141
    if-ne v0, v2, :cond_c

    #@143
    .line 1308
    move-object/from16 v0, p1

    #@145
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@148
    move-result-object v5

    #@149
    check-cast v5, [I

    #@14b
    .line 1309
    .local v5, "array":[I
    new-instance v2, Ljava/lang/StringBuilder;

    #@14d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@150
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v2

    #@154
    move-object/from16 v0, p4

    #@156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v2

    #@15a
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@15d
    move-result-object v3

    #@15e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v2

    #@162
    const/16 v3, 0x5f

    #@164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@167
    move-result-object v2

    #@168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v6

    #@16c
    .line 1310
    .restart local v6    # "valuePrefix":Ljava/lang/String;
    const-string/jumbo v23, ""

    #@16f
    .line 1312
    .local v23, "suffix":Ljava/lang/String;
    const-string/jumbo v7, ""

    #@172
    move-object/from16 v2, p0

    #@174
    move-object/from16 v3, p2

    #@176
    invoke-static/range {v2 .. v7}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    #@179
    goto/16 :goto_3

    #@17b
    .line 1340
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v5    # "array":[I
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v23    # "suffix":Ljava/lang/String;
    .end local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v11

    #@17c
    .local v11, "e":Ljava/lang/IllegalAccessException;
    goto/16 :goto_3

    #@17e
    .line 1315
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    .restart local v13    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    const-class v2, [Ljava/lang/String;

    #@180
    move-object/from16 v0, v24

    #@182
    if-ne v0, v2, :cond_f

    #@184
    .line 1316
    move-object/from16 v0, p1

    #@186
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@189
    move-result-object v8

    #@18a
    check-cast v8, [Ljava/lang/String;

    #@18c
    .line 1317
    .local v8, "array":[Ljava/lang/String;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    #@18f
    move-result v2

    #@190
    if-eqz v2, :cond_3

    #@192
    if-eqz v8, :cond_3

    #@194
    .line 1318
    const/16 v19, 0x0

    #@196
    .restart local v19    # "j":I
    :goto_5
    array-length v2, v8

    #@197
    move/from16 v0, v19

    #@199
    if-ge v0, v2, :cond_3

    #@19b
    .line 1319
    aget-object v2, v8, v19

    #@19d
    if-eqz v2, :cond_d

    #@19f
    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a4
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v2

    #@1a8
    move-object/from16 v0, p4

    #@1aa
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v2

    #@1ae
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b1
    move-result-object v3

    #@1b2
    aget-object v7, v8, v19

    #@1b4
    const-string/jumbo v25, ""

    #@1b7
    .line 1321
    add-int/lit8 v2, v19, 0x1

    #@1b9
    aget-object v2, v8, v2

    #@1bb
    if-nez v2, :cond_e

    #@1bd
    const-string/jumbo v2, "null"

    #@1c0
    .line 1320
    :goto_6
    move-object/from16 v0, p2

    #@1c2
    move-object/from16 v1, v25

    #@1c4
    invoke-static {v0, v3, v7, v1, v2}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@1c7
    .line 1318
    :cond_d
    add-int/lit8 v19, v19, 0x2

    #@1c9
    goto :goto_5

    #@1ca
    .line 1321
    :cond_e
    add-int/lit8 v2, v19, 0x1

    #@1cc
    aget-object v2, v8, v2

    #@1ce
    goto :goto_6

    #@1cf
    .line 1327
    .end local v8    # "array":[Ljava/lang/String;
    .end local v19    # "j":I
    :cond_f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isPrimitive()Z

    #@1d2
    move-result v2

    #@1d3
    if-nez v2, :cond_1

    #@1d5
    .line 1328
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    #@1d8
    move-result v2

    #@1d9
    if-eqz v2, :cond_1

    #@1db
    .line 1329
    move-object/from16 v0, p1

    #@1dd
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e0
    move-result-object v2

    #@1e1
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e6
    move-object/from16 v0, p4

    #@1e8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v3

    #@1ec
    .line 1330
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    #@1ef
    move-result-object v7

    #@1f0
    .line 1329
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v3

    #@1f4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f7
    move-result-object v3

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    move-object/from16 v1, p2

    #@1fc
    invoke-static {v0, v2, v1, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@1ff
    goto/16 :goto_3

    #@201
    .line 1252
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    return-void
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 30
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
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1171
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    #@3
    move-result-object v26

    #@4
    .line 1172
    .local v26, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v26

    #@6
    array-length v11, v0

    #@7
    .line 1173
    .local v11, "count":I
    const/16 v16, 0x0

    #@9
    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    #@b
    if-ge v0, v11, :cond_c

    #@d
    .line 1174
    aget-object v24, v26, v16

    #@f
    .line 1177
    .local v24, "method":Ljava/lang/reflect/Method;
    :try_start_0
    move-object/from16 v0, v24

    #@11
    move-object/from16 v1, p1

    #@13
    invoke-static {v0, v1}, Landroid/view/ViewDebug;->callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v25

    #@17
    .line 1178
    .local v25, "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@1a
    move-result-object v27

    #@1b
    .line 1179
    .local v27, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    #@1d
    move-object/from16 v0, v24

    #@1f
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    #@25
    .line 1181
    .local v5, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    const-string/jumbo v4, ":"

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v10

    #@47
    .line 1183
    .local v10, "categoryPrefix":Ljava/lang/String;
    :goto_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@49
    move-object/from16 v0, v27

    #@4b
    if-ne v0, v3, :cond_7

    #@4d
    .line 1184
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_3

    #@53
    if-eqz p0, :cond_3

    #@55
    .line 1185
    check-cast v25, Ljava/lang/Integer;

    #@57
    .end local v25    # "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    #@5a
    move-result v17

    #@5b
    .line 1186
    .local v17, "id":I
    move-object/from16 v0, p0

    #@5d
    move/from16 v1, v17

    #@5f
    invoke-static {v0, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    #@62
    move-result-object v25

    #@63
    .line 1243
    .end local v17    # "id":I
    .restart local v25    # "methodValue":Ljava/lang/Object;
    :cond_0
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    move-object/from16 v0, p4

    #@6e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    const-string/jumbo v8, "()"

    #@7d
    move-object/from16 v0, p2

    #@7f
    move-object/from16 v1, v25

    #@81
    invoke-static {v0, v3, v4, v8, v1}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@84
    .line 1173
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v10    # "categoryPrefix":Ljava/lang/String;
    .end local v25    # "methodValue":Ljava/lang/Object;
    .end local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_3
    add-int/lit8 v16, v16, 0x1

    #@86
    goto :goto_0

    #@87
    .line 1181
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v25    # "methodValue":Ljava/lang/Object;
    .restart local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string/jumbo v10, ""

    #@8a
    .restart local v10    # "categoryPrefix":Ljava/lang/String;
    goto :goto_1

    #@8b
    .line 1188
    :cond_3
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    #@8e
    move-result-object v15

    #@8f
    .line 1189
    .local v15, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v3, v15

    #@90
    if-lez v3, :cond_4

    #@92
    .line 1190
    move-object/from16 v0, v25

    #@94
    check-cast v0, Ljava/lang/Integer;

    #@96
    move-object v3, v0

    #@97
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@9a
    move-result v18

    #@9b
    .line 1192
    .local v18, "intValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v3

    #@a4
    move-object/from16 v0, p4

    #@a6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@ad
    move-result-object v4

    #@ae
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v3

    #@b2
    const/16 v4, 0x5f

    #@b4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v3

    #@b8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v7

    #@bc
    .line 1193
    .local v7, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    #@be
    move/from16 v1, v18

    #@c0
    invoke-static {v0, v15, v1, v7}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    #@c3
    .line 1196
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v18    # "intValue":I
    :cond_4
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    #@c6
    move-result-object v22

    #@c7
    .line 1197
    .local v22, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v22

    #@c9
    array-length v3, v0

    #@ca
    if-lez v3, :cond_0

    #@cc
    .line 1198
    move-object/from16 v0, v25

    #@ce
    check-cast v0, Ljava/lang/Integer;

    #@d0
    move-object v3, v0

    #@d1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@d4
    move-result v18

    #@d5
    .line 1199
    .restart local v18    # "intValue":I
    const/16 v20, 0x0

    #@d7
    .line 1200
    .local v20, "mapped":Z
    move-object/from16 v0, v22

    #@d9
    array-length v0, v0

    #@da
    move/from16 v23, v0

    #@dc
    .line 1201
    .local v23, "mappingCount":I
    const/16 v19, 0x0

    #@de
    .local v19, "j":I
    :goto_4
    move/from16 v0, v19

    #@e0
    move/from16 v1, v23

    #@e2
    if-ge v0, v1, :cond_5

    #@e4
    .line 1202
    aget-object v21, v22, v19

    #@e6
    .line 1203
    .local v21, "mapper":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v21 .. v21}, Landroid/view/ViewDebug$IntToString;->from()I

    #@e9
    move-result v3

    #@ea
    move/from16 v0, v18

    #@ec
    if-ne v3, v0, :cond_6

    #@ee
    .line 1204
    invoke-interface/range {v21 .. v21}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    #@f1
    move-result-object v25

    #@f2
    .line 1205
    const/16 v20, 0x1

    #@f4
    .line 1210
    .end local v21    # "mapper":Landroid/view/ViewDebug$IntToString;
    :cond_5
    if-nez v20, :cond_0

    #@f6
    .line 1211
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f9
    move-result-object v25

    #@fa
    goto/16 :goto_2

    #@fc
    .line 1201
    .restart local v21    # "mapper":Landroid/view/ViewDebug$IntToString;
    :cond_6
    add-int/lit8 v19, v19, 0x1

    #@fe
    goto :goto_4

    #@ff
    .line 1215
    .end local v15    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v18    # "intValue":I
    .end local v19    # "j":I
    .end local v20    # "mapped":Z
    .end local v21    # "mapper":Landroid/view/ViewDebug$IntToString;
    .end local v22    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v23    # "mappingCount":I
    :cond_7
    const-class v3, [I

    #@101
    move-object/from16 v0, v27

    #@103
    if-ne v0, v3, :cond_8

    #@105
    .line 1216
    move-object/from16 v0, v25

    #@107
    check-cast v0, [I

    #@109
    move-object v6, v0

    #@10a
    .line 1217
    .local v6, "array":[I
    new-instance v3, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v3

    #@113
    move-object/from16 v0, p4

    #@115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v3

    #@119
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@11c
    move-result-object v4

    #@11d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v3

    #@121
    const/16 v4, 0x5f

    #@123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@126
    move-result-object v3

    #@127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v7

    #@12b
    .line 1218
    .restart local v7    # "valuePrefix":Ljava/lang/String;
    const-string/jumbo v28, "()"

    #@12e
    .line 1220
    .local v28, "suffix":Ljava/lang/String;
    const-string/jumbo v8, "()"

    #@131
    move-object/from16 v3, p0

    #@133
    move-object/from16 v4, p2

    #@135
    invoke-static/range {v3 .. v8}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    #@138
    goto/16 :goto_3

    #@13a
    .line 1244
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v6    # "array":[I
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v10    # "categoryPrefix":Ljava/lang/String;
    .end local v25    # "methodValue":Ljava/lang/Object;
    .end local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "suffix":Ljava/lang/String;
    :catch_0
    move-exception v12

    #@13b
    .local v12, "e":Ljava/lang/IllegalAccessException;
    goto/16 :goto_3

    #@13d
    .line 1223
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v10    # "categoryPrefix":Ljava/lang/String;
    .restart local v25    # "methodValue":Ljava/lang/Object;
    .restart local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    const-class v3, [Ljava/lang/String;

    #@13f
    move-object/from16 v0, v27

    #@141
    if-ne v0, v3, :cond_b

    #@143
    .line 1224
    move-object/from16 v0, v25

    #@145
    check-cast v0, [Ljava/lang/String;

    #@147
    move-object v9, v0

    #@148
    .line 1225
    .local v9, "array":[Ljava/lang/String;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    #@14b
    move-result v3

    #@14c
    if-eqz v3, :cond_1

    #@14e
    if-eqz v9, :cond_1

    #@150
    .line 1226
    const/16 v19, 0x0

    #@152
    .restart local v19    # "j":I
    :goto_5
    array-length v3, v9

    #@153
    move/from16 v0, v19

    #@155
    if-ge v0, v3, :cond_1

    #@157
    .line 1227
    aget-object v3, v9, v19

    #@159
    if-eqz v3, :cond_9

    #@15b
    .line 1228
    new-instance v3, Ljava/lang/StringBuilder;

    #@15d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@160
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v3

    #@164
    move-object/from16 v0, p4

    #@166
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v3

    #@16a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v4

    #@16e
    aget-object v8, v9, v19

    #@170
    const-string/jumbo v29, "()"

    #@173
    .line 1229
    add-int/lit8 v3, v19, 0x1

    #@175
    aget-object v3, v9, v3

    #@177
    if-nez v3, :cond_a

    #@179
    const-string/jumbo v3, "null"

    #@17c
    .line 1228
    :goto_6
    move-object/from16 v0, p2

    #@17e
    move-object/from16 v1, v29

    #@180
    invoke-static {v0, v4, v8, v1, v3}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@183
    .line 1226
    :cond_9
    add-int/lit8 v19, v19, 0x2

    #@185
    goto :goto_5

    #@186
    .line 1229
    :cond_a
    add-int/lit8 v3, v19, 0x1

    #@188
    aget-object v3, v9, v3

    #@18a
    goto :goto_6

    #@18b
    .line 1236
    .end local v9    # "array":[Ljava/lang/String;
    .end local v19    # "j":I
    :cond_b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->isPrimitive()Z

    #@18e
    move-result v3

    #@18f
    if-nez v3, :cond_0

    #@191
    .line 1237
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    #@194
    move-result v3

    #@195
    if-eqz v3, :cond_0

    #@197
    .line 1238
    new-instance v3, Ljava/lang/StringBuilder;

    #@199
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19c
    move-object/from16 v0, p4

    #@19e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v3

    #@1a2
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    #@1a5
    move-result-object v4

    #@1a6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v3

    #@1aa
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ad
    move-result-object v3

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    move-object/from16 v1, v25

    #@1b2
    move-object/from16 v2, p2

    #@1b4
    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    #@1b7
    goto/16 :goto_3

    #@1b9
    .line 1245
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v10    # "categoryPrefix":Ljava/lang/String;
    .end local v25    # "methodValue":Ljava/lang/Object;
    .end local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v13

    #@1ba
    .local v13, "e":Ljava/lang/reflect/InvocationTargetException;
    goto/16 :goto_3

    #@1bc
    .line 1169
    .end local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v24    # "method":Ljava/lang/reflect/Method;
    :cond_c
    return-void

    #@1bd
    .line 1246
    .restart local v24    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v14

    #@1be
    .local v14, "e":Ljava/util/concurrent/TimeoutException;
    goto/16 :goto_3
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
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

    #@0
    .prologue
    .line 1377
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    #@3
    move-result-object v5

    #@4
    .line 1378
    .local v5, "indexMapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v5

    #@5
    move/from16 v16, v0

    #@7
    if-lez v16, :cond_3

    #@9
    const/4 v3, 0x1

    #@a
    .line 1380
    .local v3, "hasIndexMapping":Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    #@d
    move-result-object v10

    #@e
    .line 1381
    .local v10, "mapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v10

    #@f
    move/from16 v16, v0

    #@11
    if-lez v16, :cond_4

    #@13
    const/4 v4, 0x1

    #@14
    .line 1383
    .local v4, "hasMapping":Z
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    #@17
    move-result v16

    #@18
    if-eqz v16, :cond_5

    #@1a
    if-eqz p0, :cond_5

    #@1c
    const/4 v13, 0x1

    #@1d
    .line 1384
    .local v13, "resolveId":Z
    :goto_2
    move-object/from16 v0, p3

    #@1f
    array-length v15, v0

    #@20
    .line 1386
    .local v15, "valuesCount":I
    const/4 v7, 0x0

    #@21
    .local v7, "j":I
    :goto_3
    if-ge v7, v15, :cond_9

    #@23
    .line 1388
    const/4 v14, 0x0

    #@24
    .line 1390
    .local v14, "value":Ljava/lang/String;
    aget v6, p3, v7

    #@26
    .line 1392
    .local v6, "intValue":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@29
    move-result-object v12

    #@2a
    .line 1393
    .local v12, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@2c
    .line 1394
    array-length v11, v5

    #@2d
    .line 1395
    .local v11, "mappingCount":I
    const/4 v8, 0x0

    #@2e
    .local v8, "k":I
    :goto_4
    if-ge v8, v11, :cond_0

    #@30
    .line 1396
    aget-object v9, v5, v8

    #@32
    .line 1397
    .local v9, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    #@35
    move-result v16

    #@36
    move/from16 v0, v16

    #@38
    if-ne v0, v7, :cond_6

    #@3a
    .line 1398
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    #@3d
    move-result-object v12

    #@3e
    .line 1404
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_0
    if-eqz v4, :cond_1

    #@40
    .line 1405
    array-length v11, v10

    #@41
    .line 1406
    .restart local v11    # "mappingCount":I
    const/4 v8, 0x0

    #@42
    .restart local v8    # "k":I
    :goto_5
    if-ge v8, v11, :cond_1

    #@44
    .line 1407
    aget-object v9, v10, v8

    #@46
    .line 1408
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    #@49
    move-result v16

    #@4a
    move/from16 v0, v16

    #@4c
    if-ne v0, v6, :cond_7

    #@4e
    .line 1409
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    #@51
    move-result-object v14

    #@52
    .line 1415
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_1
    if-eqz v13, :cond_8

    #@54
    .line 1416
    if-nez v14, :cond_2

    #@56
    move-object/from16 v0, p0

    #@58
    invoke-static {v0, v6}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    #@5b
    move-result-object v14

    #@5c
    check-cast v14, Ljava/lang/String;

    #@5e
    .line 1421
    :cond_2
    :goto_6
    move-object/from16 v0, p1

    #@60
    move-object/from16 v1, p4

    #@62
    move-object/from16 v2, p5

    #@64
    invoke-static {v0, v1, v12, v2, v14}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@67
    .line 1386
    add-int/lit8 v7, v7, 0x1

    #@69
    goto :goto_3

    #@6a
    .line 1378
    .end local v3    # "hasIndexMapping":Z
    .end local v4    # "hasMapping":Z
    .end local v6    # "intValue":I
    .end local v7    # "j":I
    .end local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "resolveId":Z
    .end local v15    # "valuesCount":I
    :cond_3
    const/4 v3, 0x0

    #@6b
    .restart local v3    # "hasIndexMapping":Z
    goto :goto_0

    #@6c
    .line 1381
    .restart local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    :cond_4
    const/4 v4, 0x0

    #@6d
    .restart local v4    # "hasMapping":Z
    goto :goto_1

    #@6e
    .line 1383
    :cond_5
    const/4 v13, 0x0

    #@6f
    .restart local v13    # "resolveId":Z
    goto :goto_2

    #@70
    .line 1395
    .restart local v6    # "intValue":I
    .restart local v7    # "j":I
    .restart local v8    # "k":I
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v11    # "mappingCount":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "value":Ljava/lang/String;
    .restart local v15    # "valuesCount":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    #@72
    goto :goto_4

    #@73
    .line 1406
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@75
    goto :goto_5

    #@76
    .line 1418
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@79
    move-result-object v14

    #@7a
    .local v14, "value":Ljava/lang/String;
    goto :goto_6

    #@7b
    .line 1375
    .end local v6    # "intValue":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .locals 9
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "mapping"    # [Landroid/view/ViewDebug$FlagToString;
    .param p2, "intValue"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1359
    array-length v0, p1

    #@1
    .line 1360
    .local v0, "count":I
    const/4 v3, 0x0

    #@2
    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_4

    #@4
    .line 1361
    aget-object v1, p1, v3

    #@6
    .line 1362
    .local v1, "flagMapping":Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    #@9
    move-result v2

    #@a
    .line 1363
    .local v2, "ifTrue":Z
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    #@d
    move-result v8

    #@e
    and-int v4, p2, v8

    #@10
    .line 1364
    .local v4, "maskResult":I
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    #@13
    move-result v8

    #@14
    if-ne v4, v8, :cond_2

    #@16
    const/4 v6, 0x1

    #@17
    .line 1365
    .local v6, "test":Z
    :goto_1
    if-eqz v6, :cond_0

    #@19
    if-nez v2, :cond_3

    #@1b
    :cond_0
    if-nez v6, :cond_1

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 1360
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1364
    .end local v6    # "test":Z
    :cond_2
    const/4 v6, 0x0

    #@23
    goto :goto_1

    #@24
    .line 1366
    .restart local v6    # "test":Z
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 1367
    .local v5, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    #@2b
    move-result-object v7

    #@2c
    .line 1368
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v8, ""

    #@2f
    invoke-static {p0, p3, v5, v8, v7}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@32
    goto :goto_2

    #@33
    .line 1357
    .end local v1    # "flagMapping":Landroid/view/ViewDebug$FlagToString;
    .end local v2    # "ifTrue":Z
    .end local v4    # "maskResult":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "test":Z
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 9
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 465
    const/16 v5, 0x40

    #@3
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v5

    #@7
    const/4 v6, -0x1

    #@8
    if-eq v5, v6, :cond_0

    #@a
    .line 466
    const-string/jumbo v5, "@"

    #@d
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 467
    .local v3, "ids":[Ljava/lang/String;
    const/4 v5, 0x0

    #@12
    aget-object v0, v3, v5

    #@14
    .line 468
    .local v0, "className":Ljava/lang/String;
    const/4 v5, 0x1

    #@15
    aget-object v5, v3, v5

    #@17
    const/16 v6, 0x10

    #@19
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@1c
    move-result-wide v6

    #@1d
    long-to-int v1, v6

    #@1e
    .line 470
    .local v1, "hashCode":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@21
    move-result-object v4

    #@22
    .line 471
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Landroid/view/ViewGroup;

    #@24
    if-eqz v5, :cond_1

    #@26
    .line 472
    nop

    #@27
    nop

    #@28
    .end local v4    # "view":Landroid/view/View;
    invoke-static {v4, v0, v1}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    #@2b
    move-result-object v5

    #@2c
    return-object v5

    #@2d
    .line 476
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "hashCode":I
    .end local v3    # "ids":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5, p1, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@34
    move-result v2

    #@35
    .line 477
    .local v2, "id":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3c
    move-result-object v5

    #@3d
    return-object v5

    #@3e
    .line 480
    .end local v2    # "id":I
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "hashCode":I
    .restart local v3    # "ids":[Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    return-object v8
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 6
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 921
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    #@4
    move-result v4

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 922
    return-object p0

    #@8
    .line 925
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@b
    move-result v0

    #@c
    .line 926
    .local v0, "count":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    #@f
    .line 927
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v3

    #@13
    .line 928
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    #@15
    if-eqz v4, :cond_1

    #@17
    move-object v4, v3

    #@18
    .line 929
    nop

    #@19
    nop

    #@1a
    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    #@1d
    move-result-object v1

    #@1e
    .line 930
    .local v1, "found":Landroid/view/View;
    if-eqz v1, :cond_2

    #@20
    .line 931
    return-object v1

    #@21
    .line 933
    .end local v1    # "found":Landroid/view/View;
    :cond_1
    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 934
    return-object v3

    #@28
    .line 936
    :cond_2
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    #@2a
    if-eqz v4, :cond_3

    #@2c
    .line 937
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    #@2e
    iget-object v4, v4, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    #@30
    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    #@33
    move-result-object v1

    #@34
    .line 939
    .restart local v1    # "found":Landroid/view/View;
    if-eqz v1, :cond_3

    #@36
    .line 940
    return-object v1

    #@37
    .line 943
    .end local v1    # "found":Landroid/view/View;
    :cond_3
    instance-of v4, v3, Landroid/view/ViewDebug$HierarchyHandler;

    #@39
    if-eqz v4, :cond_4

    #@3b
    .line 944
    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    #@3d
    .end local v3    # "view":Landroid/view/View;
    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    #@40
    move-result-object v1

    #@41
    .line 946
    .restart local v1    # "found":Landroid/view/View;
    if-eqz v1, :cond_4

    #@43
    .line 947
    return-object v1

    #@44
    .line 926
    .end local v1    # "found":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_0

    #@47
    .line 951
    :cond_5
    return-object v5
.end method

.method private static formatIntToHexString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "0x"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    #@1
    .line 1024
    sget-object v8, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    #@3
    if-nez v8, :cond_0

    #@5
    .line 1025
    new-instance v8, Ljava/util/HashMap;

    #@7
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@a
    sput-object v8, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    #@c
    .line 1027
    :cond_0
    sget-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    #@e
    if-nez v8, :cond_1

    #@10
    .line 1028
    new-instance v8, Ljava/util/HashMap;

    #@12
    const/16 v9, 0x200

    #@14
    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    #@17
    sput-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    #@19
    .line 1031
    :cond_1
    sget-object v6, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    #@1b
    .line 1033
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, [Ljava/lang/reflect/Field;

    #@21
    .line 1034
    .local v4, "fields":[Ljava/lang/reflect/Field;
    if-eqz v4, :cond_2

    #@23
    .line 1035
    return-object v4

    #@24
    .line 1039
    :cond_2
    const/4 v8, 0x0

    #@25
    :try_start_0
    invoke-virtual {p0, v8}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(Z)[Ljava/lang/reflect/Field;

    #@28
    move-result-object v1

    #@29
    .line 1040
    .local v1, "declaredFields":[Ljava/lang/reflect/Field;
    new-instance v5, Ljava/util/ArrayList;

    #@2b
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@2e
    .line 1041
    .local v5, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    array-length v9, v1

    #@2f
    move v8, v7

    #@30
    :goto_0
    if-ge v8, v9, :cond_4

    #@32
    aget-object v3, v1, v8

    #@34
    .line 1043
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@37
    move-result-object v7

    #@38
    if-eqz v7, :cond_3

    #@3a
    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    #@3c
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_3

    #@42
    .line 1044
    const/4 v7, 0x1

    #@43
    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    #@46
    .line 1045
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49
    .line 1046
    sget-object v10, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    #@4b
    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    #@4d
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@50
    move-result-object v7

    #@51
    check-cast v7, Landroid/view/ViewDebug$ExportedProperty;

    #@53
    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 1041
    :cond_3
    add-int/lit8 v7, v8, 0x1

    #@58
    move v8, v7

    #@59
    goto :goto_0

    #@5a
    .line 1049
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5d
    move-result v7

    #@5e
    new-array v7, v7, [Ljava/lang/reflect/Field;

    #@60
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@63
    move-result-object v7

    #@64
    move-object v0, v7

    #@65
    check-cast v0, [Ljava/lang/reflect/Field;

    #@67
    move-object v4, v0

    #@68
    .line 1050
    invoke-virtual {v6, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    .line 1055
    return-object v4

    #@6c
    .line 1051
    .end local v1    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v5    # "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    :catch_0
    move-exception v2

    #@6d
    .line 1052
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v7, Ljava/lang/AssertionError;

    #@6f
    invoke-direct {v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@72
    throw v7
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    #@1
    .line 1059
    sget-object v6, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 1060
    new-instance v6, Ljava/util/HashMap;

    #@7
    const/16 v7, 0x64

    #@9
    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    #@c
    sput-object v6, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    #@e
    .line 1062
    :cond_0
    sget-object v6, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    #@10
    if-nez v6, :cond_1

    #@12
    .line 1063
    new-instance v6, Ljava/util/HashMap;

    #@14
    const/16 v7, 0x200

    #@16
    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    #@19
    sput-object v6, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    #@1b
    .line 1066
    :cond_1
    sget-object v2, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    #@1d
    .line 1068
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, [Ljava/lang/reflect/Method;

    #@23
    .line 1069
    .local v4, "methods":[Ljava/lang/reflect/Method;
    if-eqz v4, :cond_2

    #@25
    .line 1070
    return-object v4

    #@26
    .line 1073
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    #@29
    move-result-object v4

    #@2a
    .line 1075
    new-instance v1, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2f
    .line 1076
    .local v1, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    array-length v7, v4

    #@30
    move v6, v5

    #@31
    :goto_0
    if-ge v6, v7, :cond_4

    #@33
    aget-object v3, v4, v6

    #@35
    .line 1079
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@38
    .line 1080
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 1085
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@3e
    move-result-object v5

    #@3f
    array-length v5, v5

    #@40
    if-nez v5, :cond_3

    #@42
    .line 1086
    const-class v5, Landroid/view/ViewDebug$ExportedProperty;

    #@44
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AbstractMethod;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@47
    move-result v5

    #@48
    .line 1085
    if-eqz v5, :cond_3

    #@4a
    .line 1087
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@4d
    move-result-object v5

    #@4e
    const-class v8, Ljava/lang/Void;

    #@50
    if-eq v5, v8, :cond_3

    #@52
    .line 1088
    const/4 v5, 0x1

    #@53
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    #@56
    .line 1089
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@59
    .line 1090
    sget-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    #@5b
    const-class v5, Landroid/view/ViewDebug$ExportedProperty;

    #@5d
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@60
    move-result-object v5

    #@61
    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    #@63
    invoke-virtual {v8, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    .line 1076
    :cond_3
    :goto_1
    add-int/lit8 v5, v6, 0x1

    #@68
    move v6, v5

    #@69
    goto :goto_0

    #@6a
    .line 1094
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6d
    move-result v5

    #@6e
    new-array v5, v5, [Ljava/lang/reflect/Method;

    #@70
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@73
    move-result-object v4

    #@74
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    check-cast v4, [Ljava/lang/reflect/Method;

    #@76
    .line 1095
    .restart local v4    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v2, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    .line 1097
    return-object v4

    #@7a
    .line 1081
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@7b
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_1
.end method

.method private static getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 897
    new-instance v6, Landroid/util/TypedValue;

    #@3
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    #@6
    .line 898
    .local v6, "outValue":Landroid/util/TypedValue;
    const-string/jumbo v5, "null"

    #@9
    .line 899
    .local v5, "nullString":Ljava/lang/String;
    const/4 v4, 0x0

    #@a
    .line 900
    .local v4, "i":I
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getAllAttributes()[I

    #@d
    move-result-object v1

    #@e
    .line 901
    .local v1, "attributes":[I
    array-length v7, v1

    #@f
    mul-int/lit8 v7, v7, 0x2

    #@11
    new-array v2, v7, [Ljava/lang/String;

    #@13
    .line 902
    .local v2, "data":[Ljava/lang/String;
    const/4 v7, 0x0

    #@14
    array-length v9, v1

    #@15
    move v8, v7

    #@16
    :goto_0
    if-ge v8, v9, :cond_2

    #@18
    aget v0, v1, v8

    #@1a
    .line 904
    .local v0, "attributeId":I
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    aput-object v7, v2, v4

    #@20
    .line 905
    add-int/lit8 v10, v4, 0x1

    #@22
    const/4 v7, 0x1

    #@23
    invoke-virtual {p1, v0, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_1

    #@29
    .line 906
    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@2c
    move-result-object v7

    #@2d
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    .line 905
    :goto_1
    aput-object v7, v2, v10

    #@33
    .line 907
    add-int/lit8 v4, v4, 0x2

    #@35
    .line 910
    iget v7, v6, Landroid/util/TypedValue;->type:I

    #@37
    if-ne v7, v11, :cond_0

    #@39
    .line 911
    add-int/lit8 v7, v4, -0x1

    #@3b
    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    #@3d
    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@40
    move-result-object v10

    #@41
    aput-object v10, v2, v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 902
    :cond_0
    :goto_2
    add-int/lit8 v7, v8, 0x1

    #@45
    move v8, v7

    #@46
    goto :goto_0

    #@47
    :cond_1
    move-object v7, v5

    #@48
    .line 906
    goto :goto_1

    #@49
    .line 917
    .end local v0    # "attributeId":I
    :cond_2
    return-object v2

    #@4a
    .line 913
    .restart local v0    # "attributeId":I
    :catch_0
    move-exception v3

    #@4b
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_2
.end method

.method public static getViewInstanceCount()J
    .locals 2

    #@0
    .prologue
    .line 373
    const-class v0, Landroid/view/View;

    #@2
    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .locals 2

    #@0
    .prologue
    .line 384
    const-class v0, Landroid/view/ViewRootImpl;

    #@2
    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 484
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 485
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 486
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    #@9
    .line 483
    :cond_0
    return-void
.end method

.method public static invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1619
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    #@2
    const/4 v0, 0x1

    #@3
    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@6
    .line 1620
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    #@8
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@b
    .line 1621
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@10
    .line 1623
    .local v5, "exception":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Landroid/view/ViewDebug$9;

    #@12
    move-object v2, p1

    #@13
    move-object v3, p0

    #@14
    move-object v4, p2

    #@15
    invoke-direct/range {v0 .. v6}, Landroid/view/ViewDebug$9;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    #@18
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@1b
    .line 1639
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 1644
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 1645
    new-instance v2, Ljava/lang/RuntimeException;

    #@26
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Ljava/lang/Throwable;

    #@2c
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2f
    throw v2

    #@30
    .line 1640
    :catch_0
    move-exception v7

    #@31
    .line 1641
    .local v7, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@33
    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@36
    throw v0

    #@37
    .line 1648
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    #@0
    .prologue
    .line 955
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v1

    #@4
    if-ne v1, p2, :cond_1

    #@6
    .line 956
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 957
    .local v0, "viewClassName":Ljava/lang/String;
    const-string/jumbo v1, "ViewOverlay"

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 958
    const-string/jumbo v1, "android.view.ViewOverlay$OverlayViewGroup"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    return v1

    #@1f
    .line 960
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    return v1

    #@24
    .line 963
    .end local v0    # "viewClassName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@25
    return v1
.end method

.method public static outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    #@7
    .line 741
    return-void
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 736
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 737
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    #@b
    .line 735
    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "captureView"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 779
    if-eqz p0, :cond_0

    #@4
    .line 780
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    #@6
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@9
    .line 781
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [Landroid/graphics/Bitmap;

    #@b
    .line 783
    .local v0, "cache":[Landroid/graphics/Bitmap;
    new-instance v3, Landroid/view/ViewDebug$6;

    #@d
    invoke-direct {v3, v2, v0, p0, p1}, Landroid/view/ViewDebug$6;-><init>(Ljava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;Landroid/view/View;Z)V

    #@10
    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@13
    .line 797
    const-wide/16 v4, 0xfa0

    #@15
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@17
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    #@1a
    .line 798
    const/4 v3, 0x0

    #@1b
    aget-object v3, v0, v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    return-object v3

    #@1e
    .line 799
    :catch_0
    move-exception v1

    #@1f
    .line 800
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "View"

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Could not complete the capture of the view "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 801
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    #@40
    .line 805
    .end local v0    # "cache":[Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    return-object v6
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 504
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    #@3
    move-result-object v3

    #@4
    .line 505
    .local v3, "view":Landroid/view/View;
    const/4 v1, 0x0

    #@5
    .line 507
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    #@7
    new-instance v4, Ljava/io/OutputStreamWriter;

    #@9
    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@c
    const v5, 0x8000

    #@f
    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 509
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    if-eqz v3, :cond_2

    #@14
    .line 510
    :try_start_1
    invoke-static {v3, v2}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    #@17
    .line 515
    :goto_0
    const-string/jumbo v4, "DONE."

    #@1a
    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1d
    .line 516
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@20
    .line 520
    if-eqz v2, :cond_0

    #@22
    .line 521
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    #@25
    :cond_0
    move-object v1, v2

    #@26
    .line 502
    .end local v2    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    #@27
    .line 512
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_2
    const-string/jumbo v4, "-1 -1 -1"

    #@2a
    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@2d
    .line 513
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    goto :goto_0

    #@31
    .line 517
    :catch_0
    move-exception v0

    #@32
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    #@33
    .line 518
    .end local v2    # "out":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string/jumbo v4, "View"

    #@36
    const-string/jumbo v5, "Problem profiling the view:"

    #@39
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    .line 520
    if-eqz v1, :cond_1

    #@3e
    .line 521
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    #@41
    goto :goto_1

    #@42
    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@43
    .line 520
    :goto_3
    if-eqz v1, :cond_3

    #@45
    .line 521
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    #@48
    .line 519
    :cond_3
    throw v4

    #@49
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    #@4a
    move-object v1, v2

    #@4b
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v1, "out":Ljava/io/BufferedWriter;
    goto :goto_3

    #@4c
    .line 517
    .local v1, "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    #@4d
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 529
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    #@4
    .line 528
    return-void
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v11, 0x20

    #@2
    const/4 v10, 0x0

    #@3
    .line 536
    if-nez p2, :cond_0

    #@5
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    #@7
    and-int/lit16 v9, v9, 0x800

    #@9
    if-eqz v9, :cond_3

    #@b
    .line 537
    :cond_0
    new-instance v9, Landroid/view/ViewDebug$2;

    #@d
    invoke-direct {v9, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    #@10
    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    #@13
    move-result-wide v6

    #@14
    .line 563
    .local v6, "durationMeasure":J
    :goto_0
    if-nez p2, :cond_1

    #@16
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    #@18
    and-int/lit16 v9, v9, 0x2000

    #@1a
    if-eqz v9, :cond_4

    #@1c
    .line 564
    :cond_1
    new-instance v9, Landroid/view/ViewDebug$3;

    #@1e
    invoke-direct {v9, p0}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/View;)V

    #@21
    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    #@24
    move-result-wide v4

    #@25
    .line 577
    .local v4, "durationLayout":J
    :goto_1
    if-nez p2, :cond_2

    #@27
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    #@2a
    move-result v9

    #@2b
    if-eqz v9, :cond_2

    #@2d
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    #@2f
    and-int/lit8 v9, v9, 0x20

    #@31
    if-eqz v9, :cond_5

    #@33
    .line 578
    :cond_2
    new-instance v9, Landroid/view/ViewDebug$4;

    #@35
    invoke-direct {v9, p0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;)V

    #@38
    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    #@3b
    move-result-wide v2

    #@3c
    .line 607
    .local v2, "durationDraw":J
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3f
    move-result-object v9

    #@40
    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@43
    .line 608
    invoke-virtual {p1, v11}, Ljava/io/BufferedWriter;->write(I)V

    #@46
    .line 609
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@4d
    .line 610
    invoke-virtual {p1, v11}, Ljava/io/BufferedWriter;->write(I)V

    #@50
    .line 611
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@57
    .line 612
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    #@5a
    .line 613
    instance-of v9, p0, Landroid/view/ViewGroup;

    #@5c
    if-eqz v9, :cond_6

    #@5e
    move-object v1, p0

    #@5f
    .line 614
    nop

    #@60
    nop

    #@61
    .line 615
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@64
    move-result v0

    #@65
    .line 616
    .local v0, "count":I
    const/4 v8, 0x0

    #@66
    .local v8, "i":I
    :goto_3
    if-ge v8, v0, :cond_6

    #@68
    .line 617
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@6b
    move-result-object v9

    #@6c
    invoke-static {v9, p1, v10}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    #@6f
    .line 616
    add-int/lit8 v8, v8, 0x1

    #@71
    goto :goto_3

    #@72
    .line 561
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "durationDraw":J
    .end local v4    # "durationLayout":J
    .end local v6    # "durationMeasure":J
    .end local v8    # "i":I
    :cond_3
    const-wide/16 v6, 0x0

    #@74
    .restart local v6    # "durationMeasure":J
    goto :goto_0

    #@75
    .line 575
    :cond_4
    const-wide/16 v4, 0x0

    #@77
    .restart local v4    # "durationLayout":J
    goto :goto_1

    #@78
    .line 606
    :cond_5
    const-wide/16 v2, 0x0

    #@7a
    .restart local v2    # "durationDraw":J
    goto :goto_2

    #@7b
    .line 533
    :cond_6
    return-void
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Landroid/view/ViewDebug$ViewOperation",
            "<TT;>;)J"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "operation":Landroid/view/ViewDebug$ViewOperation;, "Landroid/view/ViewDebug$ViewOperation<TT;>;"
    const-wide/16 v6, -0x1

    #@2
    const/4 v3, 0x1

    #@3
    .line 629
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    #@5
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@8
    .line 630
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [J

    #@a
    .line 632
    .local v0, "duration":[J
    new-instance v3, Landroid/view/ViewDebug$5;

    #@c
    invoke-direct {v3, v2, p1, v0}, Landroid/view/ViewDebug$5;-><init>(Ljava/util/concurrent/CountDownLatch;Landroid/view/ViewDebug$ViewOperation;[J)V

    #@f
    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@12
    .line 649
    const-wide/16 v4, 0xfa0

    #@14
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@16
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_0

    #@1c
    .line 650
    const-string/jumbo v3, "View"

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Could not complete the profiling of the view "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 651
    return-wide v6

    #@37
    .line 653
    :catch_0
    move-exception v1

    #@38
    .line 654
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "View"

    #@3b
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, "Could not complete the profiling of the view "

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 655
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    #@59
    .line 656
    return-wide v6

    #@5a
    .line 659
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v3, 0x0

    #@5b
    aget-wide v4, v0, v3

    #@5d
    return-wide v4
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 491
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 492
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 493
    new-instance v1, Landroid/view/ViewDebug$1;

    #@8
    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    #@b
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 490
    :cond_0
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1427
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v2

    #@4
    .line 1428
    .local v2, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    #@6
    .line 1430
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    const/16 v4, 0x2f

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    .line 1431
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 1430
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v1

    #@25
    .line 1438
    .local v1, "fieldValue":Ljava/lang/Object;
    :goto_0
    return-object v1

    #@26
    .line 1432
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@27
    .line 1433
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "id/"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-static {p1}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    goto :goto_0

    #@40
    .line 1436
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "NO_ID"

    #@43
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 1656
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v1

    #@4
    .line 1657
    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@b
    move-result-object v0

    #@c
    .line 1658
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@12
    if-eq v2, v3, :cond_0

    #@14
    .line 1659
    new-instance v2, Ljava/lang/RuntimeException;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Only integer layout parameters can be set. Field "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 1660
    const-string/jumbo v4, " is of type "

    #@29
    .line 1659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 1660
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 1659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2

    #@41
    .line 1663
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    #@48
    .line 1665
    new-instance v2, Landroid/view/ViewDebug$10;

    #@4a
    invoke-direct {v2, p0, v1}, Landroid/view/ViewDebug$10;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@4d
    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@50
    .line 1655
    return-void
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 424
    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 400
    return-void
.end method

.method public static stopHierarchyTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 431
    return-void
.end method

.method public static stopRecyclerTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 408
    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$HierarchyTraceType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 416
    return-void
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$RecyclerTraceType;
    .param p2, "parameters"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 392
    return-void
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
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

    #@0
    .prologue
    .line 1348
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3
    .line 1349
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6
    .line 1350
    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@9
    .line 1351
    const-string/jumbo v0, "="

    #@c
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@f
    .line 1352
    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    #@12
    .line 1353
    const/16 v0, 0x20

    #@14
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    #@17
    .line 1346
    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .locals 4
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1442
    if-eqz p1, :cond_0

    #@2
    .line 1443
    const-string/jumbo v0, "[EXCEPTION]"

    #@5
    .line 1445
    .local v0, "output":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, "\n"

    #@c
    const-string/jumbo v3, "\\n"

    #@f
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v0

    #@13
    .line 1447
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@16
    move-result v1

    #@17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1e
    .line 1448
    const-string/jumbo v1, ","

    #@21
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@24
    .line 1449
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@27
    .line 1441
    .end local v0    # "output":Ljava/lang/String;
    :goto_0
    return-void

    #@28
    .line 1446
    .restart local v0    # "output":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@29
    .line 1447
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2c
    move-result v2

    #@2d
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@34
    .line 1448
    const-string/jumbo v2, ","

    #@37
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3a
    .line 1449
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3d
    .line 1446
    throw v1

    #@3e
    .line 1452
    .end local v0    # "output":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "4,null"

    #@41
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@44
    goto :goto_0
.end method
