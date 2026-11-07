.class Landroid/service/media/MediaBrowserService$ConnectionRecord;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionRecord"
.end annotation


# instance fields
.field public final greylist-max-o callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field public final greylist-max-o pid:I

.field public final greylist-max-o pkg:Ljava/lang/String;

.field public final greylist-max-o root:Landroid/service/media/MediaBrowserService$BrowserRoot;

.field public final greylist-max-o rootHints:Landroid/os/Bundle;

.field public final blacklist serviceState:Landroid/service/media/MediaBrowserService$ServiceState;

.field public final greylist-max-o subscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final greylist-max-o uid:I


# direct methods
.method public static synthetic blacklist $r8$lambda$tyDjMtR2qLf98_AYRSAGG_PVutE(Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/media/MediaBrowserService$ConnectionRecord;->lambda$binderDied$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService$BrowserRoot;)V
    .registers 9
    .param p1, "serviceState"    # Landroid/service/media/MediaBrowserService$ServiceState;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "rootHints"    # Landroid/os/Bundle;
    .param p6, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p7, "root"    # Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    .line 140
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->serviceState:Landroid/service/media/MediaBrowserService$ServiceState;

    .line 141
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    .line 142
    iput p3, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pid:I

    .line 143
    iput p4, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->uid:I

    .line 144
    iput-object p5, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    .line 145
    iput-object p6, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 146
    iput-object p7, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 147
    return-void
.end method

.method private synthetic blacklist lambda$binderDied$0()V
    .registers 3

    .line 152
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->serviceState:Landroid/service/media/MediaBrowserService$ServiceState;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService$ServiceState;->-$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 151
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->serviceState:Landroid/service/media/MediaBrowserService$ServiceState;

    new-instance v1, Landroid/service/media/MediaBrowserService$ConnectionRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/media/MediaBrowserService$ConnectionRecord$$ExternalSyntheticLambda0;-><init>(Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method
