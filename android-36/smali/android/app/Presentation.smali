.class public Landroid/app/Presentation;
.super Landroid/app/Dialog;
.source "Presentation.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Presentation"


# instance fields
.field private final greylist-max-o mDisplay:Landroid/view/Display;

.field private final greylist-max-o mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final greylist-max-o mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/app/Presentation;)Landroid/view/Display;
    .registers 1

    iget-object p0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayChanged(Landroid/app/Presentation;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayRemoved(Landroid/app/Presentation;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayRemoved()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;)V
    .registers 4
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 175
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .registers 5
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "theme"    # I

    .line 197
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    .line 198
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;II)V
    .registers 9
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "theme"    # I
    .param p4, "type"    # I

    .line 223
    invoke-static {p1, p2, p3, p4}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "Presentation must be constructed on a looper thread."

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    .line 347
    new-instance v0, Landroid/app/Presentation$1;

    invoke-direct {v0, p0}, Landroid/app/Presentation$1;-><init>(Landroid/app/Presentation;)V

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 225
    iput-object p2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    .line 226
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 228
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 229
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 230
    .local v2, "attr":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 231
    const/16 v3, 0x77

    invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V

    .line 232
    invoke-static {p4, p2}, Landroid/app/Presentation;->getWindowType(ILandroid/view/Display;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 233
    invoke-virtual {p0, v1}, Landroid/app/Presentation;->setCanceledOnTouchOutside(Z)V

    .line 234
    return-void
.end method

.method private static greylist-max-r createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
    .registers 4
    .param p0, "outerContext"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "theme"    # I

    .line 324
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;
    .registers 9
    .param p0, "outerContext"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "theme"    # I
    .param p3, "type"    # I

    .line 329
    if-eqz p0, :cond_33

    .line 332
    if-eqz p1, :cond_2b

    .line 336
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 337
    invoke-static {p3, p1}, Landroid/app/Presentation;->getWindowType(ILandroid/view/Display;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    .line 338
    .local v0, "windowContext":Landroid/content/Context;
    if-nez p2, :cond_25

    .line 339
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 340
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103c0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 342
    iget p2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 344
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_25
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1

    .line 333
    .end local v0    # "windowContext":Landroid/content/Context;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outerContext must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getWindowType(ILandroid/view/Display;)I
    .registers 3
    .param p0, "type"    # I
    .param p1, "display"    # Landroid/view/Display;

    .line 237
    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    .line 238
    return p0

    .line 240
    :cond_4
    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    const/16 v0, 0x7ee

    goto :goto_11

    .line 241
    :cond_f
    const/16 v0, 0x7f5

    .line 240
    :goto_11
    return v0
.end method

.method private greylist-max-o handleDisplayChanged()V
    .registers 1

    .line 318
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayChanged()V

    .line 319
    return-void
.end method

.method private greylist-max-o handleDisplayRemoved()V
    .registers 1

    .line 313
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    .line 314
    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    .line 315
    return-void
.end method


# virtual methods
.method public whitelist getDisplay()Landroid/view/Display;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 261
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onDisplayChanged()V
    .registers 1

    .line 310
    return-void
.end method

.method public whitelist onDisplayRemoved()V
    .registers 1

    .line 301
    return-void
.end method

.method protected whitelist onStart()V
    .registers 4

    .line 266
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 267
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 268
    return-void
.end method

.method protected whitelist onStop()V
    .registers 3

    .line 272
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 273
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 274
    return-void
.end method

.method public whitelist show()V
    .registers 3

    .line 283
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 285
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 286
    .local v0, "controller":Landroid/view/WindowInsetsController;
    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->enablePresentationForConnectedDisplays()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 287
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 289
    :cond_1a
    return-void
.end method
