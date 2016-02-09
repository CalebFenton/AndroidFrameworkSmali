.class public Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "DreamService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamService$DreamServiceWrapper;
    }
.end annotation


# static fields
.field public static final DREAM_META_DATA:Ljava/lang/String; = "android.service.dream"

.field public static final DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.dreams.DreamService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCanDoze:Z

.field private mDebug:Z

.field private mDozeScreenBrightness:I

.field private mDozeScreenState:I

.field private mDozing:Z

.field private mFinished:Z

.field private mFullscreen:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInteractive:Z

.field private mLowProfile:Z

.field private final mSandman:Landroid/service/dreams/IDreamManager;

.field private mScreenBright:Z

.field private mStarted:Z

.field private mWaking:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowToken:Landroid/os/IBinder;

.field private mWindowless:Z


# direct methods
.method static synthetic -get0(Landroid/service/dreams/DreamService;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/service/dreams/DreamService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/service/dreams/DreamService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/service/dreams/DreamService;)Landroid/view/Window;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/service/dreams/DreamService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/service/dreams/DreamService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/service/dreams/DreamService;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/service/dreams/DreamService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/service/dreams/DreamService;Z)V
    .locals 0
    .param p1, "fromSystem"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 194
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@5
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-class v1, Landroid/service/dreams/DreamService;

    #@c
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "["

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getClass()Ljava/lang/Class;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string/jumbo v1, "]"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@34
    .line 176
    new-instance v0, Landroid/os/Handler;

    #@36
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@39
    iput-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    #@3b
    .line 180
    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    #@3d
    .line 182
    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    #@3f
    .line 189
    iput v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    #@41
    .line 190
    const/4 v0, -0x1

    #@42
    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    #@44
    .line 192
    iput-boolean v2, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@46
    .line 195
    const-string/jumbo v0, "dreams"

    #@49
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@4c
    move-result-object v0

    #@4d
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    #@53
    .line 194
    return-void
.end method

.method private applyFlags(III)I
    .locals 2
    .param p1, "oldFlags"    # I
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    #@0
    .prologue
    .line 1051
    not-int v0, p3

    #@1
    and-int/2addr v0, p1

    #@2
    and-int v1, p2, p3

    #@4
    or-int/2addr v0, v1

    #@5
    return v0
.end method

.method private applySystemUiVisibilityFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 1044
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@2
    if-nez v1, :cond_1

    #@4
    const/4 v0, 0x0

    #@5
    .line 1045
    :goto_0
    if-eqz v0, :cond_0

    #@7
    .line 1046
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    #@a
    move-result v1

    #@b
    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@12
    .line 1043
    :cond_0
    return-void

    #@13
    .line 1044
    :cond_1
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@15
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .local v0, "v":Landroid/view/View;
    goto :goto_0
.end method

