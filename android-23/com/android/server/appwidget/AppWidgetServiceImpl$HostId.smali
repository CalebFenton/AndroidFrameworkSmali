.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HostId"
.end annotation


# instance fields
.field final hostId:I

.field final packageName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "hostId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3455
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@5
    .line 3456
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    #@7
    .line 3457
    iput-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@9
    .line 3454
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 3462
    if-ne p0, p1, :cond_0

    #@4
    .line 3463
    return v4

    #@5
    .line 3465
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 3466
    return v3

    #@8
    .line 3468
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 3469
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 3471
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@16
    .line 3472
    .local v0, "other":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@18
    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 3473
    return v3

    #@1d
    .line 3475
    :cond_3
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    #@1f
    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    #@21
    if-eq v1, v2, :cond_4

    #@23
    .line 3476
    return v3

    #@24
    .line 3478
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@26
    if-nez v1, :cond_5

    #@28
    .line 3479
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@2a
    if-eqz v1, :cond_6

    #@2c
    .line 3480
    return v3

    #@2d
    .line 3482
    :cond_5
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@2f
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_6

    #@37
    .line 3483
    return v3

    #@38
    .line 3485
    :cond_6
    return v4
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 3490
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@2
    .line 3491
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@4
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    #@6
    add-int v0, v1, v2

    #@8
    .line 3492
    mul-int/lit8 v2, v0, 0x1f

    #@a
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 3493
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@13
    move-result v1

    #@14
    .line 3492
    :goto_0
    add-int v0, v2, v1

    #@16
    .line 3494
    return v0

    #@17
    .line 3493
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3499
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "HostId{user:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@e
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ", app:"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 3500
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@1f
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@22
    move-result v1

    #@23
    .line 3499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 3500
    const-string/jumbo v1, ", hostId:"

    #@2a
    .line 3499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 3500
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    #@30
    .line 3499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 3501
    const-string/jumbo v1, ", pkg:"

    #@37
    .line 3499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 3501
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@3d
    .line 3499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 3501
    const/16 v1, 0x7d

    #@43
    .line 3499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    return-object v0
.end method
