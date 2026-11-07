.class public Landroid/app/ResourcesManager$ApkKey;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkKey"
.end annotation


# instance fields
.field public final greylist-max-o overlay:Z

.field public final greylist-max-o path:Ljava/lang/String;

.field public final greylist-max-o sharedLib:Z


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;ZZ)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sharedLib"    # Z
    .param p3, "overlay"    # Z

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    .line 241
    iput-boolean p2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    .line 242
    iput-boolean p3, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    .line 243
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 256
    instance-of v0, p1, Landroid/app/ResourcesManager$ApkKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 257
    return v1

    .line 259
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/app/ResourcesManager$ApkKey;

    .line 260
    .local v0, "other":Landroid/app/ResourcesManager$ApkKey;
    iget-object v2, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    iget-boolean v3, v0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-ne v2, v3, :cond_20

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    iget-boolean v3, v0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-ne v2, v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 247
    const/4 v0, 0x1

    .line 248
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 249
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 250
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 251
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkKey["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v1, :cond_13

    const-string/jumbo v1, "lib"

    goto :goto_15

    :cond_13
    const-string v1, "app"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-eqz v1, :cond_20

    const-string v1, ", overlay"

    goto :goto_22

    :cond_20
    const-string v1, ""

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
