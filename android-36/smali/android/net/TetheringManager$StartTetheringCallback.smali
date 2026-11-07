.class public interface abstract Landroid/net/TetheringManager$StartTetheringCallback;
.super Ljava/lang/Object;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StartTetheringCallback"
.end annotation


# virtual methods
.method public whitelist onTetheringFailed(I)V
    .registers 2
    .param p1, "error"    # I

    .line 1370
    return-void
.end method

.method public whitelist onTetheringStarted()V
    .registers 1

    .line 1362
    return-void
.end method
