.class public final Landroid/widget/ActivityChooserModel$HistoricalRecord;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalRecord"
.end annotation


# instance fields
.field public final activity:Landroid/content/ComponentName;

.field public final time:J

.field public final weight:F


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;JF)V
    .locals 0
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .param p2, "time"    # J
    .param p4, "weight"    # F

    #@0
    .prologue
    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 819
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@5
    .line 820
    iput-wide p2, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@7
    .line 821
    iput p4, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@9
    .line 818
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JF)V
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "weight"    # F

    #@0
    .prologue
    .line 808
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    #@7
    .line 807
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 836
    if-ne p0, p1, :cond_0

    #@4
    .line 837
    return v7

    #@5
    .line 839
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 840
    return v6

    #@8
    .line 842
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel$HistoricalRecord;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 843
    return v6

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 845
    check-cast v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    #@16
    .line 846
    .local v0, "other":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v1, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 847
    iget-object v1, v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 848
    return v6

    #@1f
    .line 850
    :cond_3
    iget-object v1, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@21
    iget-object v2, v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@23
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_4

    #@29
    .line 851
    return v6

    #@2a
    .line 853
    :cond_4
    iget-wide v2, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@2c
    iget-wide v4, v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@2e
    cmp-long v1, v2, v4

    #@30
    if-eqz v1, :cond_5

    #@32
    .line 854
    return v6

    #@33
    .line 856
    :cond_5
    iget v1, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@35
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@38
    move-result v1

    #@39
    iget v2, v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@3b
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3e
    move-result v2

    #@3f
    if-eq v1, v2, :cond_6

    #@41
    .line 857
    return v6

    #@42
    .line 859
    :cond_6
    return v7
.end method

.method public hashCode()I
    .locals 8

    #@0
    .prologue
    .line 826
    const/16 v0, 0x1f

    #@2
    .line 828
    .local v0, "prime":I
    iget-object v2, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@4
    if-nez v2, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    #@9
    .line 829
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@b
    iget-wide v4, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@d
    iget-wide v6, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@f
    const/16 v3, 0x20

    #@11
    ushr-long/2addr v6, v3

    #@12
    xor-long/2addr v4, v6

    #@13
    long-to-int v3, v4

    #@14
    add-int v1, v2, v3

    #@16
    .line 830
    mul-int/lit8 v2, v1, 0x1f

    #@18
    iget v3, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@1a
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1d
    move-result v3

    #@1e
    add-int v1, v2, v3

    #@20
    .line 831
    return v1

    #@21
    .line 828
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@23
    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    #@26
    move-result v2

    #@27
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 865
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 866
    const-string/jumbo v1, "; activity:"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    .line 867
    const-string/jumbo v1, "; time:"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget-wide v2, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@20
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@23
    .line 868
    const-string/jumbo v1, "; weight:"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    new-instance v2, Ljava/math/BigDecimal;

    #@2c
    iget v3, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@2e
    float-to-double v4, v3

    #@2f
    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    .line 869
    const-string/jumbo v1, "]"

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 870
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    return-object v1
.end method
