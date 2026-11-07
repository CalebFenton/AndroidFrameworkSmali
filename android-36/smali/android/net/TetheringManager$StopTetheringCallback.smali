.class public interface abstract Landroid/net/TetheringManager$StopTetheringCallback;
.super Ljava/lang/Object;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StopTetheringCallback"
.end annotation


# virtual methods
.method public whitelist onStopTetheringFailed(I)V
    .registers 2
    .param p1, "error"    # I

    .line 1388
    return-void
.end method

.method public whitelist onStopTetheringSucceeded()V
    .registers 1

    .line 1381
    return-void
.end method
