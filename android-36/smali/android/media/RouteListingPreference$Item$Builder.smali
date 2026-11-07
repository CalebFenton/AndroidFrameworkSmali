.class public final Landroid/media/RouteListingPreference$Item$Builder;
.super Ljava/lang/Object;
.source "RouteListingPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RouteListingPreference$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCustomSubtextMessage:Ljava/lang/CharSequence;

.field private blacklist mFlags:I

.field private final blacklist mRouteId:Ljava/lang/String;

.field private blacklist mSelectionBehavior:I

.field private blacklist mSubText:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCustomSubtextMessage(Landroid/media/RouteListingPreference$Item$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/media/RouteListingPreference$Item$Builder;->mCustomSubtextMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/media/RouteListingPreference$Item$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/RouteListingPreference$Item$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouteId(Landroid/media/RouteListingPreference$Item$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/RouteListingPreference$Item$Builder;->mRouteId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionBehavior(Landroid/media/RouteListingPreference$Item$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/RouteListingPreference$Item$Builder;->mSelectionBehavior:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubText(Landroid/media/RouteListingPreference$Item$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/RouteListingPreference$Item$Builder;->mSubText:I

    return p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 543
    iput-object p1, p0, Landroid/media/RouteListingPreference$Item$Builder;->mRouteId:Ljava/lang/String;

    .line 544
    iput v1, p0, Landroid/media/RouteListingPreference$Item$Builder;->mSelectionBehavior:I

    .line 545
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/RouteListingPreference$Item$Builder;->mSubText:I

    .line 546
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/RouteListingPreference$Item;
    .registers 3

    .line 595
    new-instance v0, Landroid/media/RouteListingPreference$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/RouteListingPreference$Item;-><init>(Landroid/media/RouteListingPreference$Item$Builder;Landroid/media/RouteListingPreference-IA;)V

    return-object v0
.end method

.method public whitelist setCustomSubtextMessage(Ljava/lang/CharSequence;)Landroid/media/RouteListingPreference$Item$Builder;
    .registers 2
    .param p1, "customSubtextMessage"    # Ljava/lang/CharSequence;

    .line 588
    iput-object p1, p0, Landroid/media/RouteListingPreference$Item$Builder;->mCustomSubtextMessage:Ljava/lang/CharSequence;

    .line 589
    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/media/RouteListingPreference$Item$Builder;
    .registers 2
    .param p1, "flags"    # I

    .line 566
    iput p1, p0, Landroid/media/RouteListingPreference$Item$Builder;->mFlags:I

    .line 567
    return-object p0
.end method

.method public whitelist setSelectionBehavior(I)Landroid/media/RouteListingPreference$Item$Builder;
    .registers 2
    .param p1, "selectionBehavior"    # I

    .line 555
    iput p1, p0, Landroid/media/RouteListingPreference$Item$Builder;->mSelectionBehavior:I

    .line 556
    return-object p0
.end method

.method public whitelist setSubText(I)Landroid/media/RouteListingPreference$Item$Builder;
    .registers 2
    .param p1, "subText"    # I

    .line 577
    iput p1, p0, Landroid/media/RouteListingPreference$Item$Builder;->mSubText:I

    .line 578
    return-object p0
.end method
