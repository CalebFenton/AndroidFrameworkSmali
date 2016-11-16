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
.field private final mDisplay:Landroid/view/Display;

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private mSurface:Landroid/view/Surface;

.field private mToken:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 0
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p4, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    #@5
    .line 43
    iput-object p2, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    #@7
    .line 44
    iput-object p3, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    #@9
    .line 45
    iput-object p4, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    #@b
    .line 41
    return-void
.end method


# virtual methods
.method public getDisplay()Landroid/view/Display;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    #@2
    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method public release()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 101
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 102
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    #@7
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    #@9
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    #@c
    .line 103
    iput-object v2, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    #@e
    .line 100
    :cond_0
    return-void
.end method

.method public resize(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    #@2
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    #@4
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    #@7
    .line 89
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 76
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    #@6
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    #@b
    .line 77
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    #@d
    .line 74
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "VirtualDisplay{display="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", token="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 110
    const-string/jumbo v1, ", surface="

    #@22
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 110
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    #@28
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 110
    const-string/jumbo v1, "}"

    #@2f
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