.method private applyWindowFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 1030
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1031
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@6
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@9
    move-result-object v0

    #@a
    .line 1032
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c
    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    #@f
    move-result v1

    #@10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@12
    .line 1033
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@14
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@17
    .line 1034
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@19
    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@1f
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@22
    move-result-object v2

    #@23
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@26
    .line 1029
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private final attach(Landroid/os/IBinder;Z)V
    .locals 11
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z

    #@0
    .prologue
    const/16 v10, 0x7e7

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v5, 0x1

    #@5
    .line 946
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 947
    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "attach() called when already attached with token="

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    iget-object v5, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 948
    return-void

    #@25
    .line 950
    :cond_0
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    #@27
    if-nez v3, :cond_1

    #@29
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 951
    :cond_1
    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@2f
    const-string/jumbo v4, "attach() called after dream already finished"

    #@32
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 953
    :try_start_0
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    #@37
    const/4 v4, 0x1

    #@38
    invoke-interface {v3, p1, v4}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@3b
    .line 957
    :goto_0
    return-void

    #@3c
    .line 960
    :cond_2
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@3e
    .line 961
    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    #@40
    .line 962
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    #@42
    if-eqz v3, :cond_3

    #@44
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    #@46
    if-eqz v3, :cond_7

    #@48
    .line 965
    :cond_3
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    #@4a
    if-nez v3, :cond_6

    #@4c
    .line 966
    new-instance v3, Lcom/android/internal/policy/PhoneWindow;

    #@4e
    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    #@51
    iput-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@53
    .line 967
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@55
    invoke-virtual {v3, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    #@58
    .line 968
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@5a
    invoke-virtual {v3, v5}, Landroid/view/Window;->requestFeature(I)Z

    #@5d
    .line 969
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@5f
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    #@61
    const/high16 v7, -0x1000000

    #@63
    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@66
    invoke-virtual {v3, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@69
    .line 970
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@6b
    const/4 v6, -0x1

    #@6c
    invoke-virtual {v3, v6}, Landroid/view/Window;->setFormat(I)V

    #@6f
    .line 972
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@71
    if-eqz v3, :cond_4

    #@73
    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@75
    const-string/jumbo v6, "Attaching window token: %s to window of type %s"

    #@78
    const/4 v7, 0x2

    #@79
    new-array v7, v7, [Ljava/lang/Object;

    #@7b
    .line 973
    aput-object p1, v7, v4

    #@7d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@80
    move-result-object v8

    #@81
    aput-object v8, v7, v5

    #@83
    .line 972
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 975
    :cond_4
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@8c
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@8f
    move-result-object v2

    #@90
    .line 976
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@92
    .line 977
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@94
    .line 978
    const v3, 0x10302f0

    #@97
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@99
    .line 979
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@9b
    .line 984
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    #@9d
    if-eqz v3, :cond_8

    #@9f
    const/16 v3, 0x400

    #@a1
    .line 979
    :goto_1
    const v7, 0x490101

    #@a4
    or-int/2addr v7, v3

    #@a5
    .line 985
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    #@a7
    if-eqz v3, :cond_9

    #@a9
    const/16 v3, 0x80

    #@ab
    .line 979
    :goto_2
    or-int/2addr v3, v7

    #@ac
    or-int/2addr v3, v6

    #@ad
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@af
    .line 987
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@b1
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@b4
    .line 990
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@b6
    const/high16 v6, -0x80000000

    #@b8
    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    #@bb
    .line 991
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@bd
    const-string/jumbo v6, "dream"

    #@c0
    invoke-virtual {v3, v9, p1, v6, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    #@c3
    .line 994
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    #@c5
    if-eqz v3, :cond_5

    #@c7
    move v4, v5

    #@c8
    .line 993
    :cond_5
    invoke-direct {p0, v4, v5}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    #@cb
    .line 998
    :try_start_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindowManager()Landroid/view/WindowManager;

    #@ce
    move-result-object v3

    #@cf
    iget-object v4, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@d1
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@d4
    move-result-object v4

    #@d5
    iget-object v5, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@d7
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@da
    move-result-object v5

    #@db
    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    #@de
    .line 1013
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    #@e0
    new-instance v4, Landroid/service/dreams/DreamService$1;

    #@e2
    invoke-direct {v4, p0}, Landroid/service/dreams/DreamService$1;-><init>(Landroid/service/dreams/DreamService;)V

    #@e5
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e8
    .line 945
    return-void

    #@e9
    .line 963
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    #@eb
    const-string/jumbo v4, "Only doze dreams can be windowless"

    #@ee
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f1
    throw v3

    #@f2
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    move v3, v4

    #@f3
    .line 984
    goto :goto_1

    #@f4
    :cond_9
    move v3, v4

    #@f5
    .line 985
    goto :goto_2

    #@f6
    .line 999
    :catch_0
    move-exception v1

    #@f7
    .line 1003
    .local v1, "ex":Landroid/view/WindowManager$BadTokenException;
    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@f9
    const-string/jumbo v4, "attach() called after window token already removed, dream will finish soon"

    #@fc
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ff
    .line 1005
    iput-object v9, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@101
    .line 1006
    return-void

    #@102
    .line 954
    .end local v1    # "ex":Landroid/view/WindowManager$BadTokenException;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v0

    #@103
    .local v0, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    .line 1089
    const/4 v0, 0x0

    #@1
    const/16 v1, 0xff

    #@3
    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private final detach()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 916
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 917
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v1, "detach(): Calling onDreamingStopped()"

    #@f
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 918
    :cond_0
    iput-boolean v5, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    #@14
    .line 919
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    #@17
    .line 922
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@19
    if-eqz v0, :cond_3

    #@1b
    .line 924
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@1d
    if-eqz v0, :cond_2

    #@1f
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@21
    const-string/jumbo v1, "detach(): Removing window from window manager"

    #@24
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 925
    :cond_2
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@29
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    #@2c
    move-result-object v0

    #@2d
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@2f
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@32
    move-result-object v1

    #@33
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@36
    .line 926
    iput-object v4, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@38
    .line 929
    :cond_3
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    .line 931
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@3f
    move-result-object v0

    #@40
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@42
    .line 932
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getClass()Ljava/lang/Class;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    const-string/jumbo v3, "Dream"

    #@4d
    .line 931
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    #@50
    .line 933
    iput-object v4, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@52
    .line 934
    iput-boolean v5, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    #@54
    .line 915
    :cond_4
    return-void
.end method

.method private getSystemUiVisibilityFlagValue(IZ)Z
    .locals 3
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1039
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@3
    if-nez v2, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    .line 1040
    :goto_0
    if-nez v0, :cond_1

    #@8
    .end local p2    # "defaultValue":Z
    :goto_1
    return p2

    #@9
    .line 1039
    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@b
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .local v0, "v":Landroid/view/View;
    goto :goto_0

    #@10
    .line 1040
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    #@13
    move-result v2

    #@14
    and-int/2addr v2, p1

    #@15
    if-eqz v2, :cond_2

    #@17
    const/4 p2, 0x1

    #@18
    goto :goto_1

    #@19
    :cond_2
    move p2, v1

    #@1a
    goto :goto_1
.end method

.method private getWindowFlagValue(IZ)Z
    .locals 2
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1026
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@3
    if-nez v1, :cond_0

    #@5
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    #@6
    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@8
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@b
    move-result-object v1

    #@c
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@e
    and-int/2addr v1, p1

    #@f
    if-eqz v1, :cond_1

    #@11
    const/4 p2, 0x1

    #@12
    goto :goto_0

    #@13
    :cond_1
    move p2, v0

    #@14
    goto :goto_0
.end method

.method private updateDoze()V
    .locals 5

    #@0
    .prologue
    .line 631
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 633
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    #@6
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@8
    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    #@a
    iget v4, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    #@c
    invoke-interface {v1, v2, v3, v4}, Landroid/service/dreams/IDreamManager;->startDozing(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 630
    :cond_0
    :goto_0
    return-void

    #@10
    .line 634
    :catch_0
    move-exception v0

    #@11
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private wakeUp(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    #@0
    .prologue
    .line 869
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "wakeUp(): fromSystem="

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 870
    const-string/jumbo v3, ", mWaking="

    #@19
    .line 869
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 870
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    #@1f
    .line 869
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 870
    const-string/jumbo v3, ", mFinished="

    #@26
    .line 869
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 870
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    #@2c
    .line 869
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 872
    :cond_0
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    #@39
    if-nez v1, :cond_1

    #@3b
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    #@3d
    if-eqz v1, :cond_2

    #@3f
    .line 868
    :cond_1
    :goto_0
    return-void

    #@40
    .line 873
    :cond_2
    const/4 v1, 0x1

    #@41
    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    #@43
    .line 878
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onWakeUp()V

    #@46
    .line 882
    if-nez p1, :cond_1

    #@48
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    #@4a
    if-nez v1, :cond_1

    #@4c
    .line 883
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@4e
    if-nez v1, :cond_3

    #@50
    .line 884
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@52
    const-string/jumbo v2, "WakeUp was called before the dream was attached."

    #@55
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_0

    #@59
    .line 887
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    #@5b
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@5d
    const/4 v3, 0x0

    #@5e
    invoke-interface {v1, v2, v3}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    goto :goto_0

    #@62
    .line 888
    :catch_0
    move-exception v0

    #@63
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7
    .line 450
    return-void
.end method

.method public canDoze()Z
    .locals 1

    #@0
    .prologue
    .line 591
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    #@2
    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 260
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 261
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v1, "Waking up on genericMotionEvent"

    #@d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    #@13
    .line 263
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 265
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@17
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 210
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 211
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v1, "Waking up on keyEvent"

    #@e
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    #@14
    .line 213
    return v2

    #@15
    .line 214
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@18
    move-result v0

    #@19
    const/4 v1, 0x4

    #@1a
    if-ne v0, v1, :cond_3

    #@1c
    .line 215
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@1e
    if-eqz v0, :cond_2

    #@20
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@22
    const-string/jumbo v1, "Waking up on back key"

    #@25
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 216
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    #@2b
    .line 217
    return v2

    #@2c
    .line 219
    :cond_3
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@2e
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@31
    move-result v0

    #@32
    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 225
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 226
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v1, "Waking up on keyShortcutEvent"

    #@d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    #@13
    .line 228
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 230
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@17
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 271
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 239
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v1, "Waking up on touchEvent"

    #@d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 240
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    #@13
    .line 241
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 243
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@17
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 249
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 250
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v1, "Waking up on trackballEvent"

    #@d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 251
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    #@13
    .line 252
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 254
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@17
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1056
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/service/dreams/DreamService$2;

    #@4
    invoke-direct {v1, p0, p1, p3}, Landroid/service/dreams/DreamService$2;-><init>(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@7
    .line 1061
    const-string/jumbo v3, ""

    #@a
    const-wide/16 v4, 0x3e8

    #@c
    move-object v2, p2

    #@d
    .line 1056
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    #@10
    .line 1055
    return-void
.end method

.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ": "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    .line 1067
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@1b
    if-nez v0, :cond_7

    #@1d
    .line 1068
    const-string/jumbo v0, "stopped"

    #@20
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23
    .line 1072
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v1, "  window: "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 1073
    const-string/jumbo v0, "  flags:"

    #@3f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    .line 1074
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isInteractive()Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_0

    #@48
    const-string/jumbo v0, " interactive"

    #@4b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    .line 1075
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isLowProfile()Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_1

    #@54
    const-string/jumbo v0, " lowprofile"

    #@57
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 1076
    :cond_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isFullscreen()Z

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_2

    #@60
    const-string/jumbo v0, " fullscreen"

    #@63
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    .line 1077
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isScreenBright()Z

    #@69
    move-result v0

    #@6a
    if-eqz v0, :cond_3

    #@6c
    const-string/jumbo v0, " bright"

    #@6f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72
    .line 1078
    :cond_3
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isWindowless()Z

    #@75
    move-result v0

    #@76
    if-eqz v0, :cond_4

    #@78
    const-string/jumbo v0, " windowless"

    #@7b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    .line 1079
    :cond_4
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    #@81
    move-result v0

    #@82
    if-eqz v0, :cond_8

    #@84
    const-string/jumbo v0, " dozing"

    #@87
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8a
    .line 1081
    :cond_5
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@8d
    .line 1082
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    #@90
    move-result v0

    #@91
    if-eqz v0, :cond_6

    #@93
    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v1, "  doze screen state: "

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v0

    #@9f
    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    #@a1
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b0
    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v1, "  doze screen brightness: "

    #@b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v0

    #@bc
    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v0

    #@c6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c9
    .line 1065
    :cond_6
    return-void

    #@ca
    .line 1070
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v1, "running (token="

    #@d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v0

    #@dc
    const-string/jumbo v1, ")"

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 1080
    :cond_8
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    #@ef
    move-result v0

    #@f0
    if-eqz v0, :cond_5

    #@f2
    const-string/jumbo v0, " candoze"

    #@f5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f8
    goto :goto_1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final finish()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 838
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "finish(): mFinished="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 840
    :cond_0
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    #@22
    if-nez v1, :cond_1

    #@24
    .line 841
    iput-boolean v4, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    #@26
    .line 843
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@28
    if-nez v1, :cond_2

    #@2a
    .line 844
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@2c
    const-string/jumbo v2, "Finish was called before the dream was attached."

    #@2f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 853
    :goto_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->stopSelf()V

    #@35
    .line 837
    :cond_1
    return-void

    #@36
    .line 847
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    #@38
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@3a
    const/4 v3, 0x1

    #@3b
    invoke-interface {v1, v2, v3}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    goto :goto_0

    #@3f
    .line 848
    :catch_0
    move-exception v0

    #@40
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDozeScreenBrightness()I
    .locals 1

    #@0
    .prologue
    .line 741
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    #@2
    return v0
.end method

.method public getDozeScreenState()I
    .locals 1

    #@0
    .prologue
    .line 688
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    #@2
    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@2
    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 378
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    #@7
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public isDozing()Z
    .locals 1

    #@0
    .prologue
    .line 673
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    #@2
    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    #@0
    .prologue
    .line 536
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    #@2
    return v0
.end method

.method public isInteractive()Z
    .locals 1

    #@0
    .prologue
    .line 486
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    #@2
    return v0
.end method

.method public isLowProfile()Z
    .locals 2

    #@0
    .prologue
    .line 512
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->getSystemUiVisibilityFlagValue(IZ)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isScreenBright()Z
    .locals 2

    #@0
    .prologue
    .line 559
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->getWindowFlagValue(IZ)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isWindowless()Z
    .locals 1

    #@0
    .prologue
    .line 577
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    #@2
    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 366
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 361
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 321
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 826
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "onBind() intent = "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 827
    :cond_0
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-direct {v0, p0, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    #@23
    return-object v0
.end method

.method public onContentChanged()V
    .locals 0

    #@0
    .prologue
    .line 311
    return-void
.end method

.method public onCreate()V
    .locals 2

    #@0
    .prologue
    .line 786
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "onCreate()"

    #@9
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 787
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@f
    .line 785
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 283
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    #@0
    .prologue
    .line 277
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 899
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "onDestroy()"

    #@9
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 903
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    #@f
    .line 905
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #@12
    .line 898
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 326
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    #@0
    .prologue
    .line 794
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "onDreamingStarted()"

    #@9
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 793
    :cond_0
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    #@0
    .prologue
    .line 803
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "onDreamingStopped()"

    #@9
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 802
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 301
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 295
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 331
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 289
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    #@0
    .prologue
    .line 343
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/SearchEvent;

    #@0
    .prologue
    .line 337
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onSearchRequested()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onWakeUp()V
    .locals 0

    #@0
    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    #@3
    .line 819
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 306
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 316
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 349
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 356
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    #@0
    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    #@7
    .line 402
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    #@7
    .line 418
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7
    .line 438
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "dbg"    # Z

    #@0
    .prologue
    .line 202
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    #@2
    .line 201
    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    #@0
    .prologue
    .line 772
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    .line 773
    invoke-static {p1}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightness(I)I

    #@6
    move-result p1

    #@7
    .line 775
    :cond_0
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    #@9
    if-eq v0, p1, :cond_1

    #@b
    .line 776
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    #@d
    .line 777
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    #@10
    .line 771
    :cond_1
    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 723
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 724
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    #@6
    .line 725
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    #@9
    .line 722
    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    #@0
    .prologue
    .line 523
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    #@2
    if-eq v1, p1, :cond_0

    #@4
    .line 524
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    #@6
    .line 525
    const/16 v0, 0x400

    #@8
    .line 526
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 525
    const/16 v1, 0x400

    #@e
    .line 526
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    #@11
    .line 522
    .end local v0    # "flag":I
    :cond_0
    return-void

    #@12
    .line 526
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method public setInteractive(Z)V
    .locals 0
    .param p1, "interactive"    # Z

    #@0
    .prologue
    .line 477
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    #@2
    .line 476
    return-void
.end method

.method public setLowProfile(Z)V
    .locals 2
    .param p1, "lowProfile"    # Z

    #@0
    .prologue
    .line 498
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    #@2
    if-eq v1, p1, :cond_0

    #@4
    .line 499
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    #@6
    .line 500
    const/4 v0, 0x1

    #@7
    .line 501
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 500
    const/4 v1, 0x1

    #@c
    .line 501
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    #@f
    .line 497
    .end local v0    # "flag":I
    :cond_0
    return-void

    #@10
    .line 501
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method public setScreenBright(Z)V
    .locals 2
    .param p1, "screenBright"    # Z

    #@0
    .prologue
    .line 545
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    #@2
    if-eq v1, p1, :cond_0

    #@4
    .line 546
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    #@6
    .line 547
    const/16 v0, 0x80

    #@8
    .line 548
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 547
    const/16 v1, 0x80

    #@e
    .line 548
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    #@11
    .line 544
    .end local v0    # "flag":I
    :cond_0
    return-void

    #@12
    .line 548
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method public setWindowless(Z)V
    .locals 0
    .param p1, "windowless"    # Z

    #@0
    .prologue
    .line 568
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    #@2
    .line 567
    return-void
.end method

.method public startDozing()V
    .locals 1

    #@0
    .prologue
    .line 624
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 623
    :cond_0
    :goto_0
    return-void

    #@9
    .line 625
    :cond_1
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    #@c
    .line 626
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    #@f
    goto :goto_0
.end method

.method public stopDozing()V
    .locals 3

    #@0
    .prologue
    .line 652
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 653
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    #@7
    .line 655
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    #@9
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    #@b
    invoke-interface {v1, v2}, Landroid/service/dreams/IDreamManager;->stopDozing(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 651
    :cond_0
    :goto_0
    return-void

    #@f
    .line 656
    :catch_0
    move-exception v0

    #@10
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final wakeUp()V
    .locals 1

    #@0
    .prologue
    .line 865
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    #@4
    .line 864
    return-void
.end method
