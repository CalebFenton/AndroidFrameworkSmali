.class public abstract Landroid/hardware/display/VirtualDisplay$Callback;
.super Ljava/lang/Object;
.source "VirtualDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/VirtualDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPaused()V
    .registers 1

    .line 152
    return-void
.end method

.method public whitelist onResumed()V
    .registers 1

    .line 158
    return-void
.end method

.method public whitelist onStopped()V
    .registers 1

    .line 166
    return-void
.end method
