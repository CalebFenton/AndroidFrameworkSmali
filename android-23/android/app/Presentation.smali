.class public Landroid/app/Presentation;
.super Landroid/app/Dialog;
.source "Presentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Presentation$1;,
        Landroid/app/Presentation$2;
    }
.end annotation


# static fields
.field private static final MSG_CANCEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Presentation"


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/app/Presentation;)Landroid/view/Display;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/Presentation;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/app/Presentation;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayRemoved()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    #@0
    .prologue
    .line 159
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    #@4
    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 3
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "theme"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 177
    invoke-static {p1, p2, p3}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, v0, p3, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    #@8
    .line 325
    new-instance v0, Landroid/app/Presentation$1;

    #@a
    invoke-direct {v0, p0}, Landroid/app/Presentation$1;-><init>(Landroid/app/Presentation;)V

    #@d
    iput-object v0, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@f
    .line 345
    new-instance v0, Landroid/app/Presentation$2;

    #@11
    invoke-direct {v0, p0}, Landroid/app/Presentation$2;-><init>(Landroid/app/Presentation;)V

    #@14
    iput-object v0, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    #@16
    .line 179
    iput-object p2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    #@18
    .line 180
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, "display"

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@25
    iput-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@27
    .line 182
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    #@2a
    move-result-object v0

    #@2b
    const/16 v1, 0x77

    #@2d
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    #@30
    .line 183
    invoke-virtual {p0, v2}, Landroid/app/Presentation;->setCanceledOnTouchOutside(Z)V

    #@33
    .line 176
    return-void
.end method

.method private static createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
    .locals 7
    .param p0, "outerContext"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "theme"    # I

    #@0
    .prologue
    .line 291
    if-nez p0, :cond_0

    #@2
    .line 292
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "outerContext must not be null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 294
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 295
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v5, "display must not be null"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 298
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    #@19
    move-result-object v0

    #@1a
    .line 299
    .local v0, "displayContext":Landroid/content/Context;
    if-nez p2, :cond_2

    #@1c
    .line 300
    new-instance v2, Landroid/util/TypedValue;

    #@1e
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    #@21
    .line 301
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@24
    move-result-object v4

    #@25
    .line 302
    const v5, 0x10103c0

    #@28
    const/4 v6, 0x1

    #@29
    .line 301
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@2c
    .line 303
    iget p2, v2, Landroid/util/TypedValue;->resourceId:I

    #@2e
    .line 311
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :cond_2
    const-string/jumbo v4, "window"

    #@31
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Landroid/view/WindowManagerImpl;

    #@37
    .line 313
    .local v3, "outerWindowManager":Landroid/view/WindowManagerImpl;
    invoke-virtual {v3, p1}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    #@3a
    move-result-object v1

    #@3b
    .line 314
    .local v1, "displayWindowManager":Landroid/view/WindowManagerImpl;
    new-instance v4, Landroid/app/Presentation$3;

    #@3d
    invoke-direct {v4, v0, p2, v1}, Landroid/app/Presentation$3;-><init>(Landroid/content/Context;ILandroid/view/WindowManagerImpl;)V

    #@40
    return-object v4
.end method

.method private handleDisplayChanged()V
    .locals 2

    #@0
    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayChanged()V

    #@3
    .line 276
    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 277
    const-string/jumbo v0, "Presentation"

    #@c
    const-string/jumbo v1, "Presentation is being dismissed because the display metrics have changed since it was created."

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 279
    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    #@15
    .line 268
    :cond_0
    return-void
.end method

.method private handleDisplayRemoved()V
    .locals 0

    #@0
    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    #@3
    .line 265
    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    #@6
    .line 263
    return-void
.end method

.method private isConfigurationStillValid()Z
    .locals 2

    #@0
    .prologue
    .line 284
    new-instance v0, Landroid/util/DisplayMetrics;

    #@2
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@5
    .line 285
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    #@7
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@a
    .line 286
    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->equalsPhysical(Landroid/util/DisplayMetrics;)Z

    #@15
    move-result v1

    #@16
    return v1
.end method


# virtual methods
.method public getDisplay()Landroid/view/Display;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    #@2
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    #@0
    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public onDisplayChanged()V
    .locals 0

    #@0
    .prologue
    .line 260
    return-void
.end method

.method public onDisplayRemoved()V
    .locals 0

    #@0
    .prologue
    .line 247
    return-void
.end method

.method protected onStart()V
    .locals 3

    #@0
    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    #@3
    .line 209
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@5
    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@7
    iget-object v2, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@c
    .line 215
    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 216
    const-string/jumbo v0, "Presentation"

    #@15
    const-string/jumbo v1, "Presentation is being dismissed because the display metrics have changed since it was created."

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 218
    iget-object v0, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    #@1d
    const/4 v1, 0x1

    #@1e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@21
    .line 207
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@2
    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@4
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    #@7
    .line 225
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    #@a
    .line 223
    return-void
.end method

.method public show()V
    .locals 0

    #@0
    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    #@3
    .line 234
    return-void
.end method
