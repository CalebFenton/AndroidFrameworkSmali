.class final Landroid/database/ContentObserver$Transport;
.super Landroid/database/IContentObserver$Stub;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "contentObserver"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 223
    invoke-direct {p0}, Landroid/database/IContentObserver$Stub;-><init>()V

    #@3
    .line 224
    iput-object p1, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    #@5
    .line 223
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    #@2
    .line 230
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    if-eqz v0, :cond_0

    #@4
    .line 231
    invoke-static {v0, p1, p2, p3}, Landroid/database/ContentObserver;->-wrap0(Landroid/database/ContentObserver;ZLandroid/net/Uri;I)V

    #@7
    .line 228
    :cond_0
    return-void
.end method

.method public releaseContentObserver()V
    .locals 1

    #@0
    .prologue
    .line 236
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    #@3
    .line 235
    return-void
.end method
