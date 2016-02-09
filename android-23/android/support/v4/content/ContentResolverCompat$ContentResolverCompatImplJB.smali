.class Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplJB;
.super Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;
.source "ContentResolverCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ContentResolverCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentResolverCompatImplJB"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/support/v4/os/CancellationSignal;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 58
    if-eqz p7, :cond_0

    #@3
    .line 59
    invoke-virtual {p7}, Landroid/support/v4/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    #@6
    move-result-object v6

    #@7
    :cond_0
    move-object v0, p1

    #@8
    move-object v1, p2

    #@9
    move-object v2, p3

    #@a
    move-object v3, p4

    #@b
    move-object v4, p5

    #@c
    move-object v5, p6

    #@d
    .line 56
    invoke-static/range {v0 .. v6}, Landroid/support/v4/content/ContentResolverCompatJellybean;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method
