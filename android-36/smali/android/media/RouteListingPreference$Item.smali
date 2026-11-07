.class public final Landroid/media/RouteListingPreference$Item;
.super Ljava/lang/Object;
.source "RouteListingPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RouteListingPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RouteListingPreference$Item$Builder;,
        Landroid/media/RouteListingPreference$Item$SubText;,
        Landroid/media/RouteListingPreference$Item$Flags;,
        Landroid/media/RouteListingPreference$Item$SelectionBehavior;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/RouteListingPreference$Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_ONGOING_SESSION:I = 0x1

.field public static final whitelist FLAG_ONGOING_SESSION_MANAGED:I = 0x2

.field public static final whitelist FLAG_SUGGESTED:I = 0x4

.field public static final whitelist SELECTION_BEHAVIOR_GO_TO_APP:I = 0x2

.field public static final whitelist SELECTION_BEHAVIOR_NONE:I = 0x0

.field public static final whitelist SELECTION_BEHAVIOR_TRANSFER:I = 0x1

.field public static final whitelist SUBTEXT_AD_ROUTING_DISALLOWED:I = 0x4

.field public static final whitelist SUBTEXT_CUSTOM:I = 0x2710

.field public static final whitelist SUBTEXT_DEVICE_LOW_POWER:I = 0x5

.field public static final whitelist SUBTEXT_DOWNLOADED_CONTENT_ROUTING_DISALLOWED:I = 0x3

.field public static final whitelist SUBTEXT_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist SUBTEXT_NONE:I = 0x0

.field public static final whitelist SUBTEXT_SUBSCRIPTION_REQUIRED:I = 0x2

.field public static final whitelist SUBTEXT_TRACK_UNSUPPORTED:I = 0x7

.field public static final whitelist SUBTEXT_UNAUTHORIZED:I = 0x6


# instance fields
.field private final blacklist mCustomSubtextMessage:Ljava/lang/CharSequence;

.field private final blacklist mFlags:I

.field private final blacklist mRouteId:Ljava/lang/String;

.field private final blacklist mSelectionBehavior:I

