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


# static fields
.field public static final whitelist EXTRA_OFFLINE:Ljava/lang/String; = "android.service.media.extra.OFFLINE"

.field public static final whitelist EXTRA_RECENT:Ljava/lang/String; = "android.service.media.extra.RECENT"

.field public static final whitelist EXTRA_SUGGESTED:Ljava/lang/String; = "android.service.media.extra.SUGGESTED"


# instance fields
.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mRootId:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    if-eqz p1, :cond_a

    .line 624
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mRootId:Ljava/lang/String;

    .line 625
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mExtras:Landroid/os/Bundle;

    .line 626
    return-void

    .line 621
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 639
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getRootId()Ljava/lang/String;
    .registers 2

    .line 632
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$BrowserRoot;->mRootId:Ljava/lang/String;

    return-object v0
.end method
