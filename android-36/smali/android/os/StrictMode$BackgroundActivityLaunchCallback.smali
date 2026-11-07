.class final Landroid/os/StrictMode$BackgroundActivityLaunchCallback;
.super Landroid/app/IBackgroundActivityLaunchCallback$Stub;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackgroundActivityLaunchCallback"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 2229
    invoke-direct {p0}, Landroid/app/IBackgroundActivityLaunchCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/StrictMode-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/StrictMode$BackgroundActivityLaunchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBackgroundActivityLaunchAborted(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 2233
    invoke-static {}, Landroid/os/StrictMode;->vmBackgroundActivityLaunchEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2234
    invoke-static {p1}, Landroid/os/StrictMode;->onBackgroundActivityLaunchAborted(Ljava/lang/String;)V

    .line 2236
    :cond_9
    return-void
.end method
