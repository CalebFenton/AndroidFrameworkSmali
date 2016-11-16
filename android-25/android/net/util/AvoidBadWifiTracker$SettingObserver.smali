.class Landroid/net/util/AvoidBadWifiTracker$SettingObserver;
.super Landroid/database/ContentObserver;
.source "AvoidBadWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/AvoidBadWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Landroid/net/util/AvoidBadWifiTracker;


# direct methods
.method public constructor <init>(Landroid/net/util/AvoidBadWifiTracker;)V
    .locals 3
    .param p1, "this$0"    # Landroid/net/util/AvoidBadWifiTracker;

    #@0
    .prologue
    .line 122
    iput-object p1, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->this$0:Landroid/net/util/AvoidBadWifiTracker;

    #@2
    .line 123
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@6
    .line 120
    const-string/jumbo v1, "network_avoid_bad_wifi"

    #@9
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->mUri:Landroid/net/Uri;

    #@f
    .line 124
    invoke-static {p1}, Landroid/net/util/AvoidBadWifiTracker;->-get1(Landroid/net/util/AvoidBadWifiTracker;)Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@16
    move-result-object v0

    #@17
    .line 125
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->mUri:Landroid/net/Uri;

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1d
    .line 122
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 130
    invoke-static {}, Landroid/net/util/AvoidBadWifiTracker;->-get0()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "Should never be reached."

    #@7
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 129
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->mUri:Landroid/net/Uri;

    #@2
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    return-void

    #@9
    .line 136
    :cond_0
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->this$0:Landroid/net/util/AvoidBadWifiTracker;

    #@b
    invoke-virtual {v0}, Landroid/net/util/AvoidBadWifiTracker;->reevaluate()V

    #@e
    .line 134
    return-void
.end method
