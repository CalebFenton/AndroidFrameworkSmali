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
.field private static final KEY_NATIVE_SAVED_STATE:Ljava/lang/String; = "android:native_state"

.field public static final META_DATA_FUNC_NAME:Ljava/lang/String; = "android.app.func_name"

.field public static final META_DATA_LIB_NAME:Ljava/lang/String; = "android.app.lib_name"


# instance fields
.field private mCurInputQueue:Landroid/view/InputQueue;

.field private mCurSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mDestroyed:Z

.field private mDispatchingUnhandledKey:Z

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mLastContentHeight:I

.field mLastContentWidth:I

.field mLastContentX:I

.field mLastContentY:I

.field final mLocation:[I

.field private mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 86
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    #@8
    .line 59
    return-void
.end method

.method private static getAbsolutePath(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 189
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :cond_0
    return-object v0
.end method

.method private native getDlError()Ljava/lang/String;
.end method

.method private native loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J
.end method

.method private native onConfigurationChangedNative(J)V
.end method

.method private native onContentRectChangedNative(JIIII)V
.end method

.method private native onInputQueueCreatedNative(JJ)V
.end method

.method private native onInputQueueDestroyedNative(JJ)V
.end method

.method private native onLowMemoryNative(J)V
.end method

.method private native onPauseNative(J)V
.end method

.method private native onResumeNative(J)V
.end method

.method private native onSaveInstanceStateNative(J)[B
.end method

.method private native onStartNative(J)V
.end method

.method private native onStopNative(J)V
.end method

.method private native onSurfaceChangedNative(JLandroid/view/Surface;III)V
.end method

.method private native onSurfaceCreatedNative(JLandroid/view/Surface;)V
.end method

.method private native onSurfaceDestroyedNative(J)V
.end method

.method private native onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V
.end method

.method private native onWindowFocusChangedNative(JZ)V
.end method

.method private native unloadNativeCode(J)V
.end method


# virtual methods
.method hideIme(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@4
    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getWindowToken()Landroid/os/IBinder;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@b
    .line 335
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 243
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 244
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@9
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onConfigurationChangedNative(J)V

    #@c
    .line 241
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 132
    const-string/jumbo v16, "main"

    #@3
    .line 133
    .local v16, "libname":Ljava/lang/String;
    const-string/jumbo v4, "ANativeActivity_onCreate"

    #@6
    .line 136
    .local v4, "funcname":Ljava/lang/String;
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    #@8
    move-object/from16 v0, p0

    #@a
    invoke-virtual {v0, v2}, Landroid/app/NativeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    #@10
    move-object/from16 v0, p0

    #@12
    iput-object v2, v0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@14
    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@17
    move-result-object v2

    #@18
    move-object/from16 v0, p0

    #@1a
    invoke-virtual {v2, v0}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    #@1d
    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@20
    move-result-object v2

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v2, v0}, Landroid/view/Window;->takeInputQueue(Landroid/view/InputQueue$Callback;)V

    #@26
    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@29
    move-result-object v2

    #@2a
    const/4 v5, 0x4

    #@2b
    invoke-virtual {v2, v5}, Landroid/view/Window;->setFormat(I)V

    #@2e
    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@31
    move-result-object v2

    #@32
    .line 142
    const/16 v5, 0x10

    #@34
    .line 141
    invoke-virtual {v2, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    #@37
    .line 145
    new-instance v2, Landroid/app/NativeActivity$NativeContentView;

    #@39
    move-object/from16 v0, p0

    #@3b
    invoke-direct {v2, v0}, Landroid/app/NativeActivity$NativeContentView;-><init>(Landroid/content/Context;)V

    #@3e
    move-object/from16 v0, p0

    #@40
    iput-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@42
    .line 146
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@46
    move-object/from16 v0, p0

    #@48
    iput-object v0, v2, Landroid/app/NativeActivity$NativeContentView;->mActivity:Landroid/app/NativeActivity;

    #@4a
    .line 147
    move-object/from16 v0, p0

    #@4c
    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@4e
    move-object/from16 v0, p0

    #@50
    invoke-virtual {v0, v2}, Landroid/app/NativeActivity;->setContentView(Landroid/view/View;)V

    #@53
    .line 148
    move-object/from16 v0, p0

    #@55
    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@57
    invoke-virtual {v2}, Landroid/app/NativeActivity$NativeContentView;->requestFocus()Z

    #@5a
    .line 149
    move-object/from16 v0, p0

    #@5c
    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@5e
    invoke-virtual {v2}, Landroid/app/NativeActivity$NativeContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@61
    move-result-object v2

    #@62
    move-object/from16 v0, p0

    #@64
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@67
    .line 152
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6a
    move-result-object v2

    #@6b
    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getIntent()Landroid/content/Intent;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@72
    move-result-object v5

    #@73
    const/16 v6, 0x80

    #@75
    .line 152
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@78
    move-result-object v14

    #@79
    .line 154
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@7b
    if-eqz v2, :cond_1

    #@7d
    .line 155
    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@7f
    const-string/jumbo v5, "android.app.lib_name"

    #@82
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@85
    move-result-object v17

    #@86
    .line 156
    .local v17, "ln":Ljava/lang/String;
    if-eqz v17, :cond_0

    #@88
    move-object/from16 v16, v17

    #@8a
    .line 157
    :cond_0
    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@8c
    const-string/jumbo v5, "android.app.func_name"

    #@8f
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@92
    move-result-object v17

    #@93
    .line 158
    if-eqz v17, :cond_1

    #@95
    move-object/from16 v4, v17

    #@97
    .line 164
    .end local v17    # "ln":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getClassLoader()Ljava/lang/ClassLoader;

    #@9a
    move-result-object v12

    #@9b
    check-cast v12, Ldalvik/system/BaseDexClassLoader;

    #@9d
    .line 165
    .local v12, "classLoader":Ldalvik/system/BaseDexClassLoader;
    move-object/from16 v0, v16

    #@9f
    invoke-virtual {v12, v0}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    #@a2
    move-result-object v3

    #@a3
    .line 167
    .local v3, "path":Ljava/lang/String;
    if-nez v3, :cond_2

    #@a5
    .line 168
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a7
    new-instance v5, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v6, "Unable to find native library "

    #@af
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    move-object/from16 v0, v16

    #@b5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v5

    #@b9
    .line 169
    const-string/jumbo v6, " using classloader: "

    #@bc
    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v5

    #@c0
    .line 169
    invoke-virtual {v12}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    #@c3
    move-result-object v6

    #@c4
    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v5

    #@c8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v5

    #@cc
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cf
    throw v2

    #@d0
    .line 160
    .end local v3    # "path":Ljava/lang/String;
    .end local v12    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v15

    #@d1
    .line 161
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@d3
    const-string/jumbo v5, "Error getting activity info"

    #@d6
    invoke-direct {v2, v5, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d9
    throw v2

    #@da
    .line 172
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v12    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2
    if-eqz p1, :cond_3

    #@dc
    .line 173
    const-string/jumbo v2, "android:native_state"

    #@df
    move-object/from16 v0, p1

    #@e1
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@e4
    move-result-object v11

    #@e5
    .line 175
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@e8
    move-result-object v5

    #@e9
    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getFilesDir()Ljava/io/File;

    #@ec
    move-result-object v2

    #@ed
    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@f0
    move-result-object v6

    #@f1
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getObbDir()Ljava/io/File;

    #@f4
    move-result-object v2

    #@f5
    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@f8
    move-result-object v7

    #@f9
    .line 177
    const/4 v2, 0x0

    #@fa
    move-object/from16 v0, p0

    #@fc
    invoke-virtual {v0, v2}, Landroid/app/NativeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@ff
    move-result-object v2

    #@100
    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@103
    move-result-object v8

    #@104
    .line 178
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    #@106
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getAssets()Landroid/content/res/AssetManager;

    #@109
    move-result-object v10

    #@10a
    .line 179
    invoke-virtual {v12}, Ldalvik/system/BaseDexClassLoader;->getLdLibraryPath()Ljava/lang/String;

    #@10d
    move-result-object v13

    #@10e
    move-object/from16 v2, p0

    #@110
    .line 175
    invoke-direct/range {v2 .. v13}, Landroid/app/NativeActivity;->loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J

    #@113
    move-result-wide v6

    #@114
    move-object/from16 v0, p0

    #@116
    iput-wide v6, v0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@118
    .line 181
    move-object/from16 v0, p0

    #@11a
    iget-wide v6, v0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@11c
    const-wide/16 v8, 0x0

    #@11e
    cmp-long v2, v6, v8

    #@120
    if-nez v2, :cond_4

    #@122
    .line 182
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    #@124
    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v6, "Unable to load native library \""

    #@12c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v5

    #@130
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v5

    #@134
    const-string/jumbo v6, "\": "

    #@137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v5

    #@13b
    invoke-direct/range {p0 .. p0}, Landroid/app/NativeActivity;->getDlError()Ljava/lang/String;

    #@13e
    move-result-object v6

    #@13f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v5

    #@143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v5

    #@147
    .line 182
    invoke-direct {v2, v5}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    #@14a
    throw v2

    #@14b
    .line 173
    :cond_3
    const/4 v11, 0x0

    #@14c
    .local v11, "nativeSavedState":[B
    goto :goto_0

    #@14d
    .line 185
    .end local v11    # "nativeSavedState":[B
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@150
    .line 131
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 194
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@4
    .line 195
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 196
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@a
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    #@d
    .line 197
    iput-object v4, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@f
    .line 199
    :cond_0
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 200
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@15
    iget-object v2, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    #@17
    invoke-virtual {v2}, Landroid/view/InputQueue;->getNativePtr()J

    #@1a
    move-result-wide v2

    #@1b
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    #@1e
    .line 201
    iput-object v4, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    #@20
    .line 203
    :cond_1
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@22
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->unloadNativeCode(J)V

    #@25
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@28
    .line 193
    return-void
.end method

.method public onGlobalLayout()V
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 307
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@4
    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    #@6
    invoke-virtual {v1, v2}, Landroid/app/NativeActivity$NativeContentView;->getLocationInWindow([I)V

    #@9
    .line 308
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@b
    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getWidth()I

    #@e
    move-result v8

    #@f
    .line 309
    .local v8, "w":I
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@11
    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getHeight()I

    #@14
    move-result v0

    #@15
    .line 310
    .local v0, "h":I
    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    #@17
    aget v1, v1, v3

    #@19
    iget v2, p0, Landroid/app/NativeActivity;->mLastContentX:I

    #@1b
    if-ne v1, v2, :cond_0

    #@1d
    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    #@1f
    aget v1, v1, v4

    #@21
    iget v2, p0, Landroid/app/NativeActivity;->mLastContentY:I

    #@23
    if-eq v1, v2, :cond_2

    #@25
    .line 312
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    #@27
    aget v1, v1, v3

    #@29
    iput v1, p0, Landroid/app/NativeActivity;->mLastContentX:I

    #@2b
    .line 313
    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    #@2d
    aget v1, v1, v4

    #@2f
    iput v1, p0, Landroid/app/NativeActivity;->mLastContentY:I

    #@31
    .line 314
    iput v8, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    #@33
    .line 315
    iput v0, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    #@35
    .line 316
    iget-boolean v1, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@37
    if-nez v1, :cond_1

    #@39
    .line 317
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@3b
    iget v4, p0, Landroid/app/NativeActivity;->mLastContentX:I

    #@3d
    .line 318
    iget v5, p0, Landroid/app/NativeActivity;->mLastContentY:I

    #@3f
    iget v6, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    #@41
    iget v7, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    #@43
    move-object v1, p0

    #@44
    .line 317
    invoke-direct/range {v1 .. v7}, Landroid/app/NativeActivity;->onContentRectChangedNative(JIIII)V

    #@47
    .line 306
    :cond_1
    return-void

    #@48
    .line 311
    :cond_2
    iget v1, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    #@4a
    if-ne v8, v1, :cond_0

    #@4c
    iget v1, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    #@4e
    if-eq v0, v1, :cond_1

    #@50
    goto :goto_0
.end method

.method public onInputQueueCreated(Landroid/view/InputQueue;)V
    .locals 4
    .param p1, "queue"    # Landroid/view/InputQueue;

    #@0
    .prologue
    .line 293
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 294
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    #@6
    .line 295
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@8
    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    #@b
    move-result-wide v2

    #@c
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueCreatedNative(JJ)V

    #@f
    .line 292
    :cond_0
    return-void
.end method

.method public onInputQueueDestroyed(Landroid/view/InputQueue;)V
    .locals 4
    .param p1, "queue"    # Landroid/view/InputQueue;

    #@0
    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 301
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@6
    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    #@9
    move-result-wide v2

    #@a
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    #@d
    .line 302
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    #@10
    .line 299
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    #@0
    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    #@3
    .line 251
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 252
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@9
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onLowMemoryNative(J)V

    #@c
    .line 249
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    #@0
    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    #@3
    .line 210
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onPauseNative(J)V

    #@8
    .line 208
    return-void
.end method

.method protected onResume()V
    .locals 2

    #@0
    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    #@3
    .line 216
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onResumeNative(J)V

    #@8
    .line 214
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 222
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/app/NativeActivity;->onSaveInstanceStateNative(J)[B

    #@8
    move-result-object v0

    #@9
    .line 223
    .local v0, "state":[B
    if-eqz v0, :cond_0

    #@b
    .line 224
    const-string/jumbo v1, "android:native_state"

    #@e
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@11
    .line 220
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    #@0
    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    #@3
    .line 231
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStartNative(J)V

    #@8
    .line 229
    return-void
.end method

.method protected onStop()V
    .locals 2

    #@0
    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    #@3
    .line 237
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStopNative(J)V

    #@8
    .line 235
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    #@3
    .line 259
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 260
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@9
    invoke-direct {p0, v0, v1, p1}, Landroid/app/NativeActivity;->onWindowFocusChangedNative(JZ)V

    #@c
    .line 257
    :cond_0
    return-void
.end method

.method setWindowFlags(II)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    #@7
    .line 323
    return-void
.end method

.method setWindowFormat(I)V
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    #@7
    .line 327
    return-void
.end method

.method showIme(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@7
    .line 331
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 272
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 273
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@6
    .line 274
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@b
    move-result-object v4

    #@c
    move-object v1, p0

    #@d
    move v5, p2

    #@e
    move v6, p3

    #@f
    move v7, p4

    #@10
    invoke-direct/range {v1 .. v7}, Landroid/app/NativeActivity;->onSurfaceChangedNative(JLandroid/view/Surface;III)V

    #@13
    .line 271
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 265
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 266
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@6
    .line 267
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, v0, v1, v2}, Landroid/app/NativeActivity;->onSurfaceCreatedNative(JLandroid/view/Surface;)V

    #@f
    .line 264
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 286
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@3
    .line 287
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 288
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@9
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    #@c
    .line 285
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 280
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@6
    .line 281
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, v0, v1, v2}, Landroid/app/NativeActivity;->onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V

    #@f
    .line 278
    :cond_0
    return-void
.end method
