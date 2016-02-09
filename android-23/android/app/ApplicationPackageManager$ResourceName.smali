.class final Landroid/app/ApplicationPackageManager$ResourceName;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceName"
.end annotation


# instance fields
.field final iconId:I

.field final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "_iconId"    # I

    #@0
    .prologue
    .line 1211
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    #@5
    .line 1210
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ComponentInfo;I)V
    .locals 1
    .param p1, "cInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "_iconId"    # I

    #@0
    .prologue
    .line 1215
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@4
    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    #@7
    .line 1214
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ResolveInfo;I)V
    .locals 1
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "_iconId"    # I

    #@0
    .prologue
    .line 1219
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@6
    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    #@9
    .line 1218
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_iconId"    # I

    #@0
    .prologue
    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1206
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    #@5
    .line 1207
    iput p2, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    #@7
    .line 1205
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1224
    if-ne p0, p1, :cond_0

    #@4
    return v2

    #@5
    .line 1225
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager$ResourceName;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 1227
    check-cast v0, Landroid/app/ApplicationPackageManager$ResourceName;

    #@15
    .line 1229
    .local v0, "that":Landroid/app/ApplicationPackageManager$ResourceName;
    iget v3, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    #@17
    iget v4, v0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    #@19
    if-eq v3, v4, :cond_3

    #@1b
    return v1

    #@1c
    .line 1230
    :cond_3
    iget-object v3, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    #@1e
    if-eqz v3, :cond_6

    #@20
    .line 1231
    iget-object v3, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    #@22
    iget-object v4, v0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_5

    #@2a
    :cond_4
    move v1, v2

    #@2b
    .line 1230
    :cond_5
    :goto_0
    return v1

    #@2c
    .line 1231
    :cond_6
    iget-object v3, v0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    #@2e
    if-eqz v3, :cond_4

    #@30
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 1238
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 1239
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@8
    iget v2, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    #@a
    add-int v0, v1, v2

    #@c
    .line 1240
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{ResourceName "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " / "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "}"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
