.class final Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
.super Ljava/lang/Object;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegisteredBatteryListeners"
.end annotation


# instance fields
.field final blacklist mDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;-><init>()V

    return-void
.end method
