.class public final Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;
.super Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
.source "VirtualNavigationTouchpadConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualNavigationTouchpadConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
        "Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mHeight:I

.field private final blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;->mWidth:I

    return p0
.end method

.method public constructor whitelist <init>(II)V
    .registers 6
    .param p1, "touchpadWidth"    # I
    .param p2, "touchpadHeight"    # I

    .line 107
    invoke-direct {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;-><init>()V

    .line 108
    if-lez p2, :cond_c

    if-lez p1, :cond_c

    .line 114
    iput p2, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;->mHeight:I

    .line 115
    iput p1, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;->mWidth:I

    .line 116
    return-void

    .line 109
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a virtual navigation touchpad, touchpad dimensions must be positive. Got: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    .registers 3

    .line 123
    new-instance v0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;-><init>(Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;Landroid/hardware/input/VirtualNavigationTouchpadConfig-IA;)V

    return-object v0
.end method
