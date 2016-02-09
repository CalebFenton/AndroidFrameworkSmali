.class final Landroid/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/ActivityChooserModel;

    #@0
    .prologue
    .line 939
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 943
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 942
    iput-object v0, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    #@c
    .line 939
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$DefaultSorter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserModel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;)V

    #@3
    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 947
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .local p3, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    iget-object v3, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    #@2
    .line 949
    .local v3, "componentNameToActivityMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    #@5
    .line 951
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@8
    move-result v1

    #@9
    .line 952
    .local v1, "activityCount":I
    const/4 v5, 0x0

    #@a
    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    #@c
    .line 953
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@12
    .line 954
    .local v0, "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    const/4 v8, 0x0

    #@13
    iput v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@15
    .line 955
    new-instance v2, Landroid/content/ComponentName;

    #@17
    .line 956
    iget-object v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@19
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1b
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1d
    .line 957
    iget-object v9, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@1f
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@21
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@23
    .line 955
    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 958
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 952
    add-int/lit8 v5, v5, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 961
    .end local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@2f
    move-result v8

    #@30
    add-int/lit8 v6, v8, -0x1

    #@32
    .line 962
    .local v6, "lastShareIndex":I
    const/high16 v7, 0x3f800000    # 1.0f

    #@34
    .line 963
    .local v7, "nextRecordWeight":F
    move v5, v6

    #@35
    :goto_1
    if-ltz v5, :cond_2

    #@37
    .line 964
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    #@3d
    .line 965
    .local v4, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v2, v4, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@3f
    .line 966
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@45
    .line 967
    .restart local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v0, :cond_1

    #@47
    .line 968
    iget v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@49
    iget v9, v4, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@4b
    mul-float/2addr v9, v7

    #@4c
    add-float/2addr v8, v9

    #@4d
    iput v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@4f
    .line 969
    const v8, 0x3f733333    # 0.95f

    #@52
    mul-float/2addr v7, v8

    #@53
    .line 963
    :cond_1
    add-int/lit8 v5, v5, -0x1

    #@55
    goto :goto_1

    #@56
    .line 973
    .end local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@59
    .line 946
    return-void
.end method
