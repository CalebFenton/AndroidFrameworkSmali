.class public final Landroid/media/MediaRouterClientState;
.super Ljava/lang/Object;
.source "MediaRouterClientState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouterClientState$RouteInfo;,
        Landroid/media/MediaRouterClientState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaRouterClientState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public globallySelectedRouteId:Ljava/lang/String;

.field public final routes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaRouterClientState$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/media/MediaRouterClientState$1;

    #@2
    invoke-direct {v0}, Landroid/media/MediaRouterClientState$1;-><init>()V

    #@5
    .line 81
    sput-object v0, Landroid/media/MediaRouterClientState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    #@a
    .line 44
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    sget-object v0, Landroid/media/MediaRouterClientState$RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    #@b
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/media/MediaRouterClientState;->globallySelectedRouteId:Ljava/lang/String;

    #@11
    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRoute(Ljava/lang/String;)Landroid/media/MediaRouterClientState$RouteInfo;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    iget-object v3, p0, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 55
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 56
    iget-object v3, p0, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/media/MediaRouterClientState$RouteInfo;

    #@11
    .line 57
    .local v2, "route":Landroid/media/MediaRouterClientState$RouteInfo;
    iget-object v3, v2, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 58
    return-object v2

    #@1a
    .line 55
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 61
    .end local v2    # "route":Landroid/media/MediaRouterClientState$RouteInfo;
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "MediaRouterClientState{ globallySelectedRouteId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 78
    iget-object v1, p0, Landroid/media/MediaRouterClientState;->globallySelectedRouteId:Ljava/lang/String;

    #@e
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 78
    const-string/jumbo v1, ", routes="

    #@15
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 78
    iget-object v1, p0, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 78
    const-string/jumbo v1, " }"

    #@26
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@5
    .line 72
    iget-object v0, p0, Landroid/media/MediaRouterClientState;->globallySelectedRouteId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 70
    return-void
.end method
