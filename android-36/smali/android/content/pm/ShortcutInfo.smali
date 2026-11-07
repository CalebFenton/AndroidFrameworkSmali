.class public final Landroid/content/pm/ShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ShortcutInfo$Builder;,
        Landroid/content/pm/ShortcutInfo$Surface;,
        Landroid/content/pm/ShortcutInfo$DisabledReason;,
        Landroid/content/pm/ShortcutInfo$CloneFlags;,
        Landroid/content/pm/ShortcutInfo$ShortcutFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final blacklist CLONE_REMOVE_FOR_APP_PREDICTION:I = 0x9

.field public static final greylist-max-o CLONE_REMOVE_FOR_CREATOR:I = 0x9

.field public static final greylist-max-o CLONE_REMOVE_FOR_LAUNCHER:I = 0x1b

.field public static final greylist-max-o CLONE_REMOVE_FOR_LAUNCHER_APPROVAL:I = 0x1a

.field private static final greylist-max-o CLONE_REMOVE_ICON:I = 0x1

.field private static final greylist-max-o CLONE_REMOVE_INTENT:I = 0x2

.field public static final greylist-max-o CLONE_REMOVE_NON_KEY_INFO:I = 0x4

.field public static final blacklist CLONE_REMOVE_PERSON:I = 0x10

.field public static final greylist-max-o CLONE_REMOVE_RES_NAMES:I = 0x8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISABLED_REASON_APP_CHANGED:I = 0x2

.field public static final whitelist DISABLED_REASON_BACKUP_NOT_SUPPORTED:I = 0x65

.field public static final whitelist DISABLED_REASON_BY_APP:I = 0x1

.field public static final whitelist DISABLED_REASON_NOT_DISABLED:I = 0x0

.field public static final whitelist DISABLED_REASON_OTHER_RESTORE_ISSUE:I = 0x67

.field private static final greylist-max-o DISABLED_REASON_RESTORE_ISSUE_START:I = 0x64

.field public static final whitelist DISABLED_REASON_SIGNATURE_MISMATCH:I = 0x66

.field public static final whitelist DISABLED_REASON_UNKNOWN:I = 0x3

.field public static final whitelist DISABLED_REASON_VERSION_LOWER:I = 0x64

.field public static final greylist-max-o FLAG_ADAPTIVE_BITMAP:I = 0x200

.field public static final blacklist FLAG_CACHED_ALL:I = 0x60004000

.field public static final blacklist FLAG_CACHED_BUBBLES:I = 0x40000000

.field public static final blacklist FLAG_CACHED_NOTIFICATIONS:I = 0x4000

.field public static final blacklist FLAG_CACHED_PEOPLE_TILE:I = 0x20000000

.field public static final greylist-max-o FLAG_DISABLED:I = 0x40

.field public static final greylist-max-o FLAG_DYNAMIC:I = 0x1

.field public static final greylist-max-o FLAG_HAS_ICON_FILE:I = 0x8

.field public static final greylist-max-o FLAG_HAS_ICON_RES:I = 0x4

.field public static final blacklist FLAG_HAS_ICON_URI:I = 0x8000

.field public static final greylist-max-o FLAG_ICON_FILE_PENDING_SAVE:I = 0x800

.field public static final greylist-max-o FLAG_IMMUTABLE:I = 0x100

.field public static final greylist-max-o FLAG_KEY_FIELDS_ONLY:I = 0x10

.field public static final blacklist FLAG_LONG_LIVED:I = 0x2000

.field public static final greylist-max-o FLAG_MANIFEST:I = 0x20

.field public static final greylist-max-o FLAG_PINNED:I = 0x2

.field public static final greylist-max-o FLAG_RETURNED_BY_SERVICE:I = 0x400

.field public static final greylist-max-o FLAG_SHADOW:I = 0x1000

.field public static final greylist-max-o FLAG_STRINGS_RESOLVED:I = 0x80

.field private static final greylist-max-o IMPLICIT_RANK_MASK:I = 0x7fffffff

.field public static final blacklist MAX_ID_LENGTH:I = 0x3e8

.field public static final greylist-max-o RANK_CHANGED_BIT:I = -0x80000000

.field public static final greylist-max-o RANK_NOT_SET:I = 0x7fffffff

.field private static final greylist-max-o RES_TYPE_STRING:Ljava/lang/String; = "string"

.field public static final whitelist SHORTCUT_CATEGORY_CONVERSATION:Ljava/lang/String; = "android.shortcut.conversation"

.field public static final whitelist SURFACE_LAUNCHER:I = 0x1

.field static final greylist-max-o TAG:Ljava/lang/String; = "Shortcut"

.field public static final greylist-max-o VERSION_CODE_UNKNOWN:I = -0x1


# instance fields
.field private greylist-max-o mActivity:Landroid/content/ComponentName;

.field private greylist-max-o mBitmapPath:Ljava/lang/String;

.field private blacklist mCapabilityBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDisabledMessage:Ljava/lang/CharSequence;

.field private greylist-max-o mDisabledMessageResId:I

.field private greylist-max-o mDisabledMessageResName:Ljava/lang/String;

.field private greylist-max-o mDisabledReason:I

.field private blacklist mExcludedSurfaces:I

.field private greylist-max-o mExtras:Landroid/os/PersistableBundle;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconResId:I

.field private greylist-max-o mIconResName:Ljava/lang/String;

.field private blacklist mIconUri:Ljava/lang/String;

.field private final greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o mImplicitRank:I

.field private greylist-max-o mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

