.class public final Landroid/media/RouteListingPreference$Builder;
.super Ljava/lang/Object;
.source "RouteListingPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RouteListingPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/RouteListingPreference$Item;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLinkedItemComponentName:Landroid/content/ComponentName;

.field private blacklist mUseSystemOrdering:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmItems(Landroid/media/RouteListingPreference$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/RouteListingPreference$Builder;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkedItemComponentName(Landroid/media/RouteListingPreference$Builder;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Landroid/media/RouteListingPreference$Builder;->mLinkedItemComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseSystemOrdering(Landroid/media/RouteListingPreference$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/RouteListingPreference$Builder;->mUseSystemOrdering:Z

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteListingPreference$Builder;->mItems:Ljava/util/List;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/RouteListingPreference$Builder;->mUseSystemOrdering:Z

    .line 184
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/RouteListingPreference;
    .registers 3

    .line 227
    new-instance v0, Landroid/media/RouteListingPreference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/RouteListingPreference;-><init>(Landroid/media/RouteListingPreference$Builder;Landroid/media/RouteListingPreference-IA;)V

    return-object v0
.end method

.method public whitelist setItems(Ljava/util/List;)Landroid/media/RouteListingPreference$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/RouteListingPreference$Item;",
            ">;)",
            "Landroid/media/RouteListingPreference$Builder;"
        }
    .end annotation

    .line 193
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/RouteListingPreference$Item;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteListingPreference$Builder;->mItems:Ljava/util/List;

    .line 194
    return-object p0
.end method

.method public whitelist setLinkedItemComponentName(Landroid/content/ComponentName;)Landroid/media/RouteListingPreference$Builder;
    .registers 2
    .param p1, "linkedItemComponentName"    # Landroid/content/ComponentName;

    .line 217
    iput-object p1, p0, Landroid/media/RouteListingPreference$Builder;->mLinkedItemComponentName:Landroid/content/ComponentName;

    .line 218
    return-object p0
.end method

.method public whitelist setUseSystemOrdering(Z)Landroid/media/RouteListingPreference$Builder;
    .registers 2
    .param p1, "useSystemOrdering"    # Z

    .line 206
    iput-boolean p1, p0, Landroid/media/RouteListingPreference$Builder;->mUseSystemOrdering:Z

    .line 207
    return-object p0
.end method
