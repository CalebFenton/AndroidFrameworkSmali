.class public final Landroid/app/slice/Slice;
.super Ljava/lang/Object;
.source "Slice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/slice/Slice$Builder;,
        Landroid/app/slice/Slice$SliceSubtype;,
        Landroid/app/slice/Slice$SliceHint;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_RANGE_VALUE:Ljava/lang/String; = "android.app.slice.extra.RANGE_VALUE"

.field public static final whitelist EXTRA_TOGGLE_STATE:Ljava/lang/String; = "android.app.slice.extra.TOGGLE_STATE"

.field public static final whitelist HINT_ACTIONS:Ljava/lang/String; = "actions"

.field public static final greylist-max-o HINT_CALLER_NEEDED:Ljava/lang/String; = "caller_needed"

.field public static final whitelist HINT_ERROR:Ljava/lang/String; = "error"

.field public static final whitelist HINT_HORIZONTAL:Ljava/lang/String; = "horizontal"

.field public static final whitelist HINT_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final whitelist HINT_LARGE:Ljava/lang/String; = "large"

.field public static final whitelist HINT_LAST_UPDATED:Ljava/lang/String; = "last_updated"

.field public static final whitelist HINT_LIST:Ljava/lang/String; = "list"

.field public static final whitelist HINT_LIST_ITEM:Ljava/lang/String; = "list_item"

.field public static final whitelist HINT_NO_TINT:Ljava/lang/String; = "no_tint"

.field public static final whitelist HINT_PARTIAL:Ljava/lang/String; = "partial"

.field public static final whitelist HINT_PERMISSION_REQUEST:Ljava/lang/String; = "permission_request"

.field public static final whitelist HINT_SEE_MORE:Ljava/lang/String; = "see_more"

.field public static final whitelist HINT_SELECTED:Ljava/lang/String; = "selected"

.field public static final whitelist HINT_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final whitelist HINT_SUMMARY:Ljava/lang/String; = "summary"

.field public static final whitelist HINT_TITLE:Ljava/lang/String; = "title"

.field public static final greylist-max-o HINT_TOGGLE:Ljava/lang/String; = "toggle"

.field public static final whitelist HINT_TTL:Ljava/lang/String; = "ttl"

.field public static final whitelist SUBTYPE_COLOR:Ljava/lang/String; = "color"

.field public static final whitelist SUBTYPE_CONTENT_DESCRIPTION:Ljava/lang/String; = "content_description"

.field public static final whitelist SUBTYPE_LAYOUT_DIRECTION:Ljava/lang/String; = "layout_direction"

.field public static final whitelist SUBTYPE_MAX:Ljava/lang/String; = "max"

.field public static final whitelist SUBTYPE_MESSAGE:Ljava/lang/String; = "message"

.field public static final whitelist SUBTYPE_MILLIS:Ljava/lang/String; = "millis"

.field public static final whitelist SUBTYPE_PRIORITY:Ljava/lang/String; = "priority"

.field public static final whitelist SUBTYPE_RANGE:Ljava/lang/String; = "range"

.field public static final whitelist SUBTYPE_SOURCE:Ljava/lang/String; = "source"

.field public static final whitelist SUBTYPE_TOGGLE:Ljava/lang/String; = "toggle"

.field public static final whitelist SUBTYPE_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final greylist-max-o mHints:[Ljava/lang/String;

.field private final greylist-max-o mItems:[Landroid/app/slice/SliceItem;

.field private greylist-max-o mSpec:Landroid/app/slice/SliceSpec;

.field private greylist-max-o mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmSpec(Landroid/app/slice/Slice;Landroid/app/slice/SliceSpec;)V
    .registers 2

    iput-object p1, p0, Landroid/app/slice/Slice;->mSpec:Landroid/app/slice/SliceSpec;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 506
    new-instance v0, Landroid/app/slice/Slice$1;

    invoke-direct {v0}, Landroid/app/slice/Slice$1;-><init>()V

    sput-object v0, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/Slice;->mHints:[Ljava/lang/String;

    .line 276
    sget-object v0, Landroid/app/slice/SliceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/slice/SliceItem;

    iput-object v0, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    .line 277
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/slice/Slice;->mUri:Landroid/net/Uri;

    .line 278
    sget-object v0, Landroid/app/slice/SliceSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceSpec;

    iput-object v0, p0, Landroid/app/slice/Slice;->mSpec:Landroid/app/slice/SliceSpec;

    .line 279
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V
    .registers 6
    .param p2, "hints"    # [Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "spec"    # Landroid/app/slice/SliceSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/slice/SliceItem;",
            ">;[",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/app/slice/SliceSpec;",
            ")V"
        }
    .end annotation

    .line 267
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/slice/SliceItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Landroid/app/slice/Slice;->mHints:[Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/slice/SliceItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/slice/SliceItem;

    iput-object v0, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    .line 270
    iput-object p3, p0, Landroid/app/slice/Slice;->mUri:Landroid/net/Uri;

    .line 271
    iput-object p4, p0, Landroid/app/slice/Slice;->mSpec:Landroid/app/slice/SliceSpec;

    .line 272
    return-void
.end method

.method private greylist-max-o toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "indent"    # Ljava/lang/String;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    array-length v2, v2

    if-ge v1, v2, :cond_81

    .line 529
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "slice"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 531
    const-string/jumbo v2, "slice:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    .line 533
    :cond_48
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_70

    .line 534
    const-string/jumbo v2, "text: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    .line 538
    :cond_70
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 542
    .end local v1    # "i":I
    :cond_81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroid/app/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSpec()Landroid/app/slice/SliceSpec;
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/app/slice/Slice;->mSpec:Landroid/app/slice/SliceSpec;

    return-object v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/app/slice/Slice;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public greylist-max-o hasHint(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hint"    # Ljava/lang/String;

    .line 326
    iget-object v0, p0, Landroid/app/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isCallerNeeded()Z
    .registers 2

    .line 334
    const-string v0, "caller_needed"

    invoke-virtual {p0, v0}, Landroid/app/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 523
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/app/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 311
    iget-object v0, p0, Landroid/app/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 313
    iget-object v0, p0, Landroid/app/slice/Slice;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 314
    iget-object v0, p0, Landroid/app/slice/Slice;->mSpec:Landroid/app/slice/SliceSpec;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 315
    return-void
.end method
