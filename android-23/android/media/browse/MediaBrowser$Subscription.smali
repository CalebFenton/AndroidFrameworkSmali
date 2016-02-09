.class Landroid/media/browse/MediaBrowser$Subscription;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Subscription"
.end annotation


# instance fields
.field callback:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

.field final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 907
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$Subscription;->id:Ljava/lang/String;

    #@5
    .line 906
    return-void
.end method
