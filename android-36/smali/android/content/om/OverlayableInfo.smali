.class public final Landroid/content/om/OverlayableInfo;
.super Ljava/lang/Object;
.source "OverlayableInfo.java"


# instance fields
.field public final blacklist actor:Ljava/lang/String;

.field public final blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actor"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/content/om/OverlayableInfo;->name:Ljava/lang/String;

    .line 76
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 78
    iput-object p2, p0, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 91
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 93
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/om/OverlayableInfo;

    .line 95
    .local v2, "that":Landroid/content/om/OverlayableInfo;
    iget-object v3, p0, Landroid/content/om/OverlayableInfo;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayableInfo;->name:Ljava/lang/String;

    .line 96
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    .line 97
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 95
    :goto_2b
    return v0

    .line 91
    .end local v2    # "that":Landroid/content/om/OverlayableInfo;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 106
    const/4 v0, 0x1

    .line 107
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/om/OverlayableInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 108
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 109
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method
