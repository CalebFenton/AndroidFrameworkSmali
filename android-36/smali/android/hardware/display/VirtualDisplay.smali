.class public final Landroid/hardware/display/VirtualDisplay;
.super Ljava/lang/Object;
.source "VirtualDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/VirtualDisplay$Callback;
    }
.end annotation


# instance fields
.field private final greylist-max-o mDisplay:Landroid/view/Display;

.field private final greylist-max-o mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private greylist-max-o mToken:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .registers 5
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p4, "surface"    # Landroid/view/Surface;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 43
    iput-object p2, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    .line 44
    iput-object p3, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 45
    iput-object p4, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist getDisplay()Landroid/view/Display;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public blacklist getToken()Landroid/hardware/display/IVirtualDisplayCallback;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    return-object v0
.end method

.method public whitelist release()V
    .registers 3

    .line 108
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    if-eqz v0, :cond_e

    .line 109
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 112
    :cond_e
    return-void
.end method

.method public whitelist resize(III)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I

    .line 97
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 98
    return-void
.end method

.method public whitelist setRotation(I)V
    .registers 5
    .param p1, "rotation"    # I

    .line 123
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualDisplayRotationApi()Z

    move-result v0

    if-nez v0, :cond_7

    .line 124
    return-void

    .line 126
    :cond_7
    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    goto :goto_2c

    .line 128
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid virtual display rotation value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2c
    :goto_2c
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, p1, :cond_3f

    .line 132
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplayRotation(Landroid/hardware/display/IVirtualDisplayCallback;I)V

    .line 134
    :cond_3f
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 82
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_d

    .line 83
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 84
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    .line 86
    :cond_d
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDisplay{display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
