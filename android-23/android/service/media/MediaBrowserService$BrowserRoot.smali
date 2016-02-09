.class public final Landroid/service/media/MediaBrowserService$BrowserRoot;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowserRoot"
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mRootId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 536
    if-nez p1, :cond_0

    #@5
    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 540
    :cond_0
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mRootId:Ljava/lang/String;

    #@10
    .line 541
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mExtras:Landroid/os/Bundle;

    #@12
    .line 535
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getRootId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mRootId:Ljava/lang/String;

    #@2
    return-object v0
.end method
