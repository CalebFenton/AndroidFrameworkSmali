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
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 84
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    #@8
    .line 57
    return-void
.end method

.method private static getAbsolutePath(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 188
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :cond_0
    return-object v0
.end method

.method private native loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[B)J
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
    .line 335
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
    .line 334
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 242
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 243
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@9
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onConfigurationChangedNative(J)V

    #@c
    .line 240
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 129
    const-string/jumbo v14, "main"

    #@3
    .line 130
    .local v14, "libname":Ljava/lang/String;
    const-string/jumbo v4, "ANativeActivity_onCreate"

    #@6
    .line 133
    .local v4, "funcname":Ljava/lang/String;
    const-string/jumbo v2, "input_method"

    #@9
    move-object/from16 v0, p0

    #@b
    invoke-virtual {v0, v2}, Landroid/app/NativeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    #@11
    move-object/from16 v0, p0

    #@13
    iput-object v2, v0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@15
    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@18
    move-result-object v2

    #@19
    move-object/from16 v0, p0

    #@1b
    invoke-virtual {v2, v0}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    #@1e
    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@21
    move-result-object v2

    #@22
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v2, v0}, Landroid/view/Window;->takeInputQueue(Landroid/view/InputQueue$Callback;)V

    #@27
    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@2a
    move-result-object v2

    #@2b
    const/4 v5, 0x4

    #@2c
    invoke-virtual {v2, v5}, Landroid/view/Window;->setFormat(I)V

    #@2f
    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@32
    move-result-object v2

    #@33
    .line 139
    const/16 v5, 0x10

    #@35
    .line 138
    invoke-virtual {v2, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    #@38
    .line 142
    new-instance v2, Landroid/app/NativeActivity$NativeContentView;

    #@3a
    move-object/from16 v0, p0

    #@3c
    invoke-direct {v2, v0}, Landroid/app/NativeActivity$NativeContentView;-><init>(Landroid/content/Context;)V

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@43
    .line 143
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@47
    move-object/from16 v0, p0

    #@49
    iput-object v0, v2, Landroid/app/NativeActivity$NativeContentView;->mActivity:Landroid/app/NativeActivity;

    #@4b
    .line 144
    move-object/from16 v0, p0

    #@4d
    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@4f
    move-object/from16 v0, p0

    #@51
    invoke-virtual {v0, v2}, Landroid/app/NativeActivity;->setContentView(Landroid/view/View;)V

    #@54
    .line 145
    move-object/from16 v0, p0

    #@56
    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@58
    invoke-virtual {v2}, Landroid/app/NativeActivity$NativeContentView;->requestFocus()Z

    #@5b
    .line 146
    move-object/from16 v0, p0

    #@5d
    iget-object v2, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@5f
    invoke-virtual {v2}, Landroid/app/NativeActivity$NativeContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@62
    move-result-object v2

    #@63
    move-object/from16 v0, p0

    #@65
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@68
    .line 149
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6b
    move-result-object v2

    #@6c
    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getIntent()Landroid/content/Intent;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@73
    move-result-object v5

    #@74
    const/16 v6, 0x80

    #@76
    .line 149
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@79
    move-result-object v12

    #@7a
    .line 151
    .local v12, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@7c
    if-eqz v2, :cond_1

    #@7e
    .line 152
    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@80
    const-string/jumbo v5, "android.app.lib_name"

    #@83
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v16

    #@87
    .line 153
    .local v16, "ln":Ljava/lang/String;
    if-eqz v16, :cond_0

    #@89
    move-object/from16 v14, v16

    #@8b
    .line 154
    :cond_0
    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@8d
    const-string/jumbo v5, "android.app.func_name"

    #@90
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    move-result-object v16

    #@94
    .line 155
    if-eqz v16, :cond_1

    #@96
    move-object/from16 v4, v16

    #@98
    .line 161
    .end local v16    # "ln":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    #@99
    .line 163
    .local v3, "path":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    #@9b
    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9d
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@9f
    .line 164
    invoke-static {v14}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    .line 163
    invoke-direct {v15, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a6
    .line 165
    .local v15, "libraryFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    #@a9
    move-result v2

    #@aa
    if-eqz v2, :cond_2

    #@ac
    .line 166
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@af
    move-result-object v3

    #@b0
    .line 169
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    #@b2
    .line 170
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b4
    new-instance v5, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v6, "Unable to find native library: "

    #@bc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v5

    #@c0
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v5

    #@c4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v5

    #@c8
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cb
    throw v2

    #@cc
    .line 157
    .end local v12    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v15    # "libraryFile":Ljava/io/File;
    :catch_0
    move-exception v13

    #@cd
    .line 158
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@cf
    const-string/jumbo v5, "Error getting activity info"

    #@d2
    invoke-direct {v2, v5, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d5
    throw v2

    #@d6
    .line 173
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "libraryFile":Ljava/io/File;
    :cond_3
    if-eqz p1, :cond_4

    #@d8
    .line 174
    const-string/jumbo v2, "android:native_state"

    #@db
    move-object/from16 v0, p1

    #@dd
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@e0
    move-result-object v11

    #@e1
    .line 176
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@e4
    move-result-object v5

    #@e5
    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getFilesDir()Ljava/io/File;

    #@e8
    move-result-object v2

    #@e9
    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@ec
    move-result-object v6

    #@ed
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getObbDir()Ljava/io/File;

    #@f0
    move-result-object v2

    #@f1
    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@f4
    move-result-object v7

    #@f5
    .line 178
    const/4 v2, 0x0

    #@f6
    move-object/from16 v0, p0

    #@f8
    invoke-virtual {v0, v2}, Landroid/app/NativeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@fb
    move-result-object v2

    #@fc
    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    #@ff
    move-result-object v8

    #@100
    .line 179
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    #@102
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getAssets()Landroid/content/res/AssetManager;

    #@105
    move-result-object v10

    #@106
    move-object/from16 v2, p0

    #@108
    .line 176
    invoke-direct/range {v2 .. v11}, Landroid/app/NativeActivity;->loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[B)J

    #@10b
    move-result-wide v6

    #@10c
    move-object/from16 v0, p0

    #@10e
    iput-wide v6, v0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@110
    .line 181
    move-object/from16 v0, p0

    #@112
    iget-wide v6, v0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@114
    const-wide/16 v8, 0x0

    #@116
    cmp-long v2, v6, v8

    #@118
    if-nez v2, :cond_5

    #@11a
    .line 182
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11c
    new-instance v5, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    const-string/jumbo v6, "Unable to load native library: "

    #@124
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v5

    #@128
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v5

    #@12c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12f
    move-result-object v5

    #@130
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@133
    throw v2

    #@134
    .line 174
    :cond_4
    const/4 v11, 0x0

    #@135
    .local v11, "nativeSavedState":[B
    goto :goto_0

    #@136
    .line 184
    .end local v11    # "nativeSavedState":[B
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@139
    .line 128
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 193
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@4
    .line 194
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 195
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@a
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    #@d
    .line 196
    iput-object v4, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@f
    .line 198
    :cond_0
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 199
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
    .line 200
    iput-object v4, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    #@20
    .line 202
    :cond_1
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@22
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->unloadNativeCode(J)V

    #@25
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@28
    .line 192
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
    .line 306
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@4
    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    #@6
    invoke-virtual {v1, v2}, Landroid/app/NativeActivity$NativeContentView;->getLocationInWindow([I)V

    #@9
    .line 307
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@b
    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getWidth()I

    #@e
    move-result v8

    #@f
    .line 308
    .local v8, "w":I
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@11
    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getHeight()I

    #@14
    move-result v0

    #@15
    .line 309
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
    .line 311
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    #@27
    aget v1, v1, v3

    #@29
    iput v1, p0, Landroid/app/NativeActivity;->mLastContentX:I

    #@2b
    .line 312
    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    #@2d
    aget v1, v1, v4

    #@2f
    iput v1, p0, Landroid/app/NativeActivity;->mLastContentY:I

    #@31
    .line 313
    iput v8, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    #@33
    .line 314
    iput v0, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    #@35
    .line 315
    iget-boolean v1, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@37
    if-nez v1, :cond_1

    #@39
    .line 316
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@3b
    iget v4, p0, Landroid/app/NativeActivity;->mLastContentX:I

    #@3d
    .line 317
    iget v5, p0, Landroid/app/NativeActivity;->mLastContentY:I

    #@3f
    iget v6, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    #@41
    iget v7, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    #@43
    move-object v1, p0

    #@44
    .line 316
    invoke-direct/range {v1 .. v7}, Landroid/app/NativeActivity;->onContentRectChangedNative(JIIII)V

    #@47
    .line 305
    :cond_1
    return-void

    #@48
    .line 310
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
    .line 292
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 293
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    #@6
    .line 294
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@8
    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    #@b
    move-result-wide v2

    #@c
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueCreatedNative(JJ)V

    #@f
    .line 291
    :cond_0
    return-void
.end method

.method public onInputQueueDestroyed(Landroid/view/InputQueue;)V
    .locals 4
    .param p1, "queue"    # Landroid/view/InputQueue;

    #@0
    .prologue
    .line 299
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 300
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@6
    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    #@9
    move-result-wide v2

    #@a
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    #@d
    .line 301
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    #@10
    .line 298
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    #@0
    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    #@3
    .line 250
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 251
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@9
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onLowMemoryNative(J)V

    #@c
    .line 248
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    #@0
    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    #@3
    .line 209
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onPauseNative(J)V

    #@8
    .line 207
    return-void
.end method

.method protected onResume()V
    .locals 2

    #@0
    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    #@3
    .line 215
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onResumeNative(J)V

    #@8
    .line 213
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 221
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@5
    invoke-direct {p0, v2, v3}, Landroid/app/NativeActivity;->onSaveInstanceStateNative(J)[B

    #@8
    move-result-object v0

    #@9
    .line 222
    .local v0, "state":[B
    if-eqz v0, :cond_0

    #@b
    .line 223
    const-string/jumbo v1, "android:native_state"

    #@e
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@11
    .line 219
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    #@0
    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    #@3
    .line 230
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStartNative(J)V

    #@8
    .line 228
    return-void
.end method

.method protected onStop()V
    .locals 2

    #@0
    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    #@3
    .line 236
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@5
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStopNative(J)V

    #@8
    .line 234
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    #@3
    .line 258
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 259
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@9
    invoke-direct {p0, v0, v1, p1}, Landroid/app/NativeActivity;->onWindowFocusChangedNative(JZ)V

    #@c
    .line 256
    :cond_0
    return-void
.end method

.method setWindowFlags(II)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    #@7
    .line 322
    return-void
.end method

.method setWindowFormat(I)V
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    #@7
    .line 326
    return-void
.end method

.method showIme(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@7
    .line 330
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
    .line 271
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 272
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@6
    .line 273
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
    .line 270
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 264
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 265
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@6
    .line 266
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, v0, v1, v2}, Landroid/app/NativeActivity;->onSurfaceCreatedNative(JLandroid/view/Surface;)V

    #@f
    .line 263
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 285
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@3
    .line 286
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 287
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@9
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    #@c
    .line 284
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 278
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 279
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    #@6
    .line 280
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    #@8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, v0, v1, v2}, Landroid/app/NativeActivity;->onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V

    #@f
    .line 277
    :cond_0
    return-void
.end method
