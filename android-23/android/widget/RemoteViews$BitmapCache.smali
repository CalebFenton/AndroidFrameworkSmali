.class Landroid/widget/RemoteViews$BitmapCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapCache"
.end annotation


# instance fields
.field mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 947
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@a
    .line 946
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    .line 952
    .local v1, "count":I
    new-instance v3, Ljava/util/ArrayList;

    #@9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@e
    .line 953
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@11
    .line 954
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/graphics/Bitmap;

    #@19
    .line 955
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 953
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 950
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method


# virtual methods
.method public addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .locals 2
    .param p1, "memoryCounter"    # Landroid/widget/RemoteViews$MemoryUsageCounter;

    #@0
    .prologue
    .line 1000
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 1001
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/graphics/Bitmap;

    #@11
    invoke-virtual {p1, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;->addBitmapMemory(Landroid/graphics/Bitmap;)V

    #@14
    .line 1000
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 999
    :cond_0
    return-void
.end method

.method public assimilate(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 5
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    #@0
    .prologue
    .line 989
    iget-object v1, p1, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@2
    .line 990
    .local v1, "bitmapsToBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 991
    .local v2, "count":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@9
    .line 992
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/graphics/Bitmap;

    #@f
    .line 993
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_0

    #@17
    .line 994
    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 991
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 988
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public getBitmapForId(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 973
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    if-lt p1, v0, :cond_1

    #@b
    .line 974
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0

    #@d
    .line 976
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/graphics/Bitmap;

    #@15
    return-object v0
.end method

.method public getBitmapId(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 960
    if-nez p1, :cond_0

    #@2
    .line 961
    const/4 v0, -0x1

    #@3
    return v0

    #@4
    .line 963
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 964
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 966
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 967
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    add-int/lit8 v0, v0, -0x1

    #@20
    return v0
.end method

.method public writeBitmapsToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 981
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 982
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 983
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 984
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/graphics/Bitmap;

    #@14
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 983
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 980
    :cond_0
    return-void
.end method
