.class final Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;
.super Landroid/hardware/input/ITabletModeChangedListener$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabletModeChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/input/InputManagerGlobal;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 551
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/ITabletModeChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public blacklist onTabletModeChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .line 554
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$monTabletModeChanged(Landroid/hardware/input/InputManagerGlobal;JZ)V

    .line 555
    return-void
.end method
