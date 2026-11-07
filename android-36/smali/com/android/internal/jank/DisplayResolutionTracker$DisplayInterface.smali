.class public interface abstract Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;
.super Ljava/lang/Object;
.source "DisplayResolutionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/DisplayResolutionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DisplayInterface"
.end annotation


# direct methods
.method public static blacklist getDefault(Landroid/os/Handler;)Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;
    .registers 5
    .param p0, "handler"    # Landroid/os/Handler;

    .line 147
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->displayListenerPerformanceImprovements()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 149
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->delayImplicitRrRegistrationUntilRrAccessed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 150
    const-wide/16 v0, 0x3

    .local v0, "displayEventsToBeSubscribed":J
    goto :goto_11

    .line 153
    .end local v0    # "displayEventsToBeSubscribed":J
    :cond_f
    const-wide/16 v0, 0x43

    .line 157
    .restart local v0    # "displayEventsToBeSubscribed":J
    :goto_11
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 158
    .local v2, "manager":Landroid/hardware/display/DisplayManagerGlobal;
    new-instance v3, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;

    invoke-direct {v3, v2, p0, v0, v1}, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Handler;J)V

    return-object v3
.end method


# virtual methods
.method public abstract blacklist getDisplayInfo(I)Landroid/view/DisplayInfo;
.end method

.method public abstract blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
.end method
