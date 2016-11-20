.class public abstract Landroid/view/OrientationListener;
.super Ljava/lang/Object;
.source "OrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OrientationListener$OrientationEventListenerInternal;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ORIENTATION_UNKNOWN:I = -0x1


# instance fields
.field private mOrientationEventLis:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Landroid/view/OrientationListener$OrientationEventListenerInternal;

    #@5
    invoke-direct {v0, p0, p1}, Landroid/view/OrientationListener$OrientationEventListenerInternal;-><init>(Landroid/view/OrientationListener;Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Landroid/view/OrientationListener;->mOrientationEventLis:Landroid/view/OrientationEventListener;

    #@a
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rate"    # I

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    new-instance v0, Landroid/view/OrientationListener$OrientationEventListenerInternal;

    #@5
    invoke-direct {v0, p0, p1, p2}, Landroid/view/OrientationListener$OrientationEventListenerInternal;-><init>(Landroid/view/OrientationListener;Landroid/content/Context;I)V

    #@8
    iput-object v0, p0, Landroid/view/OrientationListener;->mOrientationEventLis:Landroid/view/OrientationEventListener;

    #@a
    .line 58
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/view/OrientationListener;->mOrientationEventLis:Landroid/view/OrientationEventListener;

    #@2
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    #@5
    .line 89
    return-void
.end method

.method public enable()V
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/OrientationListener;->mOrientationEventLis:Landroid/view/OrientationEventListener;

    #@2
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    #@5
    .line 82
    return-void
.end method

.method public onAccuracyChanged(II)V
    .locals 0
    .param p1, "sensor"    # I
    .param p2, "accuracy"    # I

    #@0
    .prologue
    .line 93
    return-void
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public onSensorChanged(I[F)V
    .locals 0
    .param p1, "sensor"    # I
    .param p2, "values"    # [F

    #@0
    .prologue
    .line 96
    return-void
.end method
