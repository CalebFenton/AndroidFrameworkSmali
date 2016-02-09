.class public Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;,
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;,
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;,
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;,
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardServiceDelegate"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field protected mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

.field private final mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

.field private final mScrim:Landroid/view/View;

.field private final mScrimHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@5
    invoke-direct {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@a
    .line 137
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    #@f
    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    #@11
    .line 106
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    #@13
    .line 107
    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->createScrim(Landroid/content/Context;)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    #@19
    .line 108
    new-instance v0, Landroid/os/Handler;

    #@1b
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mScrimHandler:Landroid/os/Handler;

    #@20
    .line 105
    return-void
.end method

.method private static final createScrim(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 312
    new-instance v8, Landroid/view/View;

    #@3
    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@6
    .line 314
    .local v8, "view":Landroid/view/View;
    const v4, 0x110900

    #@9
    .line 320
    .local v4, "flags":I
    const/4 v6, -0x1

    #@a
    .line 321
    .local v6, "stretch":I
    const/16 v7, 0x7ed

    #@c
    .line 322
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@e
    .line 323
    const/16 v3, 0x7ed

    #@10
    const/4 v5, -0x3

    #@11
    move v2, v1

    #@12
    .line 322
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    #@15
    .line 324
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    #@17
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@19
    .line 325
    const/4 v1, 0x5

    #@1a
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@1c
    .line 326
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@1e
    or-int/lit8 v1, v1, 0x1

    #@20
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@22
    .line 327
    const-string/jumbo v1, "KeyguardScrim"

    #@25
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@28
    .line 328
    const-string/jumbo v1, "window"

    #@2b
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2e
    move-result-object v9

    #@2f
    check-cast v9, Landroid/view/WindowManager;

    #@31
    .line 329
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@34
    .line 332
    const/high16 v1, 0x3610000

    #@36
    invoke-virtual {v8, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@39
    .line 337
    return-object v8
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 112
    new-instance v0, Landroid/content/Intent;

    #@3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@6
    .line 113
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v2

    #@e
    .line 116
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x104004d

    #@11
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    .line 115
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@18
    move-result-object v1

    #@19
    .line 117
    .local v1, "keyguardComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1c
    .line 119
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    #@1e
    .line 120
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@20
    const/4 v5, 0x1

    #@21
    .line 119
    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@24
    move-result v3

    #@25
    if-nez v3, :cond_0

    #@27
    .line 121
    const-string/jumbo v3, "KeyguardServiceDelegate"

    #@2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v5, "*** Keyguard: can\'t bind to "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 122
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@43
    iput-boolean v6, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    #@45
    .line 123
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@47
    iput-boolean v6, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotOccluded:Z

    #@49
    .line 124
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@4b
    iput-boolean v6, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    #@4d
    .line 125
    iget-object v4, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@4f
    monitor-enter v4

    #@50
    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@52
    const/4 v5, 0x0

    #@53
    iput-boolean v5, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    #@55
    .line 130
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hideScrim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    monitor-exit v4

    #@59
    .line 111
    :goto_0
    return-void

    #@5a
    .line 125
    :catchall_0
    move-exception v3

    #@5b
    monitor-exit v4

    #@5c
    throw v3

    #@5d
    .line 133
    :cond_0
    const-string/jumbo v3, "KeyguardServiceDelegate"

    #@60
    const-string/jumbo v4, "*** Keyguard started"

    #@63
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 204
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismiss()V

    #@9
    .line 202
    :cond_0
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 294
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->doKeyguardTimeout(Landroid/os/Bundle;)V

    #@9
    .line 292
    :cond_0
    return-void
.end method

.method public hideScrim()V
    .locals 2

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mScrimHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 352
    return-void
.end method

.method public isInputRestricted()Z
    .locals 2

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 178
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@6
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@8
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->isInputRestricted()Z

    #@b
    move-result v1

    #@c
    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    #@e
    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@10
    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    #@12
    return v0
.end method

.method public isSecure()Z
    .locals 2

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 210
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@6
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@8
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->isSecure()Z

    #@b
    move-result v1

    #@c
    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    #@e
    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@10
    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    #@12
    return v0
.end method

.method public isShowing()Z
    .locals 2

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 171
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@6
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@8
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->isShowing()Z

    #@b
    move-result v1

    #@c
    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    #@e
    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@10
    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    #@12
    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 1
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 191
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->keyguardDone(ZZ)V

    #@9
    .line 189
    :cond_0
    return-void
.end method

.method public onActivityDrawn()V
    .locals 1

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 370
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onActivityDrawn()V

    #@9
    .line 368
    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 363
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    #@9
    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@b
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    #@e
    .line 361
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 217
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onDreamingStarted()V

    #@9
    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@b
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    #@e
    .line 215
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 224
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onDreamingStopped()V

    #@9
    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@b
    const/4 v1, 0x0

    #@c
    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    #@e
    .line 222
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 273
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedGoingToSleep(I)V

    #@9
    .line 271
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 238
    const-string/jumbo v0, "KeyguardServiceDelegate"

    #@7
    const-string/jumbo v1, "onScreenTurnedOff()"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 239
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@f
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOff()V

    #@12
    .line 236
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 259
    const-string/jumbo v0, "KeyguardServiceDelegate"

    #@7
    const-string/jumbo v1, "onScreenTurnedOn()"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 260
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@f
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn()V

    #@12
    .line 257
    :cond_0
    return-void
.end method

.method public onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V
    .locals 3
    .param p1, "drawnListener"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 245
    const-string/jumbo v0, "KeyguardServiceDelegate"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "onScreenTurnedOn(showListener = "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, ")"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 246
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@27
    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    #@29
    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    #@2c
    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    #@2f
    .line 243
    :goto_0
    return-void

    #@30
    .line 249
    :cond_0
    const-string/jumbo v0, "KeyguardServiceDelegate"

    #@33
    const-string/jumbo v1, "onScreenTurningOn(): no keyguard service!"

    #@36
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 252
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@3b
    .line 253
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    #@3e
    goto :goto_0
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 266
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedGoingToSleep(I)V

    #@9
    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@b
    iput p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    #@d
    .line 264
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 231
    const-string/jumbo v0, "KeyguardServiceDelegate"

    #@7
    const-string/jumbo v1, "onStartedWakingUp()"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 232
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@f
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp()V

    #@12
    .line 229
    :cond_0
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 286
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    #@9
    .line 284
    :goto_0
    return-void

    #@a
    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@c
    const/4 v1, 0x1

    #@d
    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    #@f
    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 300
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    #@9
    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@b
    iput p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    #@d
    .line 298
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 279
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    #@9
    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@b
    iput-boolean p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    #@d
    .line 277
    return-void
.end method

.method public setOccluded(Z)V
    .locals 1
    .param p1, "isOccluded"    # Z

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 197
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setOccluded(Z)V

    #@9
    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@b
    iput-boolean p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    #@d
    .line 195
    return-void
.end method

.method public showScrim()V
    .locals 3

    #@0
    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@2
    monitor-enter v1

    #@3
    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    #@5
    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-nez v0, :cond_0

    #@9
    monitor-exit v1

    #@a
    return-void

    #@b
    .line 343
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mScrimHandler:Landroid/os/Handler;

    #@d
    new-instance v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;

    #@f
    invoke-direct {v2, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    #@12
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 340
    return-void

    #@17
    .line 341
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 307
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->startKeyguardExitAnimation(JJ)V

    #@9
    .line 305
    :cond_0
    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .param p1, "onKeyguardExitResult"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 185
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    #@6
    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    #@e
    .line 183
    :cond_0
    return-void
.end method
