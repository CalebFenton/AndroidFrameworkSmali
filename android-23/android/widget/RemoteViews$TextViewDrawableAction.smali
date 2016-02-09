.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableAction"
.end annotation


# static fields
.field public static final TAG:I = 0xb


# instance fields
.field d1:I

.field d2:I

.field d3:I

.field d4:I

.field i1:Landroid/graphics/drawable/Icon;

.field i2:Landroid/graphics/drawable/Icon;

.field i3:Landroid/graphics/drawable/Icon;

.field i4:Landroid/graphics/drawable/Icon;

.field isRelative:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field useIcons:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIIII)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "d1"    # I
    .param p5, "d2"    # I
    .param p6, "d3"    # I
    .param p7, "d4"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1412
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    #@3
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@7
    .line 1524
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@9
    .line 1525
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@b
    .line 1413
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@d
    .line 1414
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@f
    .line 1415
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@11
    .line 1416
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@13
    .line 1417
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@15
    .line 1418
    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@17
    .line 1419
    iput p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@19
    .line 1412
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "i1"    # Landroid/graphics/drawable/Icon;
    .param p5, "i2"    # Landroid/graphics/drawable/Icon;
    .param p6, "i3"    # Landroid/graphics/drawable/Icon;
    .param p7, "i4"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1422
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    #@3
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@7
    .line 1524
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@9
    .line 1525
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@b
    .line 1424
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@d
    .line 1425
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@f
    .line 1426
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@12
    .line 1427
    iput-object p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@14
    .line 1428
    iput-object p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@16
    .line 1429
    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@18
    .line 1430
    iput-object p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@1a
    .line 1423
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1433
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@8
    .line 1524
    iput-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@a
    .line 1525
    iput-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@c
    .line 1434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@12
    .line 1435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_4

    #@18
    move v0, v1

    #@19
    :goto_0
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@1b
    .line 1436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_5

    #@21
    :goto_1
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@23
    .line 1437
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@25
    if-eqz v0, :cond_6

    #@27
    .line 1438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 1439
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@35
    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@37
    .line 1441
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_1

    #@3d
    .line 1442
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@45
    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@47
    .line 1444
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_2

    #@4d
    .line 1445
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@55
    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@57
    .line 1447
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_3

    #@5d
    .line 1448
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@65
    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@67
    .line 1433
    :cond_3
    :goto_2
    return-void

    #@68
    :cond_4
    move v0, v2

    #@69
    .line 1435
    goto :goto_0

    #@6a
    :cond_5
    move v1, v2

    #@6b
    .line 1436
    goto :goto_1

    #@6c
    .line 1451
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v0

    #@70
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@72
    .line 1452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v0

    #@76
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@78
    .line 1453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v0

    #@7c
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@7e
    .line 1454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v0

    #@82
    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@84
    goto :goto_2
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 1498
    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@2
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v5

    #@6
    check-cast v5, Landroid/widget/TextView;

    #@8
    .line 1499
    .local v5, "target":Landroid/widget/TextView;
    if-nez v5, :cond_0

    #@a
    return-void

    #@b
    .line 1500
    :cond_0
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@d
    if-eqz v6, :cond_6

    #@f
    .line 1501
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    .line 1502
    .local v0, "ctx":Landroid/content/Context;
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@15
    if-nez v6, :cond_1

    #@17
    const/4 v1, 0x0

    #@18
    .line 1503
    :goto_0
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@1a
    if-nez v6, :cond_2

    #@1c
    const/4 v2, 0x0

    #@1d
    .line 1504
    :goto_1
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@1f
    if-nez v6, :cond_3

    #@21
    const/4 v3, 0x0

    #@22
    .line 1505
    :goto_2
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@24
    if-nez v6, :cond_4

    #@26
    const/4 v4, 0x0

    #@27
    .line 1506
    :goto_3
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@29
    if-eqz v6, :cond_5

    #@2b
    .line 1507
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@2e
    .line 1497
    .end local v0    # "ctx":Landroid/content/Context;
    :goto_4
    return-void

    #@2f
    .line 1502
    .restart local v0    # "ctx":Landroid/content/Context;
    :cond_1
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@31
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@34
    move-result-object v1

    #@35
    .local v1, "id1":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@36
    .line 1503
    .end local v1    # "id1":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@38
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@3b
    move-result-object v2

    #@3c
    .local v2, "id2":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    #@3d
    .line 1504
    .end local v2    # "id2":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@3f
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@42
    move-result-object v3

    #@43
    .local v3, "id3":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    #@44
    .line 1505
    .end local v3    # "id3":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@46
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@49
    move-result-object v4

    #@4a
    .local v4, "id4":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@4b
    .line 1509
    .end local v4    # "id4":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@4e
    goto :goto_4

    #@4f
    .line 1512
    .end local v0    # "ctx":Landroid/content/Context;
    :cond_6
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@51
    if-eqz v6, :cond_7

    #@53
    .line 1513
    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@55
    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@57
    iget v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@59
    iget v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@5b
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    #@5e
    goto :goto_4

    #@5f
    .line 1515
    :cond_7
    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@61
    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@63
    iget v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@65
    iget v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@67
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    #@6a
    goto :goto_4
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1521
    const-string/jumbo v0, "TextViewDrawableAction"

    #@3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1459
    const/16 v0, 0xb

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1460
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1461
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1462
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    move v0, v1

    #@19
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1463
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    #@1e
    if-eqz v0, :cond_6

    #@20
    .line 1464
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 1465
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 1466
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    #@29
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 1470
    :goto_2
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 1471
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 1472
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    #@35
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@38
    .line 1476
    :goto_3
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    .line 1477
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 1478
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    #@41
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@44
    .line 1482
    :goto_4
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@46
    if-eqz v0, :cond_5

    #@48
    .line 1483
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 1484
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    #@4d
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@50
    .line 1458
    :goto_5
    return-void

    #@51
    :cond_0
    move v0, v2

    #@52
    .line 1461
    goto :goto_0

    #@53
    :cond_1
    move v0, v2

    #@54
    .line 1462
    goto :goto_1

    #@55
    .line 1468
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    goto :goto_2

    #@59
    .line 1474
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    goto :goto_3

    #@5d
    .line 1480
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    goto :goto_4

    #@61
    .line 1486
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    goto :goto_5

    #@65
    .line 1489
    :cond_6
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    #@67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 1490
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    #@6c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 1491
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    #@71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@74
    .line 1492
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    #@76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@79
    goto :goto_5
.end method
