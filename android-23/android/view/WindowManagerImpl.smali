.class public final Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# instance fields
.field private mDefaultToken:Landroid/os/IBinder;

.field private final mDisplay:Landroid/view/Display;

.field private final mGlobal:Landroid/view/WindowManagerGlobal;

.field private final mParentWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    #@4
    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/view/Display;Landroid/view/Window;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "parentWindow"    # Landroid/view/Window;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    #@9
    .line 60
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    #@b
    .line 61
    iput-object p2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    #@d
    .line 59
    return-void
.end method

.method private applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 96
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 97
    instance-of v1, p1, Landroid/view/WindowManager$LayoutParams;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v2, "Params must be WindowManager.LayoutParams"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    :cond_0
    move-object v0, p1

    #@16
    .line 102
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    #@18
    .line 103
    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@1a
    if-nez v1, :cond_1

    #@1c
    .line 104
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    #@1e
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@20
    .line 94
    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 84
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 85
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    #@5
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    #@7
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    #@9
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V

    #@c
    .line 83
    return-void
.end method

.method public createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "parentWindow"    # Landroid/view/Window;

    #@0
    .prologue
    .line 65
    new-instance v0, Landroid/view/WindowManagerImpl;

    #@2
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    #@4
    invoke-direct {v0, v1, p1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    #@7
    return-object v0
.end method

.method public createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    #@0
    .prologue
    .line 69
    new-instance v0, Landroid/view/WindowManagerImpl;

    #@2
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    #@4
    invoke-direct {v0, p1, v1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    #@7
    return-object v0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    #@2
    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    #@6
    .line 110
    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    #@6
    .line 115
    return-void
.end method

.method public setDefaultToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 79
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    #@2
    .line 78
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 90
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 91
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@8
    .line 89
    return-void
.end method
