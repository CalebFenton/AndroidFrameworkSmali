.class final Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;
.super Ljava/lang/Object;
.source "MediaRouteChooserDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RouteComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/media/MediaRouter$RouteInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final sInstance:Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 266
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;

    #@2
    invoke-direct {v0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;

    #@7
    .line 265
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteInfo;)I
    .locals 2
    .param p1, "lhs"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "rhs"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 269
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/media/MediaRouter$RouteInfo;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;->compare(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
