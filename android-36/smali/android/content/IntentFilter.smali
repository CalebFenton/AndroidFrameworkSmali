.class public Landroid/content/IntentFilter;
.super Ljava/lang/Object;
.source "IntentFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IntentFilter$MalformedMimeTypeException;,
        Landroid/content/IntentFilter$AuthorityEntry;,
        Landroid/content/IntentFilter$InstantAppVisibility;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_STR:Ljava/lang/String; = "action"

.field private static final greylist-max-o AGLOB_STR:Ljava/lang/String; = "aglob"

.field private static final greylist-max-o AUTH_STR:Ljava/lang/String; = "auth"

.field private static final greylist-max-o AUTO_VERIFY_STR:Ljava/lang/String; = "autoVerify"

.field public static final blacklist BLOCK_NULL_ACTION_INTENTS:J = 0x117f6228L

.field private static final greylist-max-o CAT_STR:Ljava/lang/String; = "cat"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_BOOLEAN_ARRAY:[Z

.field private static final blacklist EMPTY_DOUBLE_ARRAY:[D

.field private static final blacklist EMPTY_INT_ARRAY:[I

.field private static final blacklist EMPTY_LONG_ARRAY:[J

.field private static final blacklist EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final blacklist EXTRAS_STR:Ljava/lang/String; = "extras"

.field private static final blacklist GROUP_STR:Ljava/lang/String; = "group"

.field private static final greylist-max-o HOST_STR:Ljava/lang/String; = "host"

.field private static final greylist-max-o LITERAL_STR:Ljava/lang/String; = "literal"

.field public static final whitelist MATCH_ADJUSTMENT_MASK:I = 0xffff

.field public static final whitelist MATCH_ADJUSTMENT_NORMAL:I = 0x8000

.field public static final whitelist MATCH_CATEGORY_EMPTY:I = 0x100000

.field public static final whitelist MATCH_CATEGORY_HOST:I = 0x300000

.field public static final whitelist MATCH_CATEGORY_MASK:I = 0xfff0000

.field public static final whitelist MATCH_CATEGORY_PATH:I = 0x500000

.field public static final whitelist MATCH_CATEGORY_PORT:I = 0x400000

.field public static final whitelist MATCH_CATEGORY_SCHEME:I = 0x200000

.field public static final whitelist MATCH_CATEGORY_SCHEME_SPECIFIC_PART:I = 0x580000

.field public static final whitelist MATCH_CATEGORY_TYPE:I = 0x600000

.field private static final greylist-max-o NAME_STR:Ljava/lang/String; = "name"

.field public static final whitelist NO_MATCH_ACTION:I = -0x3

.field public static final whitelist NO_MATCH_CATEGORY:I = -0x4

.field public static final whitelist NO_MATCH_DATA:I = -0x2

.field public static final blacklist NO_MATCH_EXTRAS:I = -0x5

.field public static final whitelist NO_MATCH_TYPE:I = -0x1

.field private static final greylist-max-o PATH_STR:Ljava/lang/String; = "path"

.field private static final greylist-max-o PORT_STR:Ljava/lang/String; = "port"

.field private static final greylist-max-o PREFIX_STR:Ljava/lang/String; = "prefix"

.field public static final greylist-max-o SCHEME_HTTP:Ljava/lang/String; = "http"

.field public static final greylist-max-o SCHEME_HTTPS:Ljava/lang/String; = "https"

.field public static final blacklist SCHEME_PACKAGE:Ljava/lang/String; = "package"

.field private static final greylist-max-o SCHEME_STR:Ljava/lang/String; = "scheme"

.field private static final greylist-max-o SGLOB_STR:Ljava/lang/String; = "sglob"

.field private static final greylist-max-o SSP_STR:Ljava/lang/String; = "ssp"

.field private static final greylist-max-o STATE_NEED_VERIFY:I = 0x10

.field private static final greylist-max-o STATE_NEED_VERIFY_CHECKED:I = 0x100

.field private static final greylist-max-o STATE_VERIFIED:I = 0x1000

.field private static final greylist-max-o STATE_VERIFY_AUTO:I = 0x1

.field private static final blacklist STATIC_TYPE_STR:Ljava/lang/String; = "staticType"

.field private static final blacklist SUFFIX_STR:Ljava/lang/String; = "suffix"

.field public static final whitelist SYSTEM_HIGH_PRIORITY:I = 0x3e8

.field public static final whitelist SYSTEM_LOW_PRIORITY:I = -0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "IntentFilter"

.field private static final greylist-max-o TYPE_STR:Ljava/lang/String; = "type"

.field private static final blacklist URI_RELATIVE_FILTER_GROUP_STR:Ljava/lang/String; = "uriRelativeFilterGroup"

.field public static final greylist-max-o VISIBILITY_EXPLICIT:I = 0x1

.field public static final greylist-max-o VISIBILITY_IMPLICIT:I = 0x2

.field public static final greylist-max-o VISIBILITY_NONE:I = 0x0

.field public static final blacklist WILDCARD:Ljava/lang/String; = "*"

.field public static final blacklist WILDCARD_PATH:Ljava/lang/String; = "/*"


# instance fields
.field private final greylist mActions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataSchemeSpecificParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataSchemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtras:Landroid/os/PersistableBundle;

.field private blacklist mHasDynamicPartialTypes:Z

.field private blacklist mHasStaticPartialTypes:Z

.field private greylist-max-o mInstantAppVisibility:I

.field private blacklist mMimeGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mOrder:I

.field private greylist-max-o mPriority:I

.field private blacklist mStaticDataTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUriRelativeFilterGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVerifyState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$7fG1TJiUF1fBw-hL3L4xfxnN-nI(Landroid/content/IntentFilter;Landroid/content/Intent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->lambda$asPredicate$2(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Uu5fhFIeIoazx3CCe3fFBGpH0zY(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/IntentFilter;->lambda$addDataType$0(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XGPPVIRv7sD8uHVVspJPr0VGbAs(Landroid/content/IntentFilter;Landroid/content/ContentResolver;Landroid/content/Intent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/IntentFilter;->lambda$asPredicateWithTypeResolution$3(Landroid/content/ContentResolver;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$tzLjLZQdJfH9PXkx_77HuuWcCv8(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/IntentFilter;->lambda$addDynamicDataType$1(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 185
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/content/IntentFilter;->EMPTY_INT_ARRAY:[I

    .line 186
    new-array v1, v0, [J

    sput-object v1, Landroid/content/IntentFilter;->EMPTY_LONG_ARRAY:[J

    .line 187
    new-array v1, v0, [D

    sput-object v1, Landroid/content/IntentFilter;->EMPTY_DOUBLE_ARRAY:[D

    .line 188
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Landroid/content/IntentFilter;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 189
    new-array v0, v0, [Z

    sput-object v0, Landroid/content/IntentFilter;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 2937
    new-instance v0, Landroid/content/IntentFilter$1;

    invoke-direct {v0}, Landroid/content/IntentFilter$1;-><init>()V

    sput-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 341
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 342
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 343
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 344
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 345
    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 346
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 347
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 348
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 350
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 351
    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 471
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 472
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    .line 473
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "o"    # Landroid/content/IntentFilter;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 341
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 342
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 343
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 344
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 345
    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 346
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 347
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 348
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 350
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 351
    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 518
    iget v0, p1, Landroid/content/IntentFilter;->mPriority:I

    iput v0, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 519
    iget v0, p1, Landroid/content/IntentFilter;->mOrder:I

    iput v0, p0, Landroid/content/IntentFilter;->mOrder:I

    .line 520
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    .line 521
    iget-object v0, p1, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_3b

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 524
    :cond_3b
    iget-object v0, p1, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_48

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 527
    :cond_48
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_55

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 530
    :cond_55
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_62

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 533
    :cond_62
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_6f

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 536
    :cond_6f
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_7c

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 539
    :cond_7c
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_89

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 542
    :cond_89
    iget-object v0, p1, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_96

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 546
    :cond_96
    iget-object v0, p1, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_a3

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 549
    :cond_a3
    iget-object v0, p1, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_b0

    .line 550
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p1, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 552
    :cond_b0
    iget-boolean v0, p1, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 553
    iget-boolean v0, p1, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 554
    iget v0, p1, Landroid/content/IntentFilter;->mVerifyState:I

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 555
    iget v0, p1, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    iput v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    .line 556
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 3084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 341
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 342
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 343
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 344
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 345
    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 346
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 347
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 348
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 350
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 351
    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 3085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3086
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3087
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    .line 3088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e

    .line 3089
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 3090
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3092
    :cond_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_50

    .line 3093
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 3094
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3096
    :cond_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62

    .line 3097
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 3098
    iget-object v2, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3100
    :cond_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_74

    .line 3101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 3102
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3104
    :cond_74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_86

    .line 3105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 3106
    iget-object v2, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3108
    :cond_86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3109
    .local v2, "N":I
    if-lez v2, :cond_a3

    .line 3110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 3111
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_94
    if-ge v3, v2, :cond_a3

    .line 3112
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    new-instance v5, Landroid/os/PatternMatcher;

    invoke-direct {v5, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3111
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 3115
    .end local v3    # "i":I
    :cond_a3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3116
    if-lez v2, :cond_c0

    .line 3117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 3118
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b1
    if-ge v3, v2, :cond_c0

    .line 3119
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    new-instance v5, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-direct {v5, p1}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3118
    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    .line 3122
    .end local v3    # "i":I
    :cond_c0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3123
    if-lez v2, :cond_dd

    .line 3124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 3125
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_ce
    if-ge v3, v2, :cond_dd

    .line 3126
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    new-instance v5, Landroid/os/PatternMatcher;

    invoke-direct {v5, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3125
    add-int/lit8 v3, v3, 0x1

    goto :goto_ce

    .line 3129
    .end local v3    # "i":I
    :cond_dd
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 3130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_ec

    move v3, v4

    goto :goto_ed

    :cond_ec
    move v3, v1

    :goto_ed
    iput-boolean v3, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 3131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_f7

    move v3, v4

    goto :goto_f8

    :cond_f7
    move v3, v1

    :goto_f8
    iput-boolean v3, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 3132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_101

    move v1, v4

    :cond_101
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setAutoVerify(Z)V

    .line 3133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 3134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/IntentFilter;->mOrder:I

    .line 3135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_121

    .line 3136
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 3138
    :cond_121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3139
    .end local v2    # "N":I
    .local v1, "N":I
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v2

    if-eqz v2, :cond_144

    if-lez v1, :cond_144

    .line 3140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 3141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_135
    if-ge v2, v1, :cond_144

    .line 3142
    iget-object v3, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    new-instance v4, Landroid/content/UriRelativeFilterGroup;

    invoke-direct {v4, p1}, Landroid/content/UriRelativeFilterGroup;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3141
    add-int/lit8 v2, v2, 0x1

    goto :goto_135

    .line 3145
    .end local v2    # "i":I
    :cond_144
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 341
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 342
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 343
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 344
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 345
    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 346
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 347
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 348
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 350
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 351
    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 483
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 484
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    .line 485
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "dataType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 341
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 342
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 343
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 344
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 345
    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 346
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 347
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 348
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 350
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 351
    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 506
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 507
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    .line 508
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method private static greylist-max-o addStringToSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .registers 8
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .line 390
    invoke-static {p0, p1, p2, p3}, Landroid/content/IntentFilter;->findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    move-result v0

    if-ltz v0, :cond_7

    return-object p0

    .line 391
    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p0, :cond_13

    .line 392
    new-array p0, v1, [Ljava/lang/String;

    .line 393
    aput-object p1, p0, v0

    .line 394
    const/4 v0, 0x1

    aput v0, p2, p3

    .line 395
    return-object p0

    .line 397
    :cond_13
    aget v2, p2, p3

    .line 398
    .local v2, "N":I
    array-length v3, p0

    if-ge v2, v3, :cond_1f

    .line 399
    aput-object p1, p0, v2

    .line 400
    add-int/lit8 v0, v2, 0x1

    aput v0, p2, p3

    .line 401
    return-object p0

    .line 404
    :cond_1f
    mul-int/lit8 v3, v2, 0x3

    div-int/2addr v3, v1

    add-int/2addr v3, v1

    new-array v1, v3, [Ljava/lang/String;

    .line 405
    .local v1, "newSet":[Ljava/lang/String;
    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    move-object p0, v1

    .line 407
    aput-object p1, p0, v2

    .line 408
    add-int/lit8 v0, v2, 0x1

    aput v0, p2, p3

    .line 409
    return-object p0
.end method

.method public static whitelist create(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;
    .registers 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "dataType"    # Ljava/lang/String;

    .line 461
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 462
    :catch_6
    move-exception v0

    .line 463
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad MIME type"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .registers 7
    .param p0, "f1"    # Landroid/content/IntentFilter;
    .param p1, "f2"    # Landroid/content/IntentFilter;

    .line 3221
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 3222
    .local v0, "s1":I
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 3223
    .local v1, "s2":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 3224
    return v2

    .line 3226
    :cond_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_1d

    .line 3227
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 3228
    return v2

    .line 3226
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3231
    .end local v3    # "i":I
    :cond_1d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 3232
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    .line 3233
    if-eq v0, v1, :cond_28

    .line 3234
    return v2

    .line 3236
    :cond_28
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_29
    if-ge v3, v0, :cond_39

    .line 3237
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 3238
    return v2

    .line 3236
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 3241
    .end local v3    # "i":I
    :cond_39
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 3242
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    .line 3243
    if-eq v0, v1, :cond_44

    .line 3244
    return v2

    .line 3246
    :cond_44
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_45
    if-ge v3, v0, :cond_55

    .line 3247
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 3248
    return v2

    .line 3246
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 3251
    .end local v3    # "i":I
    :cond_55
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 3252
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    .line 3253
    if-eq v0, v1, :cond_60

    .line 3254
    return v2

    .line 3256
    :cond_60
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_61
    if-ge v3, v0, :cond_71

    .line 3257
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 3258
    return v2

    .line 3256
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 3261
    .end local v3    # "i":I
    :cond_71
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 3262
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 3263
    if-eq v0, v1, :cond_7c

    .line 3264
    return v2

    .line 3266
    :cond_7c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7d
    if-ge v3, v0, :cond_8d

    .line 3267
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 3268
    return v2

    .line 3266
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 3271
    .end local v3    # "i":I
    :cond_8d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 3272
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    .line 3273
    if-eq v0, v1, :cond_98

    .line 3274
    return v2

    .line 3276
    :cond_98
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_99
    if-ge v3, v0, :cond_a9

    .line 3277
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_a6

    .line 3278
    return v2

    .line 3276
    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 3281
    .end local v3    # "i":I
    :cond_a9
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 3282
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v1

    .line 3283
    if-eq v0, v1, :cond_b4

    .line 3284
    return v2

    .line 3286
    :cond_b4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b5
    if-ge v3, v0, :cond_c5

    .line 3287
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_c2

    .line 3288
    return v2

    .line 3286
    :cond_c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_b5

    .line 3291
    .end local v3    # "i":I
    :cond_c5
    const/4 v2, 0x1

    return v2
.end method

.method private final greylist-max-o findMimeType(Ljava/lang/String;)Z
    .registers 11
    .param p1, "type"    # Ljava/lang/String;

    .line 3152
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 3154
    .local v0, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 3155
    return v1

    .line 3158
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 3159
    return v3

    .line 3163
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3164
    .local v2, "typeLength":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_23

    const-string v4, "*/*"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 3165
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    return v1

    .line 3169
    :cond_23
    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 3170
    return v3

    .line 3173
    :cond_32
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 3174
    .local v4, "slashpos":I
    if-lez v4, :cond_72

    .line 3175
    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 3176
    return v3

    .line 3178
    :cond_4b
    add-int/lit8 v5, v4, 0x2

    if-ne v2, v5, :cond_72

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-ne v5, v6, :cond_72

    .line 3181
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3182
    .local v5, "numTypes":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5e
    if-ge v6, v5, :cond_72

    .line 3183
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3184
    .local v7, "v":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v1, v7, v1, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 3185
    return v3

    .line 3182
    .end local v7    # "v":Ljava/lang/String;
    :cond_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_5e

    .line 3191
    .end local v5    # "numTypes":I
    .end local v6    # "i":I
    :cond_72
    return v1
.end method

.method private static greylist-max-o findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I
    .registers 8
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .line 380
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 381
    :cond_4
    aget v1, p2, p3

    .line 382
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_15

    .line 383
    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    return v2

    .line 382
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 385
    .end local v2    # "i":I
    :cond_15
    return v0
.end method

.method private blacklist hasDataPath(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "wildcardSupported"    # Z

    .line 1563
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1564
    return v1

    .line 1566
    :cond_6
    const/4 v0, 0x1

    if-eqz p2, :cond_12

    const-string v2, "/*"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1567
    return v0

    .line 1569
    :cond_12
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1570
    .local v2, "numDataPaths":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_2d

    .line 1571
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 1572
    .local v4, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v4, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1573
    return v0

    .line 1570
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1576
    .end local v3    # "i":I
    :cond_2d
    return v1
.end method

.method private blacklist hasDataSchemeSpecificPart(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "supportWildcards"    # Z

    .line 1369
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1370
    return v1

    .line 1372
    :cond_6
    const/4 v0, 0x1

    if-eqz p2, :cond_1a

    const-string v2, "*"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 1373
    return v0

    .line 1375
    :cond_1a
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1376
    .local v2, "numDataSchemeSpecificParts":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v2, :cond_35

    .line 1377
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 1378
    .local v4, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v4, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1379
    return v0

    .line 1376
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1382
    .end local v3    # "i":I
    :cond_35
    return v1
.end method

.method private blacklist hasPartialTypes()Z
    .registers 2

    .line 3148
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private synthetic blacklist lambda$addDataType$0(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "internalType"    # Ljava/lang/String;
    .param p2, "isPartial"    # Ljava/lang/Boolean;

    .line 924
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 927
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 931
    :cond_16
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 932
    return-void

    .line 935
    :cond_1f
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    if-nez v0, :cond_3e

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v0, 0x1

    :goto_3f
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 938
    return-void
.end method

.method private synthetic blacklist lambda$addDynamicDataType$1(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "internalType"    # Ljava/lang/String;
    .param p2, "isPartial"    # Ljava/lang/Boolean;

    .line 964
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 968
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 969
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    if-nez v0, :cond_29

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 973
    :cond_2c
    return-void
.end method

.method private synthetic blacklist lambda$asPredicate$2(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "i"    # Landroid/content/Intent;

    .line 2349
    const-string v0, "IntentFilter"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v2, 0x1

    :cond_b
    return v2
.end method

.method private synthetic blacklist lambda$asPredicateWithTypeResolution$3(Landroid/content/ContentResolver;Landroid/content/Intent;)Z
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "i"    # Landroid/content/Intent;

    .line 2365
    const-string v0, "IntentFilter"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private blacklist matchAction(Ljava/lang/String;ZLjava/util/Collection;)Z
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "wildcardSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 874
    .local p3, "ignoreActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_3d

    const-string v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 875
    const/4 v1, 0x1

    if-nez p3, :cond_16

    .line 876
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 878
    :cond_16
    iget-object v2, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v2, v3, :cond_23

    .line 879
    return v1

    .line 881
    :cond_23
    iget-object v2, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_2a
    if-ltz v2, :cond_3c

    .line 882
    iget-object v3, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 883
    return v1

    .line 881
    :cond_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    .line 886
    .end local v2    # "i":I
    :cond_3c
    return v0

    .line 888
    :cond_3d
    if-eqz p3, :cond_46

    invoke-interface {p3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 889
    return v0

    .line 891
    :cond_46
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)I
    .registers 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/net/Uri;
    .param p4, "wildcardSupported"    # Z

    .line 1743
    if-eqz p4, :cond_a

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1744
    .local v0, "wildcardWithMimegroups":Z
    :goto_b
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 1745
    .local v1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 1747
    .local v2, "schemes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v3, 0x100000

    .line 1749
    .local v3, "match":I
    const/4 v4, -0x2

    if-nez v0, :cond_22

    if-nez v1, :cond_22

    if-nez v2, :cond_22

    .line 1750
    if-nez p1, :cond_20

    if-nez p3, :cond_20

    .line 1751
    const v4, 0x108000

    goto :goto_21

    :cond_20
    nop

    .line 1750
    :goto_21
    return v4

    .line 1754
    :cond_22
    const-string v5, "*"

    const-string v6, ""

    if-eqz v2, :cond_9b

    .line 1755
    if-eqz p2, :cond_2b

    move-object v6, p2

    :cond_2b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    if-eqz p4, :cond_3a

    .line 1756
    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    goto :goto_3b

    .line 1759
    :cond_3a
    return v4

    .line 1757
    :cond_3b
    :goto_3b
    const/high16 v3, 0x200000

    .line 1762
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 1763
    .local v5, "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    const/high16 v6, 0x580000

    if-eqz v5, :cond_53

    if-eqz p3, :cond_53

    .line 1764
    invoke-virtual {p3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p4}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1765
    move v7, v6

    goto :goto_52

    :cond_51
    move v7, v4

    :goto_52
    move v3, v7

    .line 1767
    :cond_53
    if-eq v3, v6, :cond_97

    .line 1769
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 1770
    .local v6, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v6, :cond_97

    .line 1771
    invoke-virtual {p0, p3, p4}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;Z)I

    move-result v7

    .line 1772
    .local v7, "authMatch":I
    if-ltz v7, :cond_96

    .line 1773
    iget-object v8, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 1774
    .local v8, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    iget-object v9, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 1775
    .local v9, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriRelativeFilterGroup;>;"
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v10

    if-eqz v10, :cond_84

    .line 1776
    if-nez v8, :cond_6f

    if-nez v9, :cond_6f

    .line 1777
    move v3, v7

    goto :goto_94

    .line 1778
    :cond_6f
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, p4}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_81

    .line 1779
    invoke-direct {p0, p3}, Landroid/content/IntentFilter;->matchRelRefGroups(Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_80

    goto :goto_81

    .line 1782
    :cond_80
    return v4

    .line 1780
    :cond_81
    :goto_81
    const/high16 v3, 0x500000

    goto :goto_94

    .line 1785
    :cond_84
    if-nez v8, :cond_88

    .line 1786
    move v3, v7

    goto :goto_94

    .line 1787
    :cond_88
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, p4}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 1788
    const/high16 v3, 0x500000

    .line 1793
    .end local v8    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    .end local v9    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriRelativeFilterGroup;>;"
    :goto_94
    goto :goto_97

    .line 1790
    .restart local v8    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    .restart local v9    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriRelativeFilterGroup;>;"
    :cond_95
    return v4

    .line 1794
    .end local v8    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    .end local v9    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriRelativeFilterGroup;>;"
    :cond_96
    return v4

    .line 1799
    .end local v6    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v7    # "authMatch":I
    :cond_97
    :goto_97
    if-ne v3, v4, :cond_9a

    .line 1800
    return v4

    .line 1802
    .end local v5    # "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_9a
    goto :goto_bc

    .line 1808
    :cond_9b
    if-eqz p2, :cond_bc

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    .line 1809
    const-string v6, "content"

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    .line 1810
    const-string v6, "file"

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    if-eqz p4, :cond_bb

    .line 1811
    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bc

    .line 1812
    :cond_bb
    return v4

    .line 1816
    :cond_bc
    :goto_bc
    if-eqz v0, :cond_c1

    .line 1817
    const/high16 v4, 0x600000

    return v4

    .line 1818
    :cond_c1
    const/4 v4, -0x1

    if-eqz v1, :cond_ce

    .line 1819
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->findMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 1820
    const/high16 v3, 0x600000

    goto :goto_d1

    .line 1822
    :cond_cd
    return v4

    .line 1827
    :cond_ce
    if-eqz p1, :cond_d1

    .line 1828
    return v4

    .line 1832
    :cond_d1
    :goto_d1
    const v4, 0x8000

    add-int/2addr v4, v3

    return v4
.end method

.method private blacklist matchExtras(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 10
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1942
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1943
    return-object v1

    .line 1945
    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1946
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1947
    .local v3, "key":Ljava/lang/String;
    if-nez p1, :cond_1f

    .line 1948
    return-object v3

    .line 1950
    :cond_1f
    iget-object v4, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v4, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1951
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1952
    .local v5, "otherValue":Ljava/lang/Object;
    if-eqz v5, :cond_3d

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_3d

    .line 1953
    invoke-static {v4, v5}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    goto :goto_3d

    .line 1956
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "otherValue":Ljava/lang/Object;
    :cond_3c
    goto :goto_10

    .line 1954
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    .restart local v5    # "otherValue":Ljava/lang/Object;
    :cond_3d
    :goto_3d
    return-object v3

    .line 1957
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "otherValue":Ljava/lang/Object;
    :cond_3e
    return-object v1
.end method

.method private blacklist matchRelRefGroups(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "data"    # Landroid/net/Uri;

    .line 1836
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 1837
    const/4 v0, 0x0

    return v0

    .line 1839
    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroid/content/UriRelativeFilterGroup;->matchGroupsToUri(Ljava/util/List;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private blacklist processMimeType(Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 982
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 983
    .local v0, "slashpos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 984
    .local v1, "typelen":I
    if-lez v0, :cond_2e

    add-int/lit8 v2, v0, 0x2

    if-lt v1, v2, :cond_2e

    .line 988
    move-object v2, p1

    .line 989
    .local v2, "internalType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 990
    .local v3, "isPartialType":Z
    add-int/lit8 v4, v0, 0x2

    if-ne v1, v4, :cond_26

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_26

    .line 991
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 992
    const/4 v3, 0x1

    .line 995
    :cond_26
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 996
    return-void

    .line 985
    .end local v2    # "internalType":Ljava/lang/String;
    .end local v3    # "isPartialType":Z
    :cond_2e
    new-instance v2, Landroid/content/IntentFilter$MalformedMimeTypeException;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter$MalformedMimeTypeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o removeStringFromSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .registers 9
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .line 414
    invoke-static {p0, p1, p2, p3}, Landroid/content/IntentFilter;->findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    move-result v0

    .line 415
    .local v0, "pos":I
    if-gez v0, :cond_7

    return-object p0

    .line 416
    :cond_7
    aget v1, p2, p3

    .line 417
    .local v1, "N":I
    array-length v2, p0

    div-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_23

    .line 418
    add-int/lit8 v2, v0, 0x1

    sub-int v2, v1, v2

    .line 419
    .local v2, "copyLen":I
    if-lez v2, :cond_19

    .line 420
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    :cond_19
    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    aput-object v4, p0, v3

    .line 423
    add-int/lit8 v3, v1, -0x1

    aput v3, p2, p3

    .line 424
    return-object p0

    .line 427
    .end local v2    # "copyLen":I
    :cond_23
    array-length v2, p0

    div-int/lit8 v2, v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 428
    .local v2, "newSet":[Ljava/lang/String;
    if-lez v0, :cond_2e

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    :cond_2e
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_3b

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x1

    sub-int v4, v1, v4

    invoke-static {p0, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    :cond_3b
    return-object v2
.end method

.method private blacklist writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2640
    const/4 v0, 0x0

    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2642
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1f

    .line 2643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2646
    :cond_1f
    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2647
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2648
    return-void
.end method

.method private blacklist writeDataTypesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2617
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 2618
    return-void

    .line 2621
    :cond_5
    const/4 v0, 0x0

    .line 2622
    .local v0, "i":I
    iget-object v1, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string/jumbo v3, "type"

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2623
    .local v2, "staticType":Ljava/lang/String;
    :goto_1b
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 2624
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v4, v3}, Landroid/content/IntentFilter;->writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 2628
    :cond_37
    const-string/jumbo v3, "staticType"

    invoke-direct {p0, p1, v2, v3}, Landroid/content/IntentFilter;->writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    nop

    .end local v2    # "staticType":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 2630
    goto :goto_c

    .line 2632
    :cond_41
    :goto_41
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 2633
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Landroid/content/IntentFilter;->writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 2636
    :cond_57
    return-void
.end method


# virtual methods
.method public final whitelist actionsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 899
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final whitelist addAction(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .line 815
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 816
    return-void
.end method

.method public final whitelist addCategory(Ljava/lang/String;)V
    .registers 4
    .param p1, "category"    # Ljava/lang/String;

    .line 1853
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 1854
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1855
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1857
    :cond_1c
    return-void
.end method

.method public final greylist-max-o addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V
    .registers 3
    .param p1, "ent"    # Landroid/content/IntentFilter$AuthorityEntry;

    .line 1436
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 1438
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    return-void
.end method

.method public final whitelist addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .line 1430
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 1431
    :cond_6
    new-instance v0, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 1432
    return-void
.end method

.method public final greylist-max-o addDataPath(Landroid/os/PatternMatcher;)V
    .registers 3
    .param p1, "path"    # Landroid/os/PatternMatcher;

    .line 1524
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 1525
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    return-void
.end method

.method public final whitelist addDataPath(Ljava/lang/String;I)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1519
    new-instance v0, Landroid/os/PatternMatcher;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 1520
    return-void
.end method

.method public final whitelist addDataScheme(Ljava/lang/String;)V
    .registers 4
    .param p1, "scheme"    # Ljava/lang/String;

    .line 1131
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 1132
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1133
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_1c
    return-void
.end method

.method public final greylist-max-o addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V
    .registers 3
    .param p1, "ssp"    # Landroid/os/PatternMatcher;

    .line 1329
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 1332
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    return-void
.end method

.method public final whitelist addDataSchemeSpecificPart(Ljava/lang/String;I)V
    .registers 4
    .param p1, "ssp"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1324
    new-instance v0, Landroid/os/PatternMatcher;

    invoke-direct {v0, p1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V

    .line 1325
    return-void
.end method

.method public final whitelist addDataType(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 923
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;-><init>(Landroid/content/IntentFilter;)V

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->processMimeType(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    .line 939
    return-void
.end method

.method public final blacklist addDynamicDataType(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 963
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter$$ExternalSyntheticLambda0;-><init>(Landroid/content/IntentFilter;)V

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->processMimeType(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    .line 974
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;D)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 2110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_e

    .line 2112
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2114
    :cond_e
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 2115
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1974
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_e

    .line 1976
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 1978
    :cond_e
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1979
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;J)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 2042
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_e

    .line 2044
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2046
    :cond_e
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 2047
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2179
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2182
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2184
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 2249
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2250
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_e

    .line 2251
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2253
    :cond_e
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2254
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;[D)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .line 2144
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2147
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2149
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 2150
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 2007
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2010
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2012
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2013
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;[J)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 2075
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2078
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2080
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 2081
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 2214
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2217
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2219
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2220
    return-void
.end method

.method public final blacklist addExtra(Ljava/lang/String;[Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 2282
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 2285
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2287
    :cond_11
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 2288
    return-void
.end method

.method public final blacklist addMimeGroup(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1086
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 1089
    :cond_b
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1090
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    :cond_18
    return-void
.end method

.method public final whitelist addUriRelativeFilterGroup(Landroid/content/UriRelativeFilterGroup;)V
    .registers 3
    .param p1, "group"    # Landroid/content/UriRelativeFilterGroup;

    .line 1621
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 1625
    :cond_e
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    return-void
.end method

.method public whitelist asPredicate()Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 2349
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter$$ExternalSyntheticLambda1;-><init>(Landroid/content/IntentFilter;)V

    return-object v0
.end method

.method public whitelist asPredicateWithTypeResolution(Landroid/content/ContentResolver;)Ljava/util/function/Predicate;
    .registers 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 2364
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2365
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/content/IntentFilter$$ExternalSyntheticLambda3;-><init>(Landroid/content/IntentFilter;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public final whitelist authoritiesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation

    .line 1488
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final whitelist categoriesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1890
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist checkDataPathAndSchemeSpecificParts()Z
    .registers 6

    .line 3066
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 3067
    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3068
    .local v0, "numDataPath":I
    :goto_d
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-nez v2, :cond_13

    .line 3069
    move v2, v1

    goto :goto_19

    :cond_13
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3070
    .local v2, "numDataSchemeSpecificParts":I
    :goto_19
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v0, :cond_2e

    .line 3071
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    invoke-virtual {v4}, Landroid/os/PatternMatcher;->check()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 3072
    return v1

    .line 3070
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 3075
    .end local v3    # "i":I
    :cond_2e
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2f
    if-ge v3, v2, :cond_43

    .line 3076
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    invoke-virtual {v4}, Landroid/os/PatternMatcher;->check()Z

    move-result v4

    if-nez v4, :cond_40

    .line 3077
    return v1

    .line 3075
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 3080
    .end local v3    # "i":I
    :cond_43
    const/4 v1, 0x1

    return v1
.end method

.method public final blacklist clearDynamicDataTypes()V
    .registers 3

    .line 1005
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1006
    return-void

    .line 1009
    :cond_5
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 1010
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1011
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    .line 1013
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 1016
    :goto_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 1017
    return-void
.end method

.method public final whitelist clearUriRelativeFilterGroups()V
    .registers 2

    .line 1656
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    .line 1657
    return-void
.end method

.method public final whitelist countActions()I
    .registers 2

    .line 822
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method public final whitelist countCategories()I
    .registers 2

    .line 1863
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countDataAuthorities()I
    .registers 2

    .line 1445
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countDataPaths()I
    .registers 2

    .line 1532
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countDataSchemeSpecificParts()I
    .registers 2

    .line 1339
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countDataSchemes()I
    .registers 2

    .line 1141
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countDataTypes()I
    .registers 2

    .line 1059
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final blacklist countMimeGroups()I
    .registers 2

    .line 1106
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist countStaticDataTypes()I
    .registers 2

    .line 1024
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist countUriRelativeFilterGroups()I
    .registers 2

    .line 1633
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public final blacklist dataTypes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public greylist-max-o debugCheck()Z
    .registers 2

    .line 3041
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist describeContents()I
    .registers 2

    .line 2949
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 9
    .param p1, "du"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2815
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2816
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const-string v2, "\""

    const/4 v3, 0x0

    if-lez v1, :cond_3d

    .line 2817
    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2818
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 2819
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2820
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Action: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2821
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_18

    .line 2825
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3d
    iget-object v1, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v1, :cond_6c

    .line 2826
    iget-object v1, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2827
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2828
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2829
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Category: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_47

    .line 2834
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6c
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v1, :cond_9b

    .line 2835
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2836
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 2837
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2838
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Scheme: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_76

    .line 2843
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9b
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v1, :cond_ca

    .line 2844
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2845
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 2846
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 2847
    .local v4, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2848
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Ssp: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2851
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    goto :goto_a5

    .line 2853
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :cond_ca
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v1, :cond_111

    .line 2854
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2855
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :goto_d4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_111

    .line 2856
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 2857
    .local v4, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2858
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Authority: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2859
    invoke-static {v4}, Landroid/content/IntentFilter$AuthorityEntry;->-$$Nest$fgetmHost(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    invoke-static {v4}, Landroid/content/IntentFilter$AuthorityEntry;->-$$Nest$fgetmPort(Landroid/content/IntentFilter$AuthorityEntry;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2861
    invoke-static {v4}, Landroid/content/IntentFilter$AuthorityEntry;->-$$Nest$fgetmWild(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v5

    if-eqz v5, :cond_109

    const-string v5, " WILD"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    :cond_109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2863
    .end local v4    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    goto :goto_d4

    .line 2865
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :cond_111
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_140

    .line 2866
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2867
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_11b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_140

    .line 2868
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 2869
    .local v4, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2870
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Path: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2873
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    goto :goto_11b

    .line 2875
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :cond_140
    iget-object v1, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-eqz v1, :cond_16d

    .line 2876
    iget-object v1, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2877
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/UriRelativeFilterGroup;>;"
    :goto_14a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 2878
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2879
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "UriRelativeFilterGroup: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2881
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_14a

    .line 2884
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/UriRelativeFilterGroup;>;"
    :cond_16d
    iget-object v1, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_19c

    .line 2885
    iget-object v1, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2886
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_177
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19c

    .line 2887
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2888
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "StaticType: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2890
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_177

    .line 2893
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_19c
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1d2

    .line 2894
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2895
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d2

    .line 2896
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2897
    .local v4, "dataType":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/IntentFilter;->hasExactStaticDataType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b9

    .line 2898
    goto :goto_1a6

    .line 2901
    :cond_1b9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2902
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Type: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2903
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2905
    .end local v4    # "dataType":Ljava/lang/String;
    goto :goto_1a6

    .line 2907
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1d2
    iget-object v1, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v1, :cond_201

    .line 2908
    iget-object v1, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2909
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1dc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_201

    .line 2910
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2911
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MimeGroup: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2912
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2913
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1dc

    .line 2916
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_201
    iget v1, p0, Landroid/content/IntentFilter;->mPriority:I

    if-nez v1, :cond_20f

    iget v1, p0, Landroid/content/IntentFilter;->mOrder:I

    if-nez v1, :cond_20f

    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v1

    if-eqz v1, :cond_245

    .line 2917
    :cond_20f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2918
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    const-string/jumbo v1, "mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2920
    const-string v1, ", mOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/IntentFilter;->mOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2921
    const-string v1, ", mHasStaticPartialTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2922
    const-string v1, ", mHasDynamicPartialTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2925
    :cond_245
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v1

    if-eqz v1, :cond_264

    .line 2926
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2927
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AutoVerify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2928
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2930
    :cond_264
    iget-object v1, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_284

    .line 2931
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2932
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2935
    :cond_284
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2748
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2749
    .local v0, "token":J
    iget-object v2, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_27

    .line 2750
    iget-object v2, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2751
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2752
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide v4, 0x20900000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_12

    .line 2755
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_27
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v2, :cond_46

    .line 2756
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2757
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 2758
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide v4, 0x20900000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_31

    .line 2761
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_46
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v2, :cond_65

    .line 2762
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2763
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 2764
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide v4, 0x20900000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_50

    .line 2767
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_65
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v2, :cond_84

    .line 2768
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2769
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 2770
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    const-wide v4, 0x20b00000004L

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/PatternMatcher;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_6f

    .line 2773
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :cond_84
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v2, :cond_a3

    .line 2774
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2775
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :goto_8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 2776
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter$AuthorityEntry;

    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/IntentFilter$AuthorityEntry;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_8e

    .line 2779
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :cond_a3
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_c2

    .line 2780
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2781
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_ad
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 2782
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    const-wide v4, 0x20b00000006L

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/PatternMatcher;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_ad

    .line 2785
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :cond_c2
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_e1

    .line 2786
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2787
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_cc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 2788
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide v4, 0x20900000007L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_cc

    .line 2791
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e1
    iget-object v2, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v2, :cond_100

    .line 2792
    iget-object v2, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2793
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_eb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_100

    .line 2794
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide v4, 0x2090000000bL

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_eb

    .line 2797
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_100
    iget v2, p0, Landroid/content/IntentFilter;->mPriority:I

    if-nez v2, :cond_10a

    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 2798
    :cond_10a
    const-wide v2, 0x10500000008L

    iget v4, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2799
    const-wide v2, 0x10800000009L

    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2801
    :cond_120
    const-wide v2, 0x1080000000aL

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2802
    iget-object v2, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_13a

    .line 2803
    iget-object v2, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2805
    :cond_13a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v2

    if-eqz v2, :cond_15f

    iget-object v2, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-eqz v2, :cond_15f

    .line 2806
    iget-object v2, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2807
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/UriRelativeFilterGroup;>;"
    :goto_14a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 2808
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriRelativeFilterGroup;

    const-wide v4, 0x20b0000000dL

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/UriRelativeFilterGroup;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_14a

    .line 2811
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/UriRelativeFilterGroup;>;"
    :cond_15f
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2812
    return-void
.end method

.method public final whitelist getAction(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 839
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final greylist-max-o getAutoVerify()Z
    .registers 3

    .line 665
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final blacklist getBooleanArrayExtra(Ljava/lang/String;)[Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2299
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    sget-object v0, Landroid/content/IntentFilter;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public final blacklist getBooleanExtra(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2264
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_f
    return v0
.end method

.method public final whitelist getCategory(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 1870
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;
    .registers 3
    .param p1, "index"    # I

    .line 1452
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    return-object v0
.end method

.method public final whitelist getDataPath(I)Landroid/os/PatternMatcher;
    .registers 3
    .param p1, "index"    # I

    .line 1539
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    return-object v0
.end method

.method public final whitelist getDataScheme(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 1148
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;
    .registers 3
    .param p1, "index"    # I

    .line 1346
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    return-object v0
.end method

.method public final whitelist getDataType(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 1066
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getDoubleArrayExtra(Ljava/lang/String;)[D
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2161
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    sget-object v0, Landroid/content/IntentFilter;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public final blacklist getDoubleExtra(Ljava/lang/String;)D
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    const-wide/16 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_10
    return-wide v0
.end method

.method public final blacklist getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 2336
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    goto :goto_c

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getHosts()[Ljava/lang/String;
    .registers 3

    .line 3213
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getHostsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3214
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public greylist-max-o getHostsList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3199
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3200
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v1, :cond_1f

    .line 3201
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter$AuthorityEntry;

    .line 3203
    .local v2, "entry":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v2}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3204
    .end local v2    # "entry":Landroid/content/IntentFilter$AuthorityEntry;
    goto :goto_b

    .line 3206
    :cond_1f
    return-object v0
.end method

.method public final blacklist getIntArrayExtra(Ljava/lang/String;)[I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2024
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    sget-object v0, Landroid/content/IntentFilter;->EMPTY_INT_ARRAY:[I

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public final blacklist getIntExtra(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1989
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_f
    return v0
.end method

.method public final blacklist getLongArrayExtra(Ljava/lang/String;)[J
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2092
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    sget-object v0, Landroid/content/IntentFilter;->EMPTY_LONG_ARRAY:[J

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public final blacklist getLongExtra(Ljava/lang/String;)J
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2057
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    const-wide/16 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_10
    return-wide v0
.end method

.method public final blacklist getMimeGroup(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 1101
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getOrder()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 623
    iget v0, p0, Landroid/content/IntentFilter;->mOrder:I

    return v0
.end method

.method public final whitelist getPriority()I
    .registers 2

    .line 611
    iget v0, p0, Landroid/content/IntentFilter;->mPriority:I

    return v0
.end method

.method public final blacklist getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2231
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_a

    sget-object v0, Landroid/content/IntentFilter;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public final blacklist getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2196
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public final whitelist getUriRelativeFilterGroup(I)Landroid/content/UriRelativeFilterGroup;
    .registers 3
    .param p1, "index"    # I

    .line 1648
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriRelativeFilterGroup;

    return-object v0
.end method

.method public greylist-max-o getVisibilityToInstantApp()I
    .registers 2

    .line 792
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    return v0
.end method

.method public final greylist-max-o handleAllWebDataURI()Z
    .registers 3

    .line 684
    const-string v0, "android.intent.category.APP_BROWSER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    const/4 v0, 0x1

    .line 684
    :cond_16
    return v0
.end method

.method public final greylist-max-o handlesWebUris(Z)Z
    .registers 8
    .param p1, "onlyWebSchemes"    # Z

    .line 706
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 707
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 709
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_53

    .line 714
    :cond_1e
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 715
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_52

    .line 716
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 717
    .local v3, "scheme":Ljava/lang/String;
    nop

    .line 718
    const-string/jumbo v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_46

    const-string/jumbo v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_46

    :cond_44
    move v4, v1

    goto :goto_47

    :cond_46
    :goto_46
    move v4, v5

    .line 719
    .local v4, "isWebScheme":Z
    :goto_47
    if-eqz p1, :cond_4c

    .line 723
    if-nez v4, :cond_4f

    .line 724
    return v1

    .line 729
    :cond_4c
    if-eqz v4, :cond_4f

    .line 730
    return v5

    .line 715
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "isWebScheme":Z
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 738
    .end local v2    # "i":I
    :cond_52
    return p1

    .line 710
    .end local v0    # "N":I
    :cond_53
    :goto_53
    return v1
.end method

.method public final whitelist hasAction(Ljava/lang/String;)Z
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .line 851
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final whitelist hasCategory(Ljava/lang/String;)Z
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .line 1881
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final greylist-max-r hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .registers 6
    .param p1, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;

    .line 1472
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1473
    return v1

    .line 1475
    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1476
    .local v0, "numDataAuthorities":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_22

    .line 1477
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1478
    const/4 v1, 0x1

    return v1

    .line 1476
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1481
    .end local v2    # "i":I
    :cond_22
    return v1
.end method

.method public final whitelist hasDataAuthority(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "data"    # Landroid/net/Uri;

    .line 1466
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final greylist-max-r hasDataPath(Landroid/os/PatternMatcher;)Z
    .registers 8
    .param p1, "path"    # Landroid/os/PatternMatcher;

    .line 1582
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1583
    return v1

    .line 1585
    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1586
    .local v0, "numDataPaths":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_34

    .line 1587
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1588
    .local v3, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    if-ne v4, v5, :cond_31

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1589
    const/4 v1, 0x1

    return v1

    .line 1586
    .end local v3    # "pe":Landroid/os/PatternMatcher;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1592
    .end local v2    # "i":I
    :cond_34
    return v1
.end method

.method public final whitelist hasDataPath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .line 1554
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasDataScheme(Ljava/lang/String;)Z
    .registers 3
    .param p1, "scheme"    # Ljava/lang/String;

    .line 1161
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final greylist-max-r hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z
    .registers 8
    .param p1, "ssp"    # Landroid/os/PatternMatcher;

    .line 1388
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1389
    return v1

    .line 1391
    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1392
    .local v0, "numDataSchemeSpecificParts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_34

    .line 1393
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1394
    .local v3, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    if-ne v4, v5, :cond_31

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1395
    const/4 v1, 0x1

    return v1

    .line 1392
    .end local v3    # "pe":Landroid/os/PatternMatcher;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1398
    .end local v2    # "i":I
    :cond_34
    return v1
.end method

.method public final whitelist hasDataSchemeSpecificPart(Ljava/lang/String;)Z
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .line 1360
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasDataType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 1036
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->findMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final greylist-max-r hasExactDataType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 1042
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final blacklist hasExactDynamicDataType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 1047
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasExactStaticDataType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final blacklist hasExactStaticDataType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 1052
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final blacklist hasExtra(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2311
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    :goto_f
    return v0
.end method

.method public final blacklist hasMimeGroup(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1096
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o isExplicitlyVisibleToInstantApp()Z
    .registers 3

    .line 800
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public greylist-max-o isImplicitlyVisibleToInstantApp()Z
    .registers 3

    .line 804
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public final greylist-max-p isVerified()Z
    .registers 4

    .line 767
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 768
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2

    .line 770
    :cond_11
    return v2
.end method

.method public greylist-max-o isVisibleToInstantApp()Z
    .registers 2

    .line 796
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I
    .registers 16
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolve"    # Z
    .param p4, "logTag"    # Ljava/lang/String;

    .line 2388
    if-eqz p3, :cond_7

    invoke-virtual {p2, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    :goto_b
    move-object v3, v0

    .line 2389
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 2390
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 2392
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 2389
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v7, p4

    .end local p4    # "logTag":Ljava/lang/String;
    .local v7, "logTag":Ljava/lang/String;
    invoke-virtual/range {v1 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;Landroid/os/Bundle;)I

    move-result p4

    return p4
.end method

.method public final whitelist match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I
    .registers 16
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/Uri;
    .param p6, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 2425
    .local p5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "type":Ljava/lang/String;
    .end local p3    # "scheme":Ljava/lang/String;
    .end local p4    # "data":Landroid/net/Uri;
    .end local p5    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p6    # "logTag":Ljava/lang/String;
    .local v1, "action":Ljava/lang/String;
    .local v2, "type":Ljava/lang/String;
    .local v3, "scheme":Ljava/lang/String;
    .local v4, "data":Landroid/net/Uri;
    .local v5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v6, "logTag":Ljava/lang/String;
    invoke-virtual/range {v0 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public final blacklist match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I
    .registers 19
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/Uri;
    .param p6, "logTag"    # Ljava/lang/String;
    .param p7, "supportWildcards"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2442
    .local p5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p8, "ignoreActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;Landroid/os/Bundle;)I

    move-result v9

    return v9
.end method

.method public final blacklist match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;Landroid/os/Bundle;)I
    .registers 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/Uri;
    .param p6, "logTag"    # Ljava/lang/String;
    .param p7, "supportWildcards"    # Z
    .param p9, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .line 2455
    .local p5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p8, "ignoreActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_a

    invoke-direct {p0, p1, p7, p8}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;ZLjava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2458
    const/4 v0, -0x3

    return v0

    .line 2461
    :cond_a
    invoke-direct {p0, p2, p3, p4, p7}, Landroid/content/IntentFilter;->matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v0

    .line 2462
    .local v0, "dataMatch":I
    if-gez v0, :cond_11

    .line 2473
    return v0

    .line 2476
    :cond_11
    invoke-virtual {p0, p5}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 2477
    .local v1, "categoryMismatch":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 2481
    const/4 v2, -0x4

    return v2

    .line 2484
    :cond_19
    invoke-direct {p0, p9}, Landroid/content/IntentFilter;->matchExtras(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 2485
    .local v2, "extraMismatch":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 2489
    const/4 v3, -0x5

    return v3

    .line 2500
    :cond_21
    return v0
.end method

.method public final whitelist matchAction(Ljava/lang/String;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .line 863
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;ZLjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final whitelist matchCategories(Ljava/util/Set;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1905
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1906
    return-object v0

    .line 1909
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1911
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-nez v2, :cond_19

    .line 1912
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_18
    return-object v0

    .line 1915
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1916
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1917
    .local v2, "category":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 1918
    return-object v2

    .line 1920
    .end local v2    # "category":Ljava/lang/String;
    :cond_2e
    goto :goto_19

    .line 1922
    :cond_2f
    return-object v0
.end method

.method public final whitelist matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/net/Uri;

    .line 1734
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/IntentFilter;->matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v0

    return v0
.end method

.method public final whitelist matchDataAuthority(Landroid/net/Uri;)I
    .registers 3
    .param p1, "data"    # Landroid/net/Uri;

    .line 1670
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;Z)I

    move-result v0

    return v0
.end method

.method public final blacklist matchDataAuthority(Landroid/net/Uri;Z)I
    .registers 8
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "wildcardSupported"    # Z

    .line 1681
    const/4 v0, -0x2

    if-eqz p1, :cond_24

    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    goto :goto_24

    .line 1684
    :cond_8
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1685
    .local v1, "numDataAuthorities":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_23

    .line 1686
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1687
    .local v3, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v3, p1, p2}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;Z)I

    move-result v4

    .line 1688
    .local v4, "match":I
    if-ltz v4, :cond_20

    .line 1689
    return v4

    .line 1685
    .end local v3    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v4    # "match":I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1692
    .end local v2    # "i":I
    :cond_23
    return v0

    .line 1682
    .end local v1    # "numDataAuthorities":I
    :cond_24
    :goto_24
    return v0
.end method

.method public final blacklist mimeGroupsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1111
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final greylist-max-o needsVerification()Z
    .registers 3

    .line 755
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final whitelist pathsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2652
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "autoVerify"

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2653
    .local v4, "autoVerify":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_14

    move v0, v5

    goto :goto_18

    :cond_14
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_18
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->setAutoVerify(Z)V

    .line 2655
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2657
    .local v6, "outerDepth":I
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_1aa

    const/4 v0, 0x3

    if-ne v7, v0, :cond_30

    .line 2659
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_1aa

    .line 2660
    :cond_30
    if-eq v7, v0, :cond_1f

    const/4 v9, 0x4

    if-ne v7, v9, :cond_36

    .line 2662
    goto :goto_1f

    .line 2665
    :cond_36
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2666
    .local v10, "tagName":Ljava/lang/String;
    const-string v11, "action"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string/jumbo v12, "name"

    if-eqz v11, :cond_50

    .line 2667
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2668
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_4e

    .line 2669
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2671
    .end local v0    # "name":Ljava/lang/String;
    :cond_4e
    goto/16 :goto_1a5

    :cond_50
    const-string v11, "cat"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_63

    .line 2672
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2673
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_61

    .line 2674
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2676
    .end local v0    # "name":Ljava/lang/String;
    :cond_61
    goto/16 :goto_1a5

    :cond_63
    const-string/jumbo v11, "staticType"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_79

    .line 2677
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2678
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_77

    .line 2680
    :try_start_72
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_75
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_72 .. :try_end_75} :catch_76

    .line 2682
    goto :goto_77

    .line 2681
    :catch_76
    move-exception v0

    .line 2684
    .end local v8    # "name":Ljava/lang/String;
    :cond_77
    :goto_77
    goto/16 :goto_1a5

    :cond_79
    const-string/jumbo v11, "type"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 2685
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2686
    .restart local v8    # "name":Ljava/lang/String;
    if-eqz v8, :cond_8d

    .line 2688
    :try_start_88
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDynamicDataType(Ljava/lang/String;)V
    :try_end_8b
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_88 .. :try_end_8b} :catch_8c

    .line 2690
    goto :goto_8d

    .line 2689
    :catch_8c
    move-exception v0

    .line 2692
    .end local v8    # "name":Ljava/lang/String;
    :cond_8d
    :goto_8d
    goto/16 :goto_1a5

    :cond_8f
    const-string/jumbo v11, "group"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a3

    .line 2693
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2694
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_a1

    .line 2695
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addMimeGroup(Ljava/lang/String;)V

    .line 2697
    .end local v0    # "name":Ljava/lang/String;
    :cond_a1
    goto/16 :goto_1a5

    :cond_a3
    const-string/jumbo v11, "scheme"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b7

    .line 2698
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2699
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_b5

    .line 2700
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2702
    .end local v0    # "name":Ljava/lang/String;
    :cond_b5
    goto/16 :goto_1a5

    :cond_b7
    const-string/jumbo v11, "ssp"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string/jumbo v12, "suffix"

    const/4 v13, 0x2

    const-string v14, "aglob"

    const-string/jumbo v15, "sglob"

    const-string/jumbo v9, "prefix"

    const-string/jumbo v0, "literal"

    if-eqz v11, :cond_108

    .line 2703
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2704
    .local v0, "ssp":Ljava/lang/String;
    if-eqz v0, :cond_d9

    .line 2705
    invoke-virtual {v1, v0, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_106

    .line 2706
    :cond_d9
    invoke-interface {v2, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    if-eqz v9, :cond_e4

    .line 2707
    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_106

    .line 2708
    :cond_e4
    invoke-interface {v2, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_ef

    .line 2709
    invoke-virtual {v1, v0, v13}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_106

    .line 2710
    :cond_ef
    invoke-interface {v2, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_fb

    .line 2711
    const/4 v8, 0x3

    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_106

    .line 2712
    :cond_fb
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_106

    .line 2713
    const/4 v8, 0x4

    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 2715
    .end local v0    # "ssp":Ljava/lang/String;
    :cond_106
    :goto_106
    goto/16 :goto_1a5

    :cond_108
    const-string v11, "auth"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_125

    .line 2716
    const-string/jumbo v0, "host"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2717
    .local v0, "host":Ljava/lang/String;
    const-string/jumbo v8, "port"

    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2718
    .local v8, "port":Ljava/lang/String;
    if-eqz v0, :cond_123

    .line 2719
    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    .end local v0    # "host":Ljava/lang/String;
    .end local v8    # "port":Ljava/lang/String;
    :cond_123
    goto/16 :goto_1a5

    :cond_125
    const-string/jumbo v11, "path"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_166

    .line 2722
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2723
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_138

    .line 2724
    invoke-virtual {v1, v0, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_165

    .line 2725
    :cond_138
    invoke-interface {v2, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    if-eqz v9, :cond_143

    .line 2726
    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_165

    .line 2727
    :cond_143
    invoke-interface {v2, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_14e

    .line 2728
    invoke-virtual {v1, v0, v13}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_165

    .line 2729
    :cond_14e
    invoke-interface {v2, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_15a

    .line 2730
    const/4 v8, 0x3

    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_165

    .line 2731
    :cond_15a
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_165

    .line 2732
    const/4 v8, 0x4

    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 2734
    .end local v0    # "path":Ljava/lang/String;
    :cond_165
    :goto_165
    goto :goto_1a5

    :cond_166
    const-string v0, "extras"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_175

    .line 2735
    invoke-static {v2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, v1, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    goto :goto_1a5

    .line 2736
    :cond_175
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 2737
    const-string/jumbo v0, "uriRelativeFilterGroup"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 2738
    new-instance v0, Landroid/content/UriRelativeFilterGroup;

    invoke-direct {v0, v2}, Landroid/content/UriRelativeFilterGroup;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addUriRelativeFilterGroup(Landroid/content/UriRelativeFilterGroup;)V

    goto :goto_1a5

    .line 2740
    :cond_18d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown tag parsing IntentFilter: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "IntentFilter"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    :goto_1a5
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2743
    .end local v10    # "tagName":Ljava/lang/String;
    goto/16 :goto_1f

    .line 2744
    :cond_1aa
    return-void
.end method

.method public final blacklist safeCountActions()I
    .registers 2

    .line 832
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public final whitelist schemeSpecificPartsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .line 1405
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final whitelist schemesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1168
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final greylist-max-r setAutoVerify(Z)V
    .registers 3
    .param p1, "autoVerify"    # Z

    .line 651
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 652
    if-eqz p1, :cond_e

    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 653
    :cond_e
    return-void
.end method

.method public final blacklist setExtras(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 2325
    iput-object p1, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    .line 2326
    return-void
.end method

.method public final whitelist setOrder(I)V
    .registers 2
    .param p1, "order"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 617
    iput p1, p0, Landroid/content/IntentFilter;->mOrder:I

    .line 618
    return-void
.end method

.method public final whitelist setPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .line 600
    iput p1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 601
    return-void
.end method

.method public greylist-max-o setVerified(Z)V
    .registers 3
    .param p1, "verified"    # Z

    .line 781
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 782
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 783
    if-eqz p1, :cond_14

    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 784
    :cond_14
    return-void
.end method

.method public greylist-max-o setVisibilityToInstantApp(I)V
    .registers 2
    .param p1, "visibility"    # I

    .line 788
    iput p1, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    .line 789
    return-void
.end method

.method public blacklist toLongString()Ljava/lang/String;
    .registers 3

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "IntentFilter {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v1, " pri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget v1, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-lez v1, :cond_28

    .line 566
    const-string v1, " act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_28
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    if-lez v1, :cond_3c

    .line 570
    const-string v1, " cat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v1, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_3c
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    if-lez v1, :cond_50

    .line 574
    const-string v1, " sch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_50
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countUriRelativeFilterGroups()I

    move-result v1

    if-lez v1, :cond_6a

    .line 578
    const-string v1, " grp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v1, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_6a
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist typesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1073
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2953
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2954
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 2955
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2956
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_25

    .line 2958
    :cond_22
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2960
    :goto_25
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    .line 2961
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2962
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_35

    .line 2964
    :cond_32
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2966
    :goto_35
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_42

    .line 2967
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2968
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_45

    .line 2970
    :cond_42
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2972
    :goto_45
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_52

    .line 2973
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2974
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_55

    .line 2976
    :cond_52
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2978
    :goto_55
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_62

    .line 2979
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2980
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_65

    .line 2982
    :cond_62
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2984
    :goto_65
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_84

    .line 2985
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2986
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2987
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_73
    if-ge v3, v0, :cond_83

    .line 2988
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    invoke-virtual {v4, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2987
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 2990
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_83
    goto :goto_87

    .line 2991
    :cond_84
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2993
    :goto_87
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_a6

    .line 2994
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2995
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2996
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_95
    if-ge v3, v0, :cond_a5

    .line 2997
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter$AuthorityEntry;->writeToParcel(Landroid/os/Parcel;)V

    .line 2996
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 2999
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_a5
    goto :goto_a9

    .line 3000
    :cond_a6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3002
    :goto_a9
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_c8

    .line 3003
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3004
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3005
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b7
    if-ge v3, v0, :cond_c7

    .line 3006
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    invoke-virtual {v4, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3005
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 3008
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_c7
    goto :goto_cb

    .line 3009
    :cond_c8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3011
    :goto_cb
    iget v0, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3012
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3013
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3014
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3016
    iget v0, p0, Landroid/content/IntentFilter;->mOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3017
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_f8

    .line 3018
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3019
    iget-object v0, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_fb

    .line 3021
    :cond_f8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3023
    :goto_fb
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v0

    if-eqz v0, :cond_120

    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_120

    .line 3024
    iget-object v0, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3025
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3026
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10f
    if-ge v1, v0, :cond_11f

    .line 3027
    iget-object v2, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriRelativeFilterGroup;

    invoke-virtual {v2, p1, p2}, Landroid/content/UriRelativeFilterGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3026
    add-int/lit8 v1, v1, 0x1

    goto :goto_10f

    .line 3029
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11f
    goto :goto_123

    .line 3030
    :cond_120
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3032
    :goto_123
    return-void
.end method

.method public whitelist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 14
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2508
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 2509
    const-string v0, "autoVerify"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2512
    :cond_11
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 2513
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    const-string/jumbo v3, "name"

    if-ge v2, v0, :cond_31

    .line 2514
    const-string v4, "action"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2515
    iget-object v5, p0, Landroid/content/IntentFilter;->mActions:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2516
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2513
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2518
    .end local v2    # "i":I
    :cond_31
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 2519
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_36
    if-ge v2, v0, :cond_4e

    .line 2520
    const-string v4, "cat"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2521
    iget-object v5, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2522
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2519
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 2524
    .end local v2    # "i":I
    :cond_4e
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->writeDataTypesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2525
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v0

    .line 2526
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_56
    if-ge v2, v0, :cond_6f

    .line 2527
    const-string/jumbo v4, "group"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2528
    iget-object v5, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2529
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2526
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 2531
    .end local v2    # "i":I
    :cond_6f
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 2532
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_74
    if-ge v2, v0, :cond_8d

    .line 2533
    const-string/jumbo v4, "scheme"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2534
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2535
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2532
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 2537
    .end local v2    # "i":I
    :cond_8d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 2538
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_92
    const-string/jumbo v3, "suffix"

    const-string v4, "aglob"

    const-string/jumbo v5, "sglob"

    const-string/jumbo v6, "prefix"

    const-string/jumbo v7, "literal"

    if-ge v2, v0, :cond_e6

    .line 2539
    const-string/jumbo v8, "ssp"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2540
    iget-object v9, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PatternMatcher;

    .line 2541
    .local v9, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_1b8

    goto :goto_e0

    .line 2555
    :pswitch_b8
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_e0

    .line 2552
    :pswitch_c0
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2553
    goto :goto_e0

    .line 2549
    :pswitch_c8
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2550
    goto :goto_e0

    .line 2546
    :pswitch_d0
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2547
    goto :goto_e0

    .line 2543
    :pswitch_d8
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2544
    nop

    .line 2558
    :goto_e0
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2538
    .end local v9    # "pe":Landroid/os/PatternMatcher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    .line 2560
    .end local v2    # "i":I
    :cond_e6
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 2561
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_eb
    if-ge v2, v0, :cond_11e

    .line 2562
    const-string v8, "auth"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2563
    iget-object v9, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/IntentFilter$AuthorityEntry;

    .line 2564
    .local v9, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    const-string/jumbo v10, "host"

    invoke-virtual {v9}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v1, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2565
    invoke-virtual {v9}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v10

    if-ltz v10, :cond_118

    .line 2566
    invoke-virtual {v9}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "port"

    invoke-interface {p1, v1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2568
    :cond_118
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2561
    .end local v9    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_eb

    .line 2570
    .end local v2    # "i":I
    :cond_11e
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 2571
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_123
    if-ge v2, v0, :cond_169

    .line 2572
    const-string/jumbo v8, "path"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2573
    iget-object v9, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PatternMatcher;

    .line 2574
    .local v9, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_1c6

    goto :goto_163

    .line 2588
    :pswitch_13b
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_163

    .line 2585
    :pswitch_143
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2586
    goto :goto_163

    .line 2582
    :pswitch_14b
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2583
    goto :goto_163

    .line 2579
    :pswitch_153
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2580
    goto :goto_163

    .line 2576
    :pswitch_15b
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2577
    nop

    .line 2591
    :goto_163
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2571
    .end local v9    # "pe":Landroid/os/PatternMatcher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_123

    .line 2593
    .end local v2    # "i":I
    :cond_169
    iget-object v2, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_19c

    .line 2594
    const-string v2, "extras"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2596
    :try_start_172
    iget-object v3, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_177
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_172 .. :try_end_177} :catch_17c

    .line 2599
    nop

    .line 2600
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19c

    .line 2597
    :catch_17c
    move-exception v1

    .line 2598
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write extras: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/IntentFilter;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2602
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_19c
    :goto_19c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 2603
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countUriRelativeFilterGroups()I

    move-result v0

    .line 2604
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a7
    if-ge v1, v0, :cond_1b7

    .line 2605
    iget-object v2, p0, Landroid/content/IntentFilter;->mUriRelativeFilterGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriRelativeFilterGroup;

    invoke-virtual {v2, p1}, Landroid/content/UriRelativeFilterGroup;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2604
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a7

    .line 2608
    .end local v1    # "i":I
    :cond_1b7
    return-void

    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_d0
        :pswitch_c8
        :pswitch_c0
        :pswitch_b8
    .end packed-switch

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_15b
        :pswitch_153
        :pswitch_14b
        :pswitch_143
        :pswitch_13b
    .end packed-switch
.end method
