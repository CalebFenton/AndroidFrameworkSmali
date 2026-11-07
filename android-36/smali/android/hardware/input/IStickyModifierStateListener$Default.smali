.class public Landroid/hardware/input/IStickyModifierStateListener$Default;
.super Ljava/lang/Object;
.source "IStickyModifierStateListener.java"

# interfaces
.implements Landroid/hardware/input/IStickyModifierStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IStickyModifierStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onStickyModifierStateChanged(II)V
    .registers 3
    .param p1, "modifierState"    # I
    .param p2, "lockedModifierState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
