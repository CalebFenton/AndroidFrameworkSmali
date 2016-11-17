.class final Landroid/hardware/input/InputManager$TabletModeChangedListener;
.super Landroid/hardware/input/ITabletModeChangedListener$Stub;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabletModeChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method private constructor <init>(Landroid/hardware/input/InputManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/input/InputManager;

    #@0
    .prologue
    .line 1079
    iput-object p1, p0, Landroid/hardware/input/InputManager$TabletModeChangedListener;->this$0:Landroid/hardware/input/InputManager;

    #@2
    invoke-direct {p0}, Landroid/hardware/input/ITabletModeChangedListener$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$TabletModeChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/input/InputManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager$TabletModeChangedListener;-><init>(Landroid/hardware/input/InputManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public onTabletModeChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    #@0
    .prologue
    .line 1082
    iget-object v0, p0, Landroid/hardware/input/InputManager$TabletModeChangedListener;->this$0:Landroid/hardware/input/InputManager;

    #@2
    invoke-static {v0, p1, p2, p3}, Landroid/hardware/input/InputManager;->-wrap1(Landroid/hardware/input/InputManager;JZ)V

    #@5
    .line 1081
    return-void
.end method
