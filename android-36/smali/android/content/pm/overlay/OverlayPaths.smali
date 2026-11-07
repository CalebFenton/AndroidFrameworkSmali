.class public Landroid/content/pm/overlay/OverlayPaths;
.super Ljava/lang/Object;
.source "OverlayPaths.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/overlay/OverlayPaths$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mOverlayPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResourceDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/overlay/OverlayPaths;->mOverlayPaths:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResourceDirs(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/overlay/OverlayPaths;->mResourceDirs:Ljava/util/List;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/overlay/OverlayPaths;->mResourceDirs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/overlay/OverlayPaths;->mOverlayPaths:Ljava/util/List;

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/overlay/OverlayPaths-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/overlay/OverlayPaths;-><init>()V

    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 165
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 166
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 168
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/pm/overlay/OverlayPaths;

    .line 170
    .local v2, "that":Landroid/content/pm/overlay/OverlayPaths;
    iget-object v3, p0, Landroid/content/pm/overlay/OverlayPaths;->mResourceDirs:Ljava/util/List;

    iget-object v4, v2, Landroid/content/pm/overlay/OverlayPaths;->mResourceDirs:Ljava/util/List;

    .line 171
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/content/pm/overlay/OverlayPaths;->mOverlayPaths:Ljava/util/List;

    iget-object v4, v2, Landroid/content/pm/overlay/OverlayPaths;->mOverlayPaths:Ljava/util/List;

    .line 172
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 170
    :goto_2b
    return v0

    .line 166
    .end local v2    # "that":Landroid/content/pm/overlay/OverlayPaths;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist getOverlayPaths()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths;->mOverlayPaths:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getResourceDirs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths;->mResourceDirs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 181
    const/4 v0, 0x1

    .line 182
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/overlay/OverlayPaths;->mResourceDirs:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 183
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/overlay/OverlayPaths;->mOverlayPaths:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 184
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths;->mResourceDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths;->mOverlayPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverlayPaths { resourceDirs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/overlay/OverlayPaths;->mResourceDirs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overlayPaths = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/overlay/OverlayPaths;->mOverlayPaths:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
