.class public final Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;
.super Ljava/lang/Object;
.source "CloudMediaProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProviderContract$Capabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlbumsAsCategoryEnabled:Z

.field private blacklist mMediaCategoriesEnabled:Z

.field private blacklist mSearchEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlbumsAsCategoryEnabled(Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->mAlbumsAsCategoryEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaCategoriesEnabled(Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->mMediaCategoriesEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSearchEnabled(Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->mSearchEnabled:Z

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->mSearchEnabled:Z

    .line 224
    iput-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->mMediaCategoriesEnabled:Z

    .line 225
    iput-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->mAlbumsAsCategoryEnabled:Z

    .line 228
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/provider/CloudMediaProviderContract$Capabilities;
    .registers 2

    .line 297
    new-instance v0, Landroid/provider/CloudMediaProviderContract$Capabilities;

    invoke-direct {v0, p0}, Landroid/provider/CloudMediaProviderContract$Capabilities;-><init>(Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;)V

    return-object v0
.end method

.method public blacklist setAlbumsAsCategoryEnabled(Z)Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 287
    iput-boolean p1, p0, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->mAlbumsAsCategoryEnabled:Z

    .line 288
    return-object p0
.end method

.method public whitelist setMediaCategoriesEnabled(Z)Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 259
    iput-boolean p1, p0, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->mMediaCategoriesEnabled:Z

    .line 260
    return-object p0
.end method

.method public whitelist setSearchEnabled(Z)Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 243
    iput-boolean p1, p0, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->mSearchEnabled:Z

    .line 244
    return-object p0
.end method