.field private final blacklist mSubText:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 362
    new-instance v0, Landroid/media/RouteListingPreference$Item$1;

    invoke-direct {v0}, Landroid/media/RouteListingPreference$Item$1;-><init>()V

    sput-object v0, Landroid/media/RouteListingPreference$Item;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/RouteListingPreference$Item$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/media/RouteListingPreference$Item$Builder;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    invoke-static {p1}, Landroid/media/RouteListingPreference$Item$Builder;->-$$Nest$fgetmRouteId(Landroid/media/RouteListingPreference$Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteListingPreference$Item;->mRouteId:Ljava/lang/String;

    .line 384
    invoke-static {p1}, Landroid/media/RouteListingPreference$Item$Builder;->-$$Nest$fgetmSelectionBehavior(Landroid/media/RouteListingPreference$Item$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/RouteListingPreference$Item;->mSelectionBehavior:I

    .line 385
    invoke-static {p1}, Landroid/media/RouteListingPreference$Item$Builder;->-$$Nest$fgetmFlags(Landroid/media/RouteListingPreference$Item$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/RouteListingPreference$Item;->mFlags:I

    .line 386
    invoke-static {p1}, Landroid/media/RouteListingPreference$Item$Builder;->-$$Nest$fgetmSubText(Landroid/media/RouteListingPreference$Item$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/RouteListingPreference$Item;->mSubText:I

    .line 387
    invoke-static {p1}, Landroid/media/RouteListingPreference$Item$Builder;->-$$Nest$fgetmCustomSubtextMessage(Landroid/media/RouteListingPreference$Item$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteListingPreference$Item;->mCustomSubtextMessage:Ljava/lang/CharSequence;

    .line 388
    invoke-direct {p0}, Landroid/media/RouteListingPreference$Item;->validateCustomMessageSubtext()V

    .line 389
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/RouteListingPreference$Item$Builder;Landroid/media/RouteListingPreference-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/RouteListingPreference$Item;-><init>(Landroid/media/RouteListingPreference$Item$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteListingPreference$Item;->mRouteId:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Landroid/media/RouteListingPreference$Item;->mRouteId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RouteListingPreference$Item;->mSelectionBehavior:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RouteListingPreference$Item;->mFlags:I

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RouteListingPreference$Item;->mSubText:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteListingPreference$Item;->mCustomSubtextMessage:Ljava/lang/CharSequence;

    .line 398
    invoke-direct {p0}, Landroid/media/RouteListingPreference$Item;->validateCustomMessageSubtext()V

    .line 399
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/RouteListingPreference-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/RouteListingPreference$Item;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist validateCustomMessageSubtext()V
    .registers 3

    .line 520
    iget v0, p0, Landroid/media/RouteListingPreference$Item;->mSubText:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Landroid/media/RouteListingPreference$Item;->mCustomSubtextMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    const-string v1, "The custom subtext message cannot be null if subtext is SUBTEXT_CUSTOM."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 523
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 497
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 498
    return v0

    .line 500
    :cond_4
    instance-of v1, p1, Landroid/media/RouteListingPreference$Item;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 501
    return v2

    .line 503
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/RouteListingPreference$Item;

    .line 504
    .local v1, "item":Landroid/media/RouteListingPreference$Item;
    iget-object v3, p0, Landroid/media/RouteListingPreference$Item;->mRouteId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/RouteListingPreference$Item;->mRouteId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget v3, p0, Landroid/media/RouteListingPreference$Item;->mSelectionBehavior:I

    iget v4, v1, Landroid/media/RouteListingPreference$Item;->mSelectionBehavior:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/media/RouteListingPreference$Item;->mFlags:I

    iget v4, v1, Landroid/media/RouteListingPreference$Item;->mFlags:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/media/RouteListingPreference$Item;->mSubText:I

    iget v4, v1, Landroid/media/RouteListingPreference$Item;->mSubText:I

    if-ne v3, v4, :cond_34

    iget-object v3, p0, Landroid/media/RouteListingPreference$Item;->mCustomSubtextMessage:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/media/RouteListingPreference$Item;->mCustomSubtextMessage:Ljava/lang/CharSequence;

    .line 508
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v2

    .line 504
    :goto_35
    return v0
.end method

.method public whitelist getCustomSubtextMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 474
    iget-object v0, p0, Landroid/media/RouteListingPreference$Item;->mCustomSubtextMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 431
    iget v0, p0, Landroid/media/RouteListingPreference$Item;->mFlags:I

    return v0
.end method

.method public whitelist getRouteId()Ljava/lang/String;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/media/RouteListingPreference$Item;->mRouteId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSelectionBehavior()I
    .registers 2

    .line 419
    iget v0, p0, Landroid/media/RouteListingPreference$Item;->mSelectionBehavior:I

    return v0
.end method

.method public whitelist getSubText()I
    .registers 2

    .line 455
    iget v0, p0, Landroid/media/RouteListingPreference$Item;->mSubText:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 513
    iget-object v0, p0, Landroid/media/RouteListingPreference$Item;->mRouteId:Ljava/lang/String;

    iget v1, p0, Landroid/media/RouteListingPreference$Item;->mSelectionBehavior:I

    .line 514
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/RouteListingPreference$Item;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/RouteListingPreference$Item;->mSubText:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/media/RouteListingPreference$Item;->mCustomSubtextMessage:Ljava/lang/CharSequence;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 513
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 486
    iget-object v0, p0, Landroid/media/RouteListingPreference$Item;->mRouteId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 487
    iget v0, p0, Landroid/media/RouteListingPreference$Item;->mSelectionBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget v0, p0, Landroid/media/RouteListingPreference$Item;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget v0, p0, Landroid/media/RouteListingPreference$Item;->mSubText:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget-object v0, p0, Landroid/media/RouteListingPreference$Item;->mCustomSubtextMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 491
    return-void
.end method
