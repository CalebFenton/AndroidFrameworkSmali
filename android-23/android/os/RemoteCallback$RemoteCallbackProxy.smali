.class Landroid/os/RemoteCallback$RemoteCallbackProxy;
.super Landroid/os/RemoteCallback;
.source "RemoteCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteCallbackProxy"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "target"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/IRemoteCallback;)V

    #@3
    .line 47
    return-void
.end method


# virtual methods
.method protected onResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 51
    return-void
.end method
