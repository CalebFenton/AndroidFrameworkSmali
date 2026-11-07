.class final Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;
.super Ljava/lang/Object;
.source "MediaRouteChooserContentManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RouteComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/media/MediaRouter$RouteInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist sInstance:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 231
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;

    invoke-direct {v0}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;-><init>()V

    sput-object v0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;->sInstance:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteInfo;)I
    .registers 5
    .param p1, "lhs"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "rhs"    # Landroid/media/MediaRouter$RouteInfo;

    .line 235
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 230
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    check-cast p2, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;->compare(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteInfo;)I

    move-result p1

    return p1
.end method
