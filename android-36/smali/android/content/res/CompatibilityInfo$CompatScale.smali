.class public final Landroid/content/res/CompatibilityInfo$CompatScale;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompatScale"
.end annotation


# instance fields
.field public final blacklist mDensityScaleFactor:F

.field public final blacklist mScaleFactor:F


# direct methods
.method public constructor blacklist <init>(F)V
    .registers 2
    .param p1, "scaleFactor"    # F

    .line 964
    invoke-direct {p0, p1, p1}, Landroid/content/res/CompatibilityInfo$CompatScale;-><init>(FF)V

    .line 965
    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .registers 3
    .param p1, "scaleFactor"    # F
    .param p2, "densityScaleFactor"    # F

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput p1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    .line 969
    iput p2, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    .line 970
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 974
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 975
    return v0

    .line 977
    :cond_4
    instance-of v1, p1, Landroid/content/res/CompatibilityInfo$CompatScale;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 978
    return v2

    .line 981
    :cond_a
    :try_start_a
    move-object v1, p1

    check-cast v1, Landroid/content/res/CompatibilityInfo$CompatScale;

    .line 982
    .local v1, "oc":Landroid/content/res/CompatibilityInfo$CompatScale;
    iget v3, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    iget v4, v1, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_16

    return v2

    .line 983
    :cond_16
    iget v3, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    iget v4, v1, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_1a} :catch_20

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1f

    return v2

    .line 984
    :cond_1f
    return v0

    .line 985
    .end local v1    # "oc":Landroid/content/res/CompatibilityInfo$CompatScale;
    :catch_20
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/ClassCastException;
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1002
    const/16 v0, 0x11

    .line 1003
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 1004
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1005
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 993
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mScaleFactor= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    iget v1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 995
    const-string v1, " mDensityScaleFactor= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    iget v1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
