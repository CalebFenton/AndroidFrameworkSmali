.class public final Landroid/media/RouteListingPreference;
.super Ljava/lang/Object;
.source "RouteListingPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RouteListingPreference$Builder;,
        Landroid/media/RouteListingPreference$Item;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_TRANSFER_MEDIA:Ljava/lang/String; = "android.media.action.TRANSFER_MEDIA"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/RouteListingPreference;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_ROUTE_ID:Ljava/lang/String; = "android.media.extra.ROUTE_ID"


# instance fields
.field private final blacklist mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/RouteListingPreference$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLinkedItemComponentName:Landroid/content/ComponentName;

.field private final blacklist mUseSystemOrdering:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/media/RouteListingPreference$1;

    invoke-direct {v0}, Landroid/media/RouteListingPreference$1;-><init>()V

    sput-object v0, Landroid/media/RouteListingPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/RouteListingPreference$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/media/RouteListingPreference$Builder;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Landroid/media/RouteListingPreference$Builder;->-$$Nest$fgetmItems(Landroid/media/RouteListingPreference$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteListingPreference;->mItems:Ljava/util/List;

    .line 88
    invoke-static {p1}, Landroid/media/RouteListingPreference$Builder;->-$$Nest$fgetmUseSystemOrdering(Landroid/media/RouteListingPreference$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/RouteListingPreference;->mUseSystemOrdering:Z

    .line 89
    invoke-static {p1}, Landroid/media/RouteListingPreference$Builder;->-$$Nest$fgetmLinkedItemComponentName(Landroid/media/RouteListingPreference$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteListingPreference;->mLinkedItemComponentName:Landroid/content/ComponentName;

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/RouteListingPreference$Builder;Landroid/media/RouteListingPreference-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/RouteListingPreference;-><init>(Landroid/media/RouteListingPreference$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/media/RouteListingPreference$Item;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/media/RouteListingPreference$Item;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/RouteListingPreference$Item;>;"
    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/media/RouteListingPreference;->mItems:Ljava/util/List;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/RouteListingPreference;->mUseSystemOrdering:Z

    .line 97
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/media/RouteListingPreference;->mLinkedItemComponentName:Landroid/content/ComponentName;

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/RouteListingPreference-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/RouteListingPreference;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 156
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 157
    return v0

    .line 159
    :cond_4
    instance-of v1, p1, Landroid/media/RouteListingPreference;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 160
    return v2

    .line 162
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/RouteListingPreference;

    .line 163
    .local v1, "that":Landroid/media/RouteListingPreference;
    iget-object v3, p0, Landroid/media/RouteListingPreference;->mItems:Ljava/util/List;

    iget-object v4, v1, Landroid/media/RouteListingPreference;->mItems:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-boolean v3, p0, Landroid/media/RouteListingPreference;->mUseSystemOrdering:Z

    iget-boolean v4, v1, Landroid/media/RouteListingPreference;->mUseSystemOrdering:Z

    if-ne v3, v4, :cond_28

    iget-object v3, p0, Landroid/media/RouteListingPreference;->mLinkedItemComponentName:Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/media/RouteListingPreference;->mLinkedItemComponentName:Landroid/content/ComponentName;

    .line 165
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    .line 163
    :goto_29
    return v0
.end method

.method public whitelist getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RouteListingPreference$Item;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Landroid/media/RouteListingPreference;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLinkedItemComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/media/RouteListingPreference;->mLinkedItemComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getUseSystemOrdering()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Landroid/media/RouteListingPreference;->mUseSystemOrdering:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 170
    iget-object v0, p0, Landroid/media/RouteListingPreference;->mItems:Ljava/util/List;

    iget-boolean v1, p0, Landroid/media/RouteListingPreference;->mUseSystemOrdering:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RouteListingPreference;->mLinkedItemComponentName:Landroid/content/ComponentName;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    iget-object v0, p0, Landroid/media/RouteListingPreference;->mItems:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 148
    iget-boolean v0, p0, Landroid/media/RouteListingPreference;->mUseSystemOrdering:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 149
    iget-object v0, p0, Landroid/media/RouteListingPreference;->mLinkedItemComponentName:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 150
    return-void
.end method