.field private greylist-max-o mIntents:[Landroid/content/Intent;

.field private greylist-max-o mLastChangedTimestamp:J

.field private blacklist mLocusId:Landroid/content/LocusId;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mPersons:[Landroid/app/Person;

.field private greylist-max-o mRank:I

.field private blacklist mStartingThemeResName:Ljava/lang/String;

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextResId:I

.field private greylist-max-o mTextResName:Ljava/lang/String;

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleResId:I

.field private greylist-max-o mTitleResName:Ljava/lang/String;

.field private final greylist-max-o mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;
    .registers 1

    invoke-static {p0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smclonePersons([Landroid/app/Person;)[Landroid/app/Person;
    .registers 1

    invoke-static {p0}, Landroid/content/pm/ShortcutInfo;->clonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2468
    new-instance v0, Landroid/content/pm/ShortcutInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ShortcutInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V
    .registers 47
    .param p1, "userId"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "titleResId"    # I
    .param p8, "titleResName"    # Ljava/lang/String;
    .param p9, "text"    # Ljava/lang/CharSequence;
    .param p10, "textResId"    # I
    .param p11, "textResName"    # Ljava/lang/String;
    .param p12, "disabledMessage"    # Ljava/lang/CharSequence;
    .param p13, "disabledMessageResId"    # I
    .param p14, "disabledMessageResName"    # Ljava/lang/String;
    .param p16, "intentsWithExtras"    # [Landroid/content/Intent;
    .param p17, "rank"    # I
    .param p18, "extras"    # Landroid/os/PersistableBundle;
    .param p19, "lastChangedTimestamp"    # J
    .param p21, "flags"    # I
    .param p22, "iconResId"    # I
    .param p23, "iconResName"    # Ljava/lang/String;
    .param p24, "bitmapPath"    # Ljava/lang/String;
    .param p25, "iconUri"    # Ljava/lang/String;
    .param p26, "disabledReason"    # I
    .param p27, "persons"    # [Landroid/app/Person;
    .param p28, "locusId"    # Landroid/content/LocusId;
    .param p29, "startingThemeResName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/PersistableBundle;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Landroid/app/Person;",
            "Landroid/content/LocusId;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 2729
    .local p15, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p30, "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2730
    move/from16 v1, p1

    iput v1, v0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    .line 2731
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    .line 2732
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 2733
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 2734
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2735
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 2736
    move/from16 v7, p7

    iput v7, v0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 2737
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 2738
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 2739
    move/from16 v10, p10

    iput v10, v0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 2740
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 2741
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 2742
    move/from16 v13, p13

    iput v13, v0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 2743
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 2744
    invoke-static/range {p15 .. p15}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 2745
    invoke-static/range {p16 .. p16}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 2746
    invoke-direct {v0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    .line 2747
    move/from16 v15, p17

    iput v15, v0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 2748
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    .line 2749
    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    .line 2750
    move/from16 v1, p21

    iput v1, v0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 2751
    move/from16 v2, p22

    iput v2, v0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 2752
    move-object/from16 v1, p23

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 2753
    move-object/from16 v1, p24

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    .line 2754
    move-object/from16 v1, p25

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    .line 2755
    move/from16 v1, p26

    iput v1, v0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    .line 2756
    move-object/from16 v1, p27

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    .line 2757
    move-object/from16 v1, p28

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    .line 2758
    move-object/from16 v1, p29

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    .line 2759
    invoke-static/range {p30 .. p30}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    .line 2760
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/pm/ShortcutInfo$Builder;)V
    .registers 4
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo$Builder;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmContext(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    .line 485
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmId(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shortcut ID must be provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->getSafeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    .line 489
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmContext(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 490
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmActivity(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 491
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmIcon(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 492
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmTitle(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 493
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmTitleResId(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 494
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmText(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 495
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmTextResId(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 496
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmDisabledMessage(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 497
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmDisabledMessageResId(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 498
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmCategories(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 499
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmIntents(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 500
    invoke-direct {p0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    .line 501
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmPersons(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/app/Person;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    .line 502
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmIsLongLived(Landroid/content/pm/ShortcutInfo$Builder;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 503
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->setLongLived()V

    .line 505
    :cond_83
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmExcludedSurfaces(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    .line 506
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmRank(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 507
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmExtras(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    .line 508
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmLocusId(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/LocusId;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    .line 509
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmCapabilityBindings(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Map;

    move-result-object v0

    .line 510
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    .line 511
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmStartingThemeResId(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    if-eqz v0, :cond_bc

    .line 512
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmContext(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmStartingThemeResId(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_bd

    :cond_bc
    const/4 v0, 0x0

    :goto_bd
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    .line 513
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->updateTimestamp()V

    .line 514
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo$Builder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/pm/ShortcutInfo;I)V
    .registers 5
    .param p1, "source"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "cloneFlags"    # I

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mUserId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    .line 621
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    .line 622
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 623
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 624
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mFlags:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 625
    iget-wide v0, p1, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    iput-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    .line 626
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    .line 627
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    .line 628
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    .line 631
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 633
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_9c

    .line 635
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3f

    .line 636
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 637
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    .line 638
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    .line 641
    :cond_3f
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 642
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 643
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 644
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 645
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 646
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 647
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 648
    and-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_6b

    .line 649
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    .line 651
    :cond_6b
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_7f

    .line 652
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 653
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 654
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 656
    :cond_7f
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mRank:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 657
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    .line 659
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_a2

    .line 660
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 661
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 662
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 663
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    goto :goto_a2

    .line 667
    :cond_9c
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 669
    :cond_a2
    :goto_a2
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    .line 671
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    .line 672
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2354
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2356
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    .line 2357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Shortcut ID must be provided"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getSafeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    .line 2359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 2360
    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 2361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 2362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 2363
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    .line 2364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    .line 2366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_52

    .line 2367
    return-void

    .line 2370
    :cond_52
    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2371
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 2372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 2373
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 2374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 2375
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 2376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 2377
    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 2378
    const-class v1, Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 2379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 2380
    const-class v1, Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    .line 2381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    .line 2383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 2384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 2385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 2386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 2388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2389
    .local v1, "N":I
    const/4 v2, 0x0

    if-nez v1, :cond_cc

    .line 2390
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    goto :goto_e6

    .line 2392
    :cond_cc
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 2393
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d4
    if-ge v3, v1, :cond_e6

    .line 2394
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2393
    add-int/lit8 v3, v3, 0x1

    goto :goto_d4

    .line 2398
    .end local v3    # "i":I
    :cond_e6
    :goto_e6
    const-class v3, Landroid/app/Person;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/app/Person;

    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    .line 2399
    const-class v3, Landroid/content/LocusId;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/LocusId;

    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    .line 2400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    .line 2401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    .line 2402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    .line 2404
    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/util/HashMap;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v2

    .line 2406
    .local v2, "rawCapabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map;>;"
    if-eqz v2, :cond_136

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_136

    .line 2407
    new-instance v3, Landroid/util/ArrayMap;

    .line 2408
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2409
    .local v3, "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/pm/ShortcutInfo$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Landroid/content/pm/ShortcutInfo$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2410
    invoke-static {v3}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    .line 2412
    .end local v3    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_136
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ShortcutInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # Ljava/lang/String;

    .line 2568
    if-eqz p2, :cond_b

    .line 2569
    const-string v0, "\n  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2570
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 2572
    :cond_b
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    :goto_10
    return-void
.end method

.method private blacklist addReadableFlags(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 2513
    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_10

    .line 2517
    const-string v0, "Sdw"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    :cond_10
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2520
    const-string v0, "Dis"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    :cond_1b
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2523
    const-string v0, "Im"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    :cond_26
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2526
    const-string v0, "Man"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2528
    :cond_31
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2529
    const-string v0, "Dyn"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    :cond_3c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2532
    const-string v0, "Pin"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    :cond_47
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2535
    const-string v0, "Ic-f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    :cond_52
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2538
    const-string v0, "Pens"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2540
    :cond_5d
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2541
    const-string v0, "Ic-r"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    :cond_68
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2544
    const-string v0, "Ic-u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2546
    :cond_73
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 2547
    const-string v0, "Ic-a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2549
    :cond_7e
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 2550
    const-string v0, "Key"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    :cond_89
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasStringResourcesResolved()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 2553
    const-string v0, "Str"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    :cond_94
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isReturnedByServer()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 2556
    const-string v0, "Rets"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2558
    :cond_9f
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2559
    const-string v0, "Liv"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    :cond_aa
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 2562
    const-string v0, "Hid-L"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    :cond_b6
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    return-void
.end method

.method private static blacklist cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 2290
    .local p0, "orig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-nez p0, :cond_4

    .line 2291
    const/4 v0, 0x0

    return-object v0

    .line 2293
    :cond_4
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2294
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2295
    .local v2, "capability":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2297
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v3, :cond_27

    .line 2298
    const/4 v4, 0x0

    .local v4, "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_52

    .line 2300
    .end local v4    # "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_27
    new-instance v4, Landroid/util/ArrayMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2301
    .restart local v4    # "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2302
    .local v6, "paramName":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2303
    .local v7, "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    .end local v6    # "paramName":Ljava/lang/String;
    .end local v7    # "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_38

    .line 2306
    :cond_52
    :goto_52
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2307
    .end local v2    # "capability":Ljava/lang/String;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_11

    .line 2308
    :cond_5a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 539
    .local p0, "source":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_4

    .line 540
    const/4 v0, 0x0

    return-object v0

    .line 542
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 543
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 544
    .local v2, "s":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 545
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v2    # "s":Ljava/lang/CharSequence;
    :cond_2e
    goto :goto_11

    .line 548
    :cond_2f
    return-object v0
.end method

.method private static greylist-max-o cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;
    .registers 5
    .param p0, "intents"    # [Landroid/content/Intent;

    .line 552
    if-nez p0, :cond_4

    .line 553
    const/4 v0, 0x0

    return-object v0

    .line 555
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroid/content/Intent;

    .line 556
    .local v0, "ret":[Landroid/content/Intent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 557
    aget-object v2, p0, v1

    if-eqz v2, :cond_18

    .line 558
    new-instance v2, Landroid/content/Intent;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v2, v0, v1

    .line 556
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 561
    .end local v1    # "i":I
    :cond_1b
    return-object v0
.end method

.method private static greylist-max-o clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;
    .registers 5
    .param p0, "bundle"    # [Landroid/os/PersistableBundle;

    .line 565
    if-nez p0, :cond_4

    .line 566
    const/4 v0, 0x0

    return-object v0

    .line 568
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroid/os/PersistableBundle;

    .line 569
    .local v0, "ret":[Landroid/os/PersistableBundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 570
    aget-object v2, p0, v1

    if-eqz v2, :cond_18

    .line 571
    new-instance v2, Landroid/os/PersistableBundle;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    aput-object v2, v0, v1

    .line 569
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 574
    .end local v1    # "i":I
    :cond_1b
    return-object v0
.end method

.method private static blacklist clonePersons([Landroid/app/Person;)[Landroid/app/Person;
    .registers 5
    .param p0, "persons"    # [Landroid/app/Person;

    .line 578
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 579
    return-object v0

    .line 581
    :cond_4
    array-length v1, p0

    new-array v1, v1, [Landroid/app/Person;

    .line 582
    .local v1, "ret":[Landroid/app/Person;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_22

    .line 583
    aget-object v3, p0, v2

    if-eqz v3, :cond_1f

    .line 585
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v3

    aput-object v3, v1, v2

    .line 582
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 588
    .end local v2    # "i":I
    :cond_22
    return-object v1
.end method

.method public static blacklist createFromGenericDocument(ILandroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;
    .registers 3
    .param p0, "userId"    # I
    .param p1, "document"    # Landroid/app/appsearch/GenericDocument;

    .line 693
    new-instance v0, Landroid/content/pm/AppSearchShortcutInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/AppSearchShortcutInfo;-><init>(Landroid/app/appsearch/GenericDocument;)V

    invoke-virtual {v0, p0}, Landroid/content/pm/AppSearchShortcutInfo;->toShortcutInfo(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromGenericDocument(Landroid/content/Context;Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "document"    # Landroid/app/appsearch/GenericDocument;

    .line 683
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {v0, p1}, Landroid/content/pm/ShortcutInfo;->createFromGenericDocument(ILandroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o fixUpIntentExtras()V
    .registers 7

    .line 521
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 522
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 523
    return-void

    .line 525
    :cond_8
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    new-array v0, v0, [Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v2, v2

    if-ge v0, v2, :cond_36

    .line 527
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    aget-object v2, v2, v0

    .line 528
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 529
    .local v3, "extras":Landroid/os/Bundle;
    if-nez v3, :cond_24

    .line 530
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aput-object v1, v4, v0

    goto :goto_33

    .line 532
    :cond_24
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5, v3}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    aput-object v5, v4, v0

    .line 533
    move-object v4, v1

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 526
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "extras":Landroid/os/Bundle;
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 536
    .end local v0    # "i":I
    :cond_36
    return-void
.end method

.method public static greylist-max-o getDisabledReasonDebugString(I)Ljava/lang/String;
    .registers 3
    .param p0, "disabledReason"    # I

    .line 312
    sparse-switch p0, :sswitch_data_32

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Disabled: unknown reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :sswitch_1d
    const-string v0, "[Disabled: unknown restore issue]"

    return-object v0

    .line 324
    :sswitch_20
    const-string v0, "[Disabled: signature mismatch]"

    return-object v0

    .line 322
    :sswitch_23
    const-string v0, "[Disabled: backup not supported]"

    return-object v0

    .line 320
    :sswitch_26
    const-string v0, "[Disabled: lower version]"

    return-object v0

    .line 318
    :sswitch_29
    const-string v0, "[Disabled: app changed]"

    return-object v0

    .line 316
    :sswitch_2c
    const-string v0, "[Disabled: by app]"

    return-object v0

    .line 314
    :sswitch_2f
    const-string v0, "[Not disabled]"

    return-object v0

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_2f
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_29
        0x64 -> :sswitch_26
        0x65 -> :sswitch_23
        0x66 -> :sswitch_20
        0x67 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static greylist-max-o getDisabledReasonForRestoreIssue(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "disabledReason"    # I

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 344
    .local v0, "res":Landroid/content/res/Resources;
    sparse-switch p1, :sswitch_data_32

    .line 361
    const/4 v1, 0x0

    return-object v1

    .line 355
    :sswitch_9
    const v1, 0x10409c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 352
    :sswitch_11
    const v1, 0x10409c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 349
    :sswitch_19
    const v1, 0x10409c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 346
    :sswitch_21
    const v1, 0x10409c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 358
    :sswitch_29
    const v1, 0x10409bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_32
    .sparse-switch
        0x3 -> :sswitch_29
        0x64 -> :sswitch_21
        0x65 -> :sswitch_19
        0x66 -> :sswitch_11
        0x67 -> :sswitch_9
    .end sparse-switch
.end method

.method public static greylist-max-o getInvalidIconException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 1049
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported icon type: only the bitmap and resource types are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getResourceEntryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fullResourceName"    # Ljava/lang/String;

    .line 823
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 824
    .local v0, "p1":I
    if-gez v0, :cond_a

    .line 825
    const/4 v1, 0x0

    return-object v1

    .line 827
    :cond_a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getResourcePackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fullResourceName"    # Ljava/lang/String;

    .line 777
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 778
    .local v0, "p1":I
    if-gez v0, :cond_a

    .line 779
    const/4 v1, 0x0

    return-object v1

    .line 781
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "defValue"    # Ljava/lang/CharSequence;

    .line 704
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 705
    :catch_5
    move-exception v0

    .line 706
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource for ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Shortcut"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-object p3
.end method

.method public static greylist-max-o getResourceTypeAndEntryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fullResourceName"    # Ljava/lang/String;

    .line 809
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 810
    .local v0, "p1":I
    if-gez v0, :cond_a

    .line 811
    const/4 v1, 0x0

    return-object v1

    .line 813
    :cond_a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getResourceTypeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "fullResourceName"    # Ljava/lang/String;

    .line 791
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 792
    .local v0, "p1":I
    const/4 v1, 0x0

    if-gez v0, :cond_a

    .line 793
    return-object v1

    .line 795
    :cond_a
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x2f

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 796
    .local v2, "p2":I
    if-gez v2, :cond_15

    .line 797
    return-object v1

    .line 799
    :cond_15
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getSafeId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .line 593
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_e

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 596
    :cond_e
    return-object p0
.end method

.method public static greylist-max-o isDisabledForRestoreIssue(I)Z
    .registers 2
    .param p0, "disabledReason"    # I

    .line 366
    const/16 v0, 0x64

    if-lt p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static greylist-max-o lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "resourceType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 845
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 846
    return v0

    .line 851
    :cond_4
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 856
    :catch_9
    move-exception v1

    goto :goto_11

    .line 852
    :catch_b
    move-exception v1

    .line 855
    :try_start_c
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_10} :catch_9

    return v0

    .line 857
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID for name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Shortcut"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return v0
.end method

.method public static greylist-max-o lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "withType"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 749
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 750
    return-object v0

    .line 753
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "fullName":Ljava/lang/String;
    const-string v2, "android"

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourcePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 758
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 760
    :cond_19
    if-eqz p2, :cond_20

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourceTypeAndEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 761
    :cond_20
    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourceEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_24} :catch_25

    .line 760
    :goto_24
    return-object v0

    .line 762
    .end local v1    # "fullName":Ljava/lang/String;
    :catch_25
    move-exception v1

    .line 763
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource name for ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Resource IDs may change when the application is upgraded, and the system may not be able to find the correct resource."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Shortcut"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    return-object v0
.end method

.method public static greylist-max-o setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 2244
    if-nez p1, :cond_a

    .line 2245
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_12

    .line 2247
    :cond_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2249
    :goto_12
    return-object p0
.end method

.method private greylist-max-o toStringInner(ZZLjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "secure"    # Z
    .param p2, "includeInternalData"    # Z
    .param p3, "indent"    # Ljava/lang/String;

    .line 2577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2579
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_a

    .line 2580
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    :cond_a
    const-string v1, "ShortcutInfo {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    const-string v1, "***"

    if-eqz p1, :cond_1b

    move-object v2, v1

    goto :goto_1d

    :cond_1b
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    :goto_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2588
    const-string v2, ", flags=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2589
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2590
    invoke-direct {p0, v0}, Landroid/content/pm/ShortcutInfo;->addReadableFlags(Ljava/lang/StringBuilder;)V

    .line 2591
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2593
    const-string/jumbo v2, "packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2594
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2598
    const-string v2, "activity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2601
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2603
    const-string/jumbo v2, "shortLabel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    if-eqz p1, :cond_59

    move-object v2, v1

    goto :goto_5b

    :cond_59
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    :goto_5b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2605
    const-string v2, ", resId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2606
    iget v3, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2607
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2608
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2609
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2613
    const-string/jumbo v5, "longLabel="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    if-eqz p1, :cond_84

    move-object v5, v1

    goto :goto_86

    :cond_84
    iget-object v5, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    :goto_86
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2615
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    iget v5, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2617
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2618
    iget-object v5, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2619
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2621
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2623
    const-string v5, "disabledMessage="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2624
    if-eqz p1, :cond_a7

    goto :goto_a9

    :cond_a7
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    :goto_a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2625
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2627
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2633
    const-string v1, "disabledReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getDisabledReasonDebugString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2636
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    if-eqz v1, :cond_e9

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e9

    .line 2637
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2638
    const-string v1, "SplashScreenThemeResName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    :cond_e9
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2644
    const-string v1, "categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2645
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2647
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2649
    const-string/jumbo v1, "persons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2652
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2654
    const-string/jumbo v1, "icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2655
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2657
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2659
    const-string/jumbo v1, "rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2660
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2662
    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2663
    iget-wide v1, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2665
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2667
    const-string/jumbo v1, "intents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2668
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    if-nez v1, :cond_142

    .line 2669
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17a

    .line 2671
    :cond_142
    if-eqz p1, :cond_151

    .line 2672
    const-string/jumbo v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2673
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_17a

    .line 2675
    :cond_151
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    .line 2676
    .local v1, "size":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    const-string v2, ""

    .line 2678
    .local v2, "sep":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15a
    if-ge v5, v1, :cond_177

    .line 2679
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2680
    const-string v2, ", "

    .line 2681
    iget-object v6, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2682
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2683
    iget-object v6, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2678
    add-int/lit8 v5, v5, 0x1

    goto :goto_15a

    .line 2685
    .end local v5    # "i":I
    :cond_177
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2689
    .end local v1    # "size":I
    .end local v2    # "sep":Ljava/lang/String;
    :goto_17a
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2691
    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2694
    if-eqz p2, :cond_1b6

    .line 2695
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2697
    const-string/jumbo v1, "iconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2698
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2699
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2701
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    const-string v1, ", bitmapPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2704
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2706
    const-string v1, ", iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2707
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    :cond_1b6
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_1c5

    .line 2711
    const-string/jumbo v1, "locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2714
    :cond_1c5
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .registers 3
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1030
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 1038
    :pswitch_7
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1036
    :pswitch_c
    nop

    .line 1040
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->hasTint()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1044
    return-object p0

    .line 1041
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Icons with tints are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_7
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o addFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 1864
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 1865
    return-void
.end method

.method public greylist-max-o clearFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 1869
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 1870
    return-void
.end method

.method public greylist-max-o clearIcon()V
    .registers 2

    .line 2124
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2125
    return-void
.end method

.method public greylist-max-o clearIconPendingSave()V
    .registers 2

    .line 2065
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 2066
    return-void
.end method

.method public greylist-max-o clearImplicitRankAndRankChangedFlag()V
    .registers 2

    .line 1798
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    .line 1799
    return-void
.end method

.method public greylist-max-o clone(I)Landroid/content/pm/ShortcutInfo;
    .registers 3
    .param p1, "cloneFlags"    # I

    .line 916
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {v0, p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;I)V

    return-object v0
.end method

.method public greylist-max-o copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V
    .registers 5
    .param p1, "source"    # Landroid/content/pm/ShortcutInfo;

    .line 954
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 956
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_c

    .line 957
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 960
    :cond_c
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 961
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 963
    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 964
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 965
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    .line 966
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    .line 968
    :cond_1e
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2b

    .line 969
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 970
    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 971
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    goto :goto_37

    .line 972
    :cond_2b
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-eqz v0, :cond_37

    .line 973
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 974
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 975
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 978
    :cond_37
    :goto_37
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_44

    .line 979
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 980
    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 981
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    goto :goto_50

    .line 982
    :cond_44
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-eqz v0, :cond_50

    .line 983
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 984
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 985
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 987
    :cond_50
    :goto_50
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5d

    .line 988
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 989
    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 990
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    goto :goto_69

    .line 991
    :cond_5d
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-eqz v0, :cond_69

    .line 992
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 993
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 994
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 996
    :cond_69
    :goto_69
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_75

    .line 997
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 999
    :cond_75
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    if-eqz v0, :cond_81

    .line 1000
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    .line 1002
    :cond_81
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_95

    .line 1003
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 1004
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 1005
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 1007
    :cond_95
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mRank:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_a0

    .line 1008
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mRank:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 1010
    :cond_a0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_a8

    .line 1011
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    .line 1014
    :cond_a8
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    if-eqz v0, :cond_b0

    .line 1015
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    .line 1017
    :cond_b0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    if-eqz v0, :cond_c0

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 1018
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    .line 1020
    :cond_c0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    if-eqz v0, :cond_cc

    .line 1021
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    .line 1022
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    .line 1024
    :cond_cc
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2480
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o enforceMandatoryFields(Z)V
    .registers 4
    .param p1, "forPinned"    # Z

    .line 605
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    const-string v1, "Shortcut ID must be provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 606
    if-nez p1, :cond_10

    .line 607
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    const-string v1, "Activity must be provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 609
    :cond_10
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_21

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-eqz v0, :cond_19

    goto :goto_21

    .line 610
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Short label must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    const-string v1, "Shortcut Intent must be provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 613
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    if-lez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 614
    return-void
.end method

.method public greylist-max-o ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 6
    .param p1, "source"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "isUpdating"    # Z

    .line 925
    if-eqz p2, :cond_b

    .line 926
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    const-string v1, "[Framework BUG] Invisible shortcuts can\'t be updated"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 929
    :cond_b
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    iget v1, p1, Landroid/content/pm/ShortcutInfo;->mUserId:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    const-string v1, "Owner User ID must match"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 930
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ID must match"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 931
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Package name must match"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 936
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v1, "Target ShortcutInfo is immutable"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 938
    :cond_44
    return-void
.end method

.method public whitelist getActivity()Landroid/content/ComponentName;
    .registers 2

    .line 1559
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o getBitmapPath()Ljava/lang/String;
    .registers 2

    .line 2163
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCapabilities()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/Capability;",
            ">;"
        }
    .end annotation

    .line 2316
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 2317
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 2319
    :cond_b
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/pm/ShortcutInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/pm/ShortcutInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2320
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2319
    return-object v0
.end method

.method public blacklist getCapabilityBindingsInternal()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 2284
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCapabilityParams(Landroid/content/pm/Capability;)Ljava/util/List;
    .registers 13
    .param p1, "capability"    # Landroid/content/pm/Capability;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/Capability;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/CapabilityParams;",
            ">;"
        }
    .end annotation

    .line 2330
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 2332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 2334
    :cond_e
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/Capability;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2335
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v0, :cond_22

    .line 2336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2

    .line 2338
    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2339
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/CapabilityParams;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2340
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2341
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2342
    .local v6, "primaryValue":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_57

    .line 2343
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_5f

    :cond_57
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5, v8, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 2344
    .local v7, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5f
    new-instance v8, Landroid/content/pm/CapabilityParams$Builder;

    invoke-direct {v8, v4, v6}, Landroid/content/pm/CapabilityParams$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    .local v8, "builder":Landroid/content/pm/CapabilityParams$Builder;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_68
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_79

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2346
    .local v10, "alias":Ljava/lang/String;
    invoke-virtual {v8, v10}, Landroid/content/pm/CapabilityParams$Builder;->addAlias(Ljava/lang/String;)Landroid/content/pm/CapabilityParams$Builder;

    move-result-object v8

    .line 2347
    .end local v10    # "alias":Ljava/lang/String;
    goto :goto_68

    .line 2348
    :cond_79
    invoke-virtual {v8}, Landroid/content/pm/CapabilityParams$Builder;->build()Landroid/content/pm/CapabilityParams;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2349
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "primaryValue":Ljava/lang/String;
    .end local v7    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "builder":Landroid/content/pm/CapabilityParams$Builder;
    goto :goto_33

    .line 2350
    :cond_81
    return-object v2
.end method

.method public whitelist getCategories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1694
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getDisabledMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 1666
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getDisabledMessageResName()Ljava/lang/String;
    .registers 2

    .line 2209
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getDisabledMessageResourceId()I
    .registers 2

    .line 1671
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    return v0
.end method

.method public whitelist getDisabledReason()I
    .registers 2

    .line 1684
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    return v0
.end method

.method public whitelist getExcludedFromSurfaces()I
    .registers 2

    .line 2275
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 1829
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .registers 2

    .line 1854
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    return v0
.end method

.method public greylist-max-p getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 1575
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public greylist-max-o getIconResName()Ljava/lang/String;
    .registers 2

    .line 2219
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getIconResourceId()I
    .registers 2

    .line 2140
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    return v0
.end method

.method public blacklist getIconUri()Ljava/lang/String;
    .registers 2

    .line 2153
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 1526
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getImplicitRank()I
    .registers 3

    .line 1809
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 4

    .line 1709
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_21

    .line 1712
    :cond_a
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 1713
    .local v0, "last":I
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1714
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 1710
    .end local v0    # "last":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getIntentPersistableExtrases()[Landroid/os/PersistableBundle;
    .registers 2

    .line 1768
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getIntents()[Landroid/content/Intent;
    .registers 5

    .line 1728
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    if-nez v0, :cond_6

    .line 1729
    const/4 v0, 0x0

    return-object v0

    .line 1731
    :cond_6
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    new-array v0, v0, [Landroid/content/Intent;

    .line 1733
    .local v0, "ret":[Landroid/content/Intent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 1734
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v2, v0, v1

    .line 1735
    aget-object v2, v0, v1

    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1733
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1738
    .end local v1    # "i":I
    :cond_26
    return-object v0
.end method

.method public greylist-max-o getIntentsNoExtras()[Landroid/content/Intent;
    .registers 2

    .line 1747
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .registers 3

    .line 1645
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1646
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1647
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1650
    :cond_e
    return-object v0
.end method

.method public whitelist getLastChangedTimestamp()J
    .registers 3

    .line 1848
    iget-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    return-wide v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .registers 2

    .line 1537
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public whitelist getLongLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 1635
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getLongLabelResourceId()I
    .registers 2

    .line 1655
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    return v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .registers 2

    .line 1545
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPersons()[Landroid/app/Person;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1758
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRank()I
    .registers 2

    .line 1783
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    return v0
.end method

.method public whitelist getShortLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 1620
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getShortLabelResourceId()I
    .registers 2

    .line 1625
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    return v0
.end method

.method public blacklist getStartingThemeResName()Ljava/lang/String;
    .registers 2

    .line 1584
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1604
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getTextResId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1610
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    return v0
.end method

.method public greylist-max-o getTextResName()Ljava/lang/String;
    .registers 2

    .line 2199
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1591
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getTitleResId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1597
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    return v0
.end method

.method public greylist-max-o getTitleResName()Ljava/lang/String;
    .registers 2

    .line 2189
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 1841
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getUserId()I
    .registers 2

    .line 1834
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    return v0
.end method

.method public greylist-max-o hasAdaptiveBitmap()Z
    .registers 2

    .line 2050
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasAnyResources()Z
    .registers 2

    .line 2031
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public greylist-max-o hasFlags(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 1874
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o hasIconFile()Z
    .registers 2

    .line 2040
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasIconResource()Z
    .registers 2

    .line 2012
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasIconUri()Z
    .registers 2

    .line 2021
    const v0, 0x8000

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasKeyFieldsOnly()Z
    .registers 2

    .line 2103
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasRank()Z
    .registers 3

    .line 1788
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o hasStringResources()Z
    .registers 2

    .line 2026
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-nez v0, :cond_f

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-nez v0, :cond_f

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public greylist-max-o hasStringResourcesResolved()Z
    .registers 2

    .line 2108
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isAlive()Z
    .registers 3

    .line 1997
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    invoke-virtual {p0, v1}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1998
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    nop

    .line 1997
    :goto_20
    return v1
.end method

.method public whitelist isCached()Z
    .registers 3

    .line 1904
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v0

    const v1, 0x60004000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist isDeclaredInManifest()Z
    .registers 2

    .line 1928
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDynamic()Z
    .registers 2

    .line 1909
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isDynamicVisible()Z
    .registers 2

    .line 1952
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 1992
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isExcludedFromSurfaces(I)Z
    .registers 3
    .param p1, "surface"    # I

    .line 2265
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o isFloating()Z
    .registers 2

    .line 1942
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public greylist-max-o isIconPendingSave()Z
    .registers 2

    .line 2055
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isImmutable()Z
    .registers 2

    .line 1984
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isLongLived()Z
    .registers 2

    .line 1889
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isManifestShortcut()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1934
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isManifestVisible()Z
    .registers 2

    .line 1962
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isNonManifestVisible()Z
    .registers 2

    .line 1967
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1968
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1967
    :goto_21
    return v0
.end method

.method public greylist-max-o isOriginallyFromManifest()Z
    .registers 2

    .line 1947
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPinned()Z
    .registers 2

    .line 1914
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isPinnedVisible()Z
    .registers 2

    .line 1957
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o isRankChanged()Z
    .registers 3

    .line 1819
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o isReturnedByServer()Z
    .registers 2

    .line 1879
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isVisibleToPublisher()Z
    .registers 2

    .line 2077
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->isDisabledForRestoreIssue(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o lookupAndFillInResourceIds(Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 897
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 899
    return-void

    .line 902
    :cond_11
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "string"

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 903
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 904
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 908
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 909
    return-void
.end method

.method public greylist-max-o lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 873
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-nez v0, :cond_11

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-nez v0, :cond_11

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-nez v0, :cond_11

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    if-nez v0, :cond_11

    .line 875
    return-void

    .line 879
    :cond_11
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 880
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 881
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 885
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 886
    return-void
.end method

.method public greylist-max-o replaceFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 1859
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 1860
    return-void
.end method

.method public greylist-max-o resolveResourceStrings(Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 721
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 723
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-nez v0, :cond_13

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-nez v0, :cond_13

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-nez v0, :cond_13

    .line 724
    return-void

    .line 727
    :cond_13
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-eqz v0, :cond_21

    .line 728
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 730
    :cond_21
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-eqz v0, :cond_2f

    .line 731
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 733
    :cond_2f
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-eqz v0, :cond_3d

    .line 734
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 736
    :cond_3d
    return-void
.end method

.method public greylist-max-o setActivity(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 1564
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 1565
    return-void
.end method

.method public greylist-max-o setBitmapPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "bitmapPath"    # Ljava/lang/String;

    .line 2168
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    .line 2169
    return-void
.end method

.method public blacklist setCached(I)V
    .registers 2
    .param p1, "cacheFlag"    # I

    .line 1899
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 1900
    return-void
.end method

.method public greylist-max-o setCategories(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2258
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 2259
    return-void
.end method

.method public greylist-max-o setDisabledMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "disabledMessage"    # Ljava/lang/String;

    .line 2182
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 2183
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 2184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 2185
    return-void
.end method

.method public greylist-max-o setDisabledMessageResId(I)V
    .registers 4
    .param p1, "disabledMessageResId"    # I

    .line 2173
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_7

    .line 2174
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 2176
    :cond_7
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 2177
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 2178
    return-void
.end method

.method public greylist-max-o setDisabledMessageResName(Ljava/lang/String;)V
    .registers 2
    .param p1, "disabledMessageResName"    # Ljava/lang/String;

    .line 2214
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 2215
    return-void
.end method

.method public greylist-max-o setDisabledReason(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 1676
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    .line 1677
    return-void
.end method

.method public greylist-max-o setIconPendingSave()V
    .registers 2

    .line 2060
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 2061
    return-void
.end method

.method public greylist-max-o setIconResName(Ljava/lang/String;)V
    .registers 2
    .param p1, "iconResName"    # Ljava/lang/String;

    .line 2224
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 2225
    return-void
.end method

.method public greylist-max-o setIconResourceId(I)V
    .registers 3
    .param p1, "iconResourceId"    # I

    .line 2129
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    if-eq v0, p1, :cond_7

    .line 2130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 2132
    :cond_7
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 2133
    return-void
.end method

.method public blacklist setIconUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "iconUri"    # Ljava/lang/String;

    .line 2145
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    .line 2146
    return-void
.end method

.method public greylist-max-o setImplicitRank(I)V
    .registers 4
    .param p1, "rank"    # I

    .line 1804
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    .line 1805
    return-void
.end method

.method public greylist-max-o setIntents([Landroid/content/Intent;)V
    .registers 3
    .param p1, "intents"    # [Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2235
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    array-length v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2238
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 2239
    invoke-direct {p0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    .line 2240
    return-void
.end method

.method public blacklist setLongLived()V
    .registers 2

    .line 1894
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 1895
    return-void
.end method

.method public greylist-max-o setRank(I)V
    .registers 2
    .param p1, "rank"    # I

    .line 1793
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 1794
    return-void
.end method

.method public greylist-max-o setRankChanged()V
    .registers 3

    .line 1814
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    .line 1815
    return-void
.end method

.method public greylist-max-o setReturnedByServer()V
    .registers 2

    .line 1884
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 1885
    return-void
.end method

.method public greylist-max-o setTextResName(Ljava/lang/String;)V
    .registers 2
    .param p1, "textResName"    # Ljava/lang/String;

    .line 2204
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 2205
    return-void
.end method

.method public greylist-max-o setTimestamp(J)V
    .registers 3
    .param p1, "value"    # J

    .line 2119
    iput-wide p1, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    .line 2120
    return-void
.end method

.method public greylist-max-o setTitleResName(Ljava/lang/String;)V
    .registers 2
    .param p1, "titleResName"    # Ljava/lang/String;

    .line 2194
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 2195
    return-void
.end method

.method public greylist-max-o toDumpString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 2501
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/content/pm/ShortcutInfo;->toStringInner(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toInsecureString()Ljava/lang/String;
    .registers 4

    .line 2495
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/content/pm/ShortcutInfo;->toStringInner(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toSimpleString()Ljava/lang/String;
    .registers 3

    .line 2506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2507
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2508
    invoke-direct {p0, v0}, Landroid/content/pm/ShortcutInfo;->addReadableFlags(Ljava/lang/StringBuilder;)V

    .line 2509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2489
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Landroid/content/pm/ShortcutInfo;->toStringInner(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o updateTimestamp()V
    .registers 3

    .line 2113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    .line 2114
    return-void
.end method

.method public greylist-max-o usesQuota()Z
    .registers 3

    .line 2003
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :cond_11
    :goto_11
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2416
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2417
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2418
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2419
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2420
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2421
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2422
    iget-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2423
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2425
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 2426
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2427
    return-void

    .line 2429
    :cond_33
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2431
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2432
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2433
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2434
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2435
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2436
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2437
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2439
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2440
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2441
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2442
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2443
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2445
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2446
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2447
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2448
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2450
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_a6

    .line 2451
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 2452
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2453
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_95
    if-ge v1, v0, :cond_a5

    .line 2454
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2453
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 2456
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_a5
    goto :goto_a9

    .line 2457
    :cond_a6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2460
    :goto_a9
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2461
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2462
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2463
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2464
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2465
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2466
    return-void
.end method
