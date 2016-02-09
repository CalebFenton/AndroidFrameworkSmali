.class public final Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Landroid/widget/ActivityChooserModel;

.field public weight:F


# direct methods
.method public constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserModel;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 894
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/widget/ActivityChooserModel;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 895
    iput-object p2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@7
    .line 894
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/widget/ActivityChooserModel$ActivityResolveInfo;)I
    .locals 2
    .param p1, "another"    # Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@0
    .prologue
    .line 922
    iget v0, p1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@8
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 921
    check-cast p1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->compareTo(Landroid/widget/ActivityChooserModel$ActivityResolveInfo;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 905
    if-ne p0, p1, :cond_0

    #@4
    .line 906
    return v4

    #@5
    .line 908
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 909
    return v3

    #@8
    .line 911
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 912
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 914
    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@16
    .line 915
    .local v0, "other":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget v1, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@18
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1b
    move-result v1

    #@1c
    iget v2, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@1e
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@21
    move-result v2

    #@22
    if-eq v1, v2, :cond_3

    #@24
    .line 916
    return v3

    #@25
    .line 918
    :cond_3
    return v4
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 900
    iget v0, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, 0x1f

    #@8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 928
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 929
    const-string/jumbo v1, "resolveInfo:"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@14
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 930
    const-string/jumbo v1, "; weight:"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    new-instance v2, Ljava/math/BigDecimal;

    #@24
    iget v3, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@26
    float-to-double v4, v3

    #@27
    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    .line 931
    const-string/jumbo v1, "]"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 932
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method
