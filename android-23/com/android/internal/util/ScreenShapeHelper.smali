.class public Lcom/android/internal/util/ScreenShapeHelper;
.super Ljava/lang/Object;
.source "ScreenShapeHelper.java"


# static fields
.field private static final IS_EMULATOR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 17
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "goldfish"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@8
    move-result v0

    #@9
    sput-boolean v0, Lcom/android/internal/util/ScreenShapeHelper;->IS_EMULATOR:Z

    #@b
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getWindowOutsetBottomPx(Landroid/content/res/Resources;)I
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 24
    sget-boolean v0, Lcom/android/internal/util/ScreenShapeHelper;->IS_EMULATOR:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 25
    const-string/jumbo v0, "ro.emu.win_outset_bottom_px"

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 27
    :cond_0
    const v0, 0x10e008c

    #@10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    #@13
    move-result v0

    #@14
    return v0
.end method
