.class final Landroid/widget/RemoteViews$HierarchyRootData;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HierarchyRootData"
.end annotation


# instance fields
.field final blacklist mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

.field final blacklist mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field final blacklist mClassCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRemoteCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$RemoteCollectionCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V
    .registers 5
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;
    .param p2, "remoteCollectionCache"    # Landroid/widget/RemoteViews$RemoteCollectionCache;
    .param p3, "applicationInfoCache"    # Landroid/widget/RemoteViews$ApplicationInfoCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews$BitmapCache;",
            "Landroid/widget/RemoteViews$RemoteCollectionCache;",
            "Landroid/widget/RemoteViews$ApplicationInfoCache;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 10136
    .local p4, "classCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10137
    iput-object p1, p0, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 10138
    iput-object p2, p0, Landroid/widget/RemoteViews$HierarchyRootData;->mRemoteCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 10139
    iput-object p3, p0, Landroid/widget/RemoteViews$HierarchyRootData;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 10140
    iput-object p4, p0, Landroid/widget/RemoteViews$HierarchyRootData;->mClassCookies:Ljava/util/Map;

    .line 10141
    return-void
.end method
