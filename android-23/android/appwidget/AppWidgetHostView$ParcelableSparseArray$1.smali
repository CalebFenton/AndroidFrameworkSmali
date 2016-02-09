.class final Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray$1;
.super Ljava/lang/Object;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 613
    new-instance v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@2
    const/4 v4, 0x0

    #@3
    invoke-direct {v0, v4}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;)V

    #@6
    .line 614
    .local v0, "array":Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v3

    #@e
    .line 615
    .local v3, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v1

    #@12
    .line 616
    .local v1, "count":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@15
    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v4

    #@19
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v0, v4, v5}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;->put(ILjava/lang/Object;)V

    #@20
    .line 616
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 619
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 612
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray$1;->createFromParcel(Landroid/os/Parcel;)Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 623
    new-array v0, p1, [Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 622
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray$1;->newArray(I)[Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
