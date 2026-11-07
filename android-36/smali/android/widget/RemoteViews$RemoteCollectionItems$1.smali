.class Landroid/widget/RemoteViews$RemoteCollectionItems$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews$RemoteCollectionItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/RemoteViews$RemoteCollectionItems;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 9823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 9827
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 9823
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 3
    .param p1, "size"    # I

    .line 9833
    new-array v0, p1, [Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 9823
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems$1;->newArray(I)[Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p1

    return-object p1
.end method
