.class Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;
.super Landroid/support/v4/hardware/display/DisplayManagerCompat;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/display/DisplayManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyImpl"
.end annotation


# instance fields
.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat;-><init>()V

    #@3
    .line 109
    const-string/jumbo v0, "window"

    #@6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/WindowManager;

    #@c
    iput-object v0, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->mWindowManager:Landroid/view/WindowManager;

    #@e
    .line 108
    return-void
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 114
    iget-object v1, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->mWindowManager:Landroid/view/WindowManager;

    #@2
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@5
    move-result-object v0

    #@6
    .line 115
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    #@9
    move-result v1

    #@a
    if-ne v1, p1, :cond_0

    #@c
    .line 116
    return-object v0

    #@d
    .line 118
    :cond_0
    const/4 v1, 0x0

    #@e
    return-object v1
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 3

    #@0
    .prologue
    .line 123
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Landroid/view/Display;

    #@3
    iget-object v1, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->mWindowManager:Landroid/view/WindowManager;

    #@5
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    if-nez p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->getDisplays()[Landroid/view/Display;

    #@5
    move-result-object v0

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    new-array v0, v0, [Landroid/view/Display;

    #@a
    goto :goto_0
.end method
