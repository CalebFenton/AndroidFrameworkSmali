.class Landroid/service/media/MediaBrowserService$ConnectionRecord;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRecord"
.end annotation


# instance fields
.field callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field pkg:Ljava/lang/String;

.field root:Landroid/service/media/MediaBrowserService$BrowserRoot;

.field rootHints:Landroid/os/Bundle;

.field subscriptions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/service/media/MediaBrowserService;


# direct methods
.method private constructor <init>(Landroid/service/media/MediaBrowserService;)V
    .locals 1
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;

    #@0
    .prologue
    .line 93
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->this$0:Landroid/service/media/MediaBrowserService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 98
    new-instance v0, Ljava/util/HashSet;

    #@7
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@a
    iput-object v0, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashSet;

    #@c
    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService;)V

    #@3
    return-void
.end method
