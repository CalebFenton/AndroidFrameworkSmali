.class public Landroid/media/browse/MediaBrowser$ConnectionCallback;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    #@0
    .prologue
    .line 709
    return-void
.end method

.method public onConnectionFailed()V
    .locals 0

    #@0
    .prologue
    .line 721
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    #@0
    .prologue
    .line 715
    return-void
.end method
