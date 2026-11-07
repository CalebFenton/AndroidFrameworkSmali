.class public Landroid/app/NativeActivity;
.super Landroid/app/Activity;
.source "NativeActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Landroid/view/InputQueue$Callback;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NativeActivity$NativeContentView;
    }
.end annotation


# static fields
.field private static final greylist-max-o KEY_NATIVE_SAVED_STATE:Ljava/lang/String; = "android:native_state"

.field public static final whitelist META_DATA_FUNC_NAME:Ljava/lang/String; = "android.app.func_name"

.field public static final whitelist META_DATA_LIB_NAME:Ljava/lang/String; = "android.app.lib_name"


# instance fields
.field private greylist-max-o mCurInputQueue:Landroid/view/InputQueue;

.field private greylist-max-o mCurSurfaceHolder:Landroid/view/SurfaceHolder;

.field private greylist-max-o mDestroyed:Z

.field private greylist-max-o mDispatchingUnhandledKey:Z

.field private greylist-max-o mIMM:Landroid/view/inputmethod/InputMethodManager;

.field greylist-max-o mLastContentHeight:I

.field greylist-max-o mLastContentWidth:I

.field greylist-max-o mLastContentX:I

.field greylist-max-o mLastContentY:I

.field final greylist-max-o mLocation:[I

.field private greylist-max-o mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

.field private greylist-max-r mNativeHandle:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    return-void
.end method

.method private static greylist-max-o getAbsolutePath(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 184
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private native greylist-max-o getDlError()Ljava/lang/String;
.end method

.method private native greylist-max-r loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J
.end method

.method private native greylist-max-o onConfigurationChangedNative(J)V
.end method

.method private native greylist-max-o onContentRectChangedNative(JIIII)V
.end method

.method private native greylist-max-o onInputQueueCreatedNative(JJ)V
.end method

.method private native greylist-max-o onInputQueueDestroyedNative(JJ)V
.end method

.method private native greylist-max-o onLowMemoryNative(J)V
.end method

.method private native greylist-max-o onPauseNative(J)V
.end method

.method private native greylist-max-o onResumeNative(J)V
.end method

.method private native greylist-max-o onSaveInstanceStateNative(J)[B
.end method

.method private native greylist-max-o onStartNative(J)V
.end method

.method private native greylist-max-o onStopNative(J)V
.end method

.method private native greylist-max-o onSurfaceChangedNative(JLandroid/view/Surface;III)V
.end method

.method private native greylist-max-o onSurfaceCreatedNative(JLandroid/view/Surface;)V
.end method

.method private native greylist-max-o onSurfaceDestroyedNative(J)V
.end method

.method private native greylist-max-o onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V
.end method

.method private native greylist-max-o onWindowFocusChangedNative(JZ)V
.end method

.method private native greylist-max-o unloadNativeCode(J)V
.end method


# virtual methods
.method greylist-max-r hideIme(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 335
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 336
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_c

    .line 239
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onConfigurationChangedNative(J)V

    .line 241
    :cond_c
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 127
    move-object/from16 v1, p0

    move-object/from16 v13, p1

    const-string/jumbo v2, "main"

    .line 128
    .local v2, "libname":Ljava/lang/String;
    const-string v3, "ANativeActivity_onCreate"

    .line 131
    .local v3, "funcname":Ljava/lang/String;
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Landroid/app/NativeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, v1, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 133
    invoke-virtual {v1}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 134
    invoke-virtual {v1}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->takeInputQueue(Landroid/view/InputQueue$Callback;)V

    .line 135
    invoke-virtual {v1}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/Window;->setFormat(I)V

    .line 136
    invoke-virtual {v1}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 140
    new-instance v0, Landroid/app/NativeActivity$NativeContentView;

    invoke-direct {v0, v1}, Landroid/app/NativeActivity$NativeContentView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 141
    iget-object v0, v1, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    iput-object v1, v0, Landroid/app/NativeActivity$NativeContentView;->mActivity:Landroid/app/NativeActivity;

    .line 142
    iget-object v0, v1, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1, v0}, Landroid/app/NativeActivity;->setContentView(Landroid/view/View;)V

    .line 143
    iget-object v0, v1, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->requestFocus()Z

    .line 144
    iget-object v0, v1, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 147
    :try_start_50
    invoke-virtual {v1}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 148
    invoke-virtual {v1}, Landroid/app/NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 147
    const/16 v5, 0x80

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 149
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_7e

    .line 150
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.app.lib_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "ln":Ljava/lang/String;
    if-eqz v4, :cond_71

    move-object v2, v4

    .line 152
    :cond_71
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.app.func_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_79} :catch_124

    .line 153
    .end local v4    # "ln":Ljava/lang/String;
    .local v5, "ln":Ljava/lang/String;
    if-eqz v5, :cond_7c

    move-object v3, v5

    :cond_7c
    move-object v14, v2

    goto :goto_7f

    .line 149
    .end local v5    # "ln":Ljava/lang/String;
    :cond_7e
    move-object v14, v2

    .line 157
    .end local v2    # "libname":Ljava/lang/String;
    .local v14, "libname":Ljava/lang/String;
    :goto_7f
    nop

    .line 159
    invoke-virtual {v1}, Landroid/app/NativeActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ldalvik/system/BaseDexClassLoader;

    .line 160
    .local v11, "classLoader":Ldalvik/system/BaseDexClassLoader;
    invoke-virtual {v11, v14}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_fd

    .line 167
    const/4 v4, 0x0

    if-eqz v13, :cond_98

    .line 168
    const-string v5, "android:native_state"

    invoke-virtual {v13, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    move-object v10, v5

    goto :goto_99

    :cond_98
    move-object v10, v4

    .line 170
    .local v10, "nativeSavedState":[B
    :goto_99
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v5

    .line 171
    invoke-virtual {v1}, Landroid/app/NativeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/app/NativeActivity;->getObbDir()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-virtual {v1, v4}, Landroid/app/NativeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 173
    invoke-virtual {v1}, Landroid/app/NativeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    .line 174
    invoke-virtual {v11}, Ldalvik/system/BaseDexClassLoader;->getLdLibraryPath()Ljava/lang/String;

    move-result-object v12

    .line 170
    move-object v15, v7

    move-object v7, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v12}, Landroid/app/NativeActivity;->loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 176
    iget-wide v4, v1, Landroid/app/NativeActivity;->mNativeHandle:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d6

    .line 180
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    return-void

    .line 177
    :cond_d6
    new-instance v4, Ljava/lang/UnsatisfiedLinkError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load native library \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 178
    invoke-direct {v1}, Landroid/app/NativeActivity;->getDlError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 163
    .end local v10    # "nativeSavedState":[B
    :cond_fd
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find native library "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " using classloader: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 164
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    .end local v14    # "libname":Ljava/lang/String;
    .local v2, "libname":Ljava/lang/String;
    :catch_124
    move-exception v0

    .line 156
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error getting activity info"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected whitelist onDestroy()V
    .registers 7

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 190
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 191
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v2, v3}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    .line 192
    iput-object v1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 194
    :cond_f
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_20

    .line 195
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v0}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    .line 196
    iput-object v1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 198
    :cond_20
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->unloadNativeCode(J)V

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 200
    return-void
.end method

.method public whitelist onGlobalLayout()V
    .registers 11

    .line 302
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity$NativeContentView;->getLocationInWindow([I)V

    .line 303
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getWidth()I

    move-result v0

    .line 304
    .local v0, "w":I
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getHeight()I

    move-result v1

    .line 305
    .local v1, "h":I
    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget v4, p0, Landroid/app/NativeActivity;->mLastContentX:I

    const/4 v5, 0x1

    if-ne v2, v4, :cond_2d

    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v2, v2, v5

    iget v4, p0, Landroid/app/NativeActivity;->mLastContentY:I

    if-ne v2, v4, :cond_2d

    iget v2, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    if-ne v0, v2, :cond_2d

    iget v2, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    if-eq v1, v2, :cond_4f

    .line 307
    :cond_2d
    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v2, v2, v3

    iput v2, p0, Landroid/app/NativeActivity;->mLastContentX:I

    .line 308
    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v2, v2, v5

    iput v2, p0, Landroid/app/NativeActivity;->mLastContentY:I

    .line 309
    iput v0, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    .line 310
    iput v1, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    .line 311
    iget-boolean v2, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v2, :cond_4f

    .line 312
    iget-wide v4, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    iget v6, p0, Landroid/app/NativeActivity;->mLastContentX:I

    iget v7, p0, Landroid/app/NativeActivity;->mLastContentY:I

    iget v8, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    iget v9, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/app/NativeActivity;->onContentRectChangedNative(JIIII)V

    .line 316
    :cond_4f
    return-void
.end method

.method public whitelist onInputQueueCreated(Landroid/view/InputQueue;)V
    .registers 6
    .param p1, "queue"    # Landroid/view/InputQueue;

    .line 288
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_f

    .line 289
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 290
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueCreatedNative(JJ)V

    .line 292
    :cond_f
    return-void
.end method

.method public whitelist onInputQueueDestroyed(Landroid/view/InputQueue;)V
    .registers 6
    .param p1, "queue"    # Landroid/view/InputQueue;

    .line 295
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_10

    .line 296
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 299
    :cond_10
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 3

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 246
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_c

    .line 247
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onLowMemoryNative(J)V

    .line 249
    :cond_c
    return-void
.end method

.method protected whitelist onPause()V
    .registers 3

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 205
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onPauseNative(J)V

    .line 206
    return-void
.end method

.method protected whitelist onResume()V
    .registers 3

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onResumeNative(J)V

    .line 212
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 217
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSaveInstanceStateNative(J)[B

    move-result-object v0

    .line 218
    .local v0, "state":[B
    if-eqz v0, :cond_10

    .line 219
    const-string v1, "android:native_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 221
    :cond_10
    return-void
.end method

.method protected whitelist onStart()V
    .registers 3

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 226
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStartNative(J)V

    .line 227
    return-void
.end method

.method protected whitelist onStop()V
    .registers 3

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 232
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStopNative(J)V

    .line 233
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .line 253
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 254
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_c

    .line 255
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Landroid/app/NativeActivity;->onWindowFocusChangedNative(JZ)V

    .line 257
    :cond_c
    return-void
.end method

.method greylist-max-r setWindowFlags(II)V
    .registers 4
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 320
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    .line 321
    return-void
.end method

.method greylist-max-r setWindowFormat(I)V
    .registers 3
    .param p1, "format"    # I

    .line 325
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 326
    return-void
.end method

.method greylist-max-r showIme(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 330
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 331
    return-void
.end method

.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 13
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 267
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_14

    .line 268
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 269
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p2    # "format":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .local v5, "format":I
    .local v6, "width":I
    .local v7, "height":I
    invoke-direct/range {v1 .. v7}, Landroid/app/NativeActivity;->onSurfaceChangedNative(JLandroid/view/Surface;III)V

    goto :goto_17

    .line 267
    .end local v5    # "format":I
    .end local v6    # "width":I
    .end local v7    # "height":I
    .restart local p2    # "format":I
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    :cond_14
    move v5, p2

    move v6, p3

    move v7, p4

    .line 271
    .end local p2    # "format":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .restart local v5    # "format":I
    .restart local v6    # "width":I
    .restart local v7    # "height":I
    :goto_17
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 260
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_f

    .line 261
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 262
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NativeActivity;->onSurfaceCreatedNative(JLandroid/view/Surface;)V

    .line 264
    :cond_f
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 282
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_c

    .line 283
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    .line 285
    :cond_c
    return-void
.end method

.method public whitelist surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 274
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_f

    .line 275
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 276
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NativeActivity;->onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V

    .line 278
    :cond_f
    return-void
.end method
