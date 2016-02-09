.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderId"
.end annotation


# instance fields
.field final componentName:Landroid/content/ComponentName;

.field final uid:I


# direct methods
.method private constructor <init>(ILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3371
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@5
    .line 3372
    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@7
    .line 3370
    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    #@3
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
    .line 3377
    if-ne p0, p1, :cond_0

    #@4
    .line 3378
    return v4

    #@5
    .line 3380
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 3381
    return v3

    #@8
    .line 3383
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 3384
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 3386
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@16
    .line 3387
    .local v0, "other":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@18
    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 3388
    return v3

    #@1d
    .line 3390
    :cond_3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@1f
    if-nez v1, :cond_4

    #@21
    .line 3391
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@23
    if-eqz v1, :cond_5

    #@25
    .line 3392
    return v3

    #@26
    .line 3394
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@28
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@2a
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_5

    #@30
    .line 3395
    return v3

    #@31
    .line 3397
    :cond_5
    return v4
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 3402
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@2
    .line 3403
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    #@4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 3404
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@a
    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    #@d
    move-result v1

    #@e
    .line 3403
    :goto_0
    add-int v0, v2, v1

    #@10
    .line 3405
    return v0

    #@11
    .line 3404
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3410
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ProviderId{user:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

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
    .line 3411
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@1f
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@22
    move-result v1

    #@23
    .line 3410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 3411
    const-string/jumbo v1, ", cmp:"

    #@2a
    .line 3410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 3411
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@30
    .line 3410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 3411
    const/16 v1, 0x7d

    #@36
    .line 3410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    return-object v0
.end method
