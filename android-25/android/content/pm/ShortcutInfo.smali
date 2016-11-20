.class public final Landroid/content/pm/ShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ShortcutInfo$1;,
        Landroid/content/pm/ShortcutInfo$Builder;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final CLONE_REMOVE_FOR_CREATOR:I = 0x9

.field public static final CLONE_REMOVE_FOR_LAUNCHER:I = 0xb

.field private static final CLONE_REMOVE_ICON:I = 0x1

.field private static final CLONE_REMOVE_INTENT:I = 0x2

.field public static final CLONE_REMOVE_NON_KEY_INFO:I = 0x4

.field public static final CLONE_REMOVE_RES_NAMES:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_DISABLED:I = 0x40

.field public static final FLAG_DYNAMIC:I = 0x1

.field public static final FLAG_HAS_ICON_FILE:I = 0x8

.field public static final FLAG_HAS_ICON_RES:I = 0x4

.field public static final FLAG_IMMUTABLE:I = 0x100

.field public static final FLAG_KEY_FIELDS_ONLY:I = 0x10

.field public static final FLAG_MANIFEST:I = 0x20

.field public static final FLAG_PINNED:I = 0x2

.field public static final FLAG_STRINGS_RESOLVED:I = 0x80

.field private static final IMPLICIT_RANK_MASK:I = 0x7fffffff

.field private static final RANK_CHANGED_BIT:I = -0x80000000

.field public static final RANK_NOT_SET:I = 0x7fffffff

.field private static final RES_TYPE_STRING:Ljava/lang/String; = "string"

.field public static final SHORTCUT_CATEGORY_CONVERSATION:Ljava/lang/String; = "android.shortcut.conversation"

.field static final TAG:Ljava/lang/String; = "Shortcut"


# instance fields
.field private mActivity:Landroid/content/ComponentName;

.field private mBitmapPath:Ljava/lang/String;

.field private mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledMessage:Ljava/lang/CharSequence;

.field private mDisabledMessageResId:I

.field private mDisabledMessageResName:Ljava/lang/String;

.field private mExtras:Landroid/os/PersistableBundle;

.field private mFlags:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIconResId:I

.field private mIconResName:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private mImplicitRank:I

.field private mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

.field private mIntents:[Landroid/content/Intent;

.field private mLastChangedTimestamp:J

.field private final mPackageName:Ljava/lang/String;

.field private mRank:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextResId:I

.field private mTextResName:Ljava/lang/String;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleResId:I

.field private mTitleResName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static synthetic -wrap0([Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 1
    .param p0, "intents"    # [Landroid/content/Intent;

    #@0
    .prologue
    invoke-static {p0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1688
    new-instance v0, Landroid/content/pm/ShortcutInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/ShortcutInfo$1;-><init>()V

    #@5
    .line 1687
    sput-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/PersistableBundle;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1838
    .local p15, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1846
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@5
    .line 1847
    iput-object p2, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@7
    .line 1848
    iput-object p3, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@9
    .line 1849
    iput-object p4, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@b
    .line 1850
    iput-object p5, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@d
    .line 1851
    iput-object p6, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@f
    .line 1852
    iput p7, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@11
    .line 1853
    iput-object p8, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@13
    .line 1854
    iput-object p9, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@15
    .line 1855
    iput p10, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@17
    .line 1856
    iput-object p11, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@19
    .line 1857
    iput-object p12, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@1b
    .line 1858
    move/from16 v0, p13

    #@1d
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@1f
    .line 1859
    move-object/from16 v0, p14

    #@21
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@23
    .line 1860
    invoke-static/range {p15 .. p15}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    #@26
    move-result-object v2

    #@27
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@29
    .line 1861
    invoke-static/range {p16 .. p16}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@2f
    .line 1862
    invoke-direct {p0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    #@32
    .line 1863
    move/from16 v0, p17

    #@34
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@36
    .line 1864
    move-object/from16 v0, p18

    #@38
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@3a
    .line 1865
    move-wide/from16 v0, p19

    #@3c
    iput-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@3e
    .line 1866
    move/from16 v0, p21

    #@40
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@42
    .line 1867
    move/from16 v0, p22

    #@44
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@46
    .line 1868
    move-object/from16 v0, p23

    #@48
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@4a
    .line 1869
    move-object/from16 v0, p24

    #@4c
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@4e
    .line 1845
    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ShortcutInfo$Builder;)V
    .locals 2
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo$Builder;

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 228
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get2(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@d
    .line 230
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get7(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "Shortcut ID must be provided"

    #@14
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@1c
    .line 234
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get2(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@26
    .line 235
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get0(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/ComponentName;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@2c
    .line 236
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get6(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/graphics/drawable/Icon;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@32
    .line 237
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get12(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@38
    .line 238
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get13(Landroid/content/pm/ShortcutInfo$Builder;)I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@3e
    .line 239
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get10(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@44
    .line 240
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get11(Landroid/content/pm/ShortcutInfo$Builder;)I

    #@47
    move-result v0

    #@48
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@4a
    .line 241
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get3(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    #@4d
    move-result-object v0

    #@4e
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@50
    .line 242
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get4(Landroid/content/pm/ShortcutInfo$Builder;)I

    #@53
    move-result v0

    #@54
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@56
    .line 243
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get1(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Set;

    #@59
    move-result-object v0

    #@5a
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@60
    .line 244
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get8(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/content/Intent;

    #@63
    move-result-object v0

    #@64
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    #@67
    move-result-object v0

    #@68
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@6a
    .line 245
    invoke-direct {p0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    #@6d
    .line 246
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get9(Landroid/content/pm/ShortcutInfo$Builder;)I

    #@70
    move-result v0

    #@71
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@73
    .line 247
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get5(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/os/PersistableBundle;

    #@76
    move-result-object v0

    #@77
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@79
    .line 248
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->updateTimestamp()V

    #@7c
    .line 227
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutInfo;)V
    .locals 0
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo$Builder;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ShortcutInfo;I)V
    .locals 2
    .param p1, "source"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "cloneFlags"    # I

    #@0
    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 331
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@5
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@7
    .line 332
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@b
    .line 333
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@d
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@f
    .line 334
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@11
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@13
    .line 335
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@15
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@17
    .line 336
    iget-wide v0, p1, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@19
    iput-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@1b
    .line 339
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@1d
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@1f
    .line 341
    and-int/lit8 v0, p2, 0x4

    #@21
    if-nez v0, :cond_3

    #@23
    .line 343
    and-int/lit8 v0, p2, 0x1

    #@25
    if-nez v0, :cond_0

    #@27
    .line 344
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@29
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@2b
    .line 345
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@2d
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@2f
    .line 348
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@31
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@33
    .line 349
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@35
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@37
    .line 350
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@39
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@3b
    .line 351
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@3d
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@3f
    .line 352
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@41
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@43
    .line 353
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@45
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@47
    .line 354
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@49
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    #@4c
    move-result-object v0

    #@4d
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@4f
    .line 355
    and-int/lit8 v0, p2, 0x2

    #@51
    if-nez v0, :cond_1

    #@53
    .line 356
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@55
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    #@58
    move-result-object v0

    #@59
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@5b
    .line 358
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@5d
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;

    #@60
    move-result-object v0

    #@61
    .line 357
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@63
    .line 360
    :cond_1
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@65
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@67
    .line 361
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@69
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@6b
    .line 363
    and-int/lit8 v0, p2, 0x8

    #@6d
    if-nez v0, :cond_2

    #@6f
    .line 364
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@71
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@73
    .line 365
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@75
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@77
    .line 366
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@79
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@7b
    .line 367
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@7d
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@7f
    .line 330
    :cond_2
    :goto_0
    return-void

    #@80
    .line 371
    :cond_3
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@82
    or-int/lit8 v0, v0, 0x10

    #@84
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@86
    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1598
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v1

    #@b
    .line 1600
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v3

    #@f
    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@11
    .line 1601
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@17
    .line 1602
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@1d
    .line 1603
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/content/ComponentName;

    #@23
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@25
    .line 1604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2b
    .line 1605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v3

    #@2f
    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@31
    .line 1606
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@34
    move-result-wide v4

    #@35
    iput-wide v4, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@37
    .line 1608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_0

    #@3d
    .line 1609
    return-void

    #@3e
    .line 1612
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Landroid/graphics/drawable/Icon;

    #@44
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@46
    .line 1613
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@49
    move-result-object v3

    #@4a
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@4c
    .line 1614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v3

    #@50
    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@52
    .line 1615
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@55
    move-result-object v3

    #@56
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@58
    .line 1616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v3

    #@5c
    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@5e
    .line 1617
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@61
    move-result-object v3

    #@62
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@64
    .line 1618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v3

    #@68
    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@6a
    .line 1619
    const-class v3, Landroid/content/Intent;

    #@6c
    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    #@6f
    move-result-object v3

    #@70
    check-cast v3, [Landroid/content/Intent;

    #@72
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@74
    .line 1620
    const-class v3, Landroid/os/PersistableBundle;

    #@76
    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    #@79
    move-result-object v3

    #@7a
    check-cast v3, [Landroid/os/PersistableBundle;

    #@7c
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@7e
    .line 1621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v3

    #@82
    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@84
    .line 1622
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@87
    move-result-object v3

    #@88
    check-cast v3, Landroid/os/PersistableBundle;

    #@8a
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@8c
    .line 1623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@92
    .line 1625
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@98
    .line 1626
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9b
    move-result-object v3

    #@9c
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@9e
    .line 1627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a1
    move-result-object v3

    #@a2
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@a4
    .line 1628
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a7
    move-result-object v3

    #@a8
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@aa
    .line 1630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v0

    #@ae
    .line 1631
    .local v0, "N":I
    if-nez v0, :cond_2

    #@b0
    .line 1632
    const/4 v3, 0x0

    #@b1
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@b3
    .line 1597
    :cond_1
    return-void

    #@b4
    .line 1634
    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    #@b6
    invoke-direct {v3, v0}, Landroid/util/ArraySet;-><init>(I)V

    #@b9
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@bb
    .line 1635
    const/4 v2, 0x0

    #@bc
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@be
    .line 1636
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@c0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c3
    move-result-object v4

    #@c4
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@c7
    move-result-object v4

    #@c8
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@cb
    .line 1635
    add-int/lit8 v2, v2, 0x1

    #@cd
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ShortcutInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private static cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "source":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 274
    if-nez p0, :cond_0

    #@3
    .line 275
    return-object v3

    #@4
    .line 277
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    #@6
    invoke-interface {p0}, Ljava/util/Set;->size()I

    #@9
    move-result v3

    #@a
    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(I)V

    #@d
    .line 278
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/lang/String;

    #@1d
    .line 279
    .local v1, "s":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_1

    #@23
    .line 280
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_0

    #@2f
    .line 283
    .end local v1    # "s":Ljava/lang/CharSequence;
    :cond_2
    return-object v0
.end method

.method private static cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 4
    .param p0, "intents"    # [Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 287
    if-nez p0, :cond_0

    #@3
    .line 288
    return-object v2

    #@4
    .line 290
    :cond_0
    array-length v2, p0

    #@5
    new-array v1, v2, [Landroid/content/Intent;

    #@7
    .line 291
    .local v1, "ret":[Landroid/content/Intent;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@9
    if-ge v0, v2, :cond_2

    #@b
    .line 292
    aget-object v2, p0, v0

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 293
    new-instance v2, Landroid/content/Intent;

    #@11
    aget-object v3, p0, v0

    #@13
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@16
    aput-object v2, v1, v0

    #@18
    .line 291
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 296
    :cond_2
    return-object v1
.end method

.method private static clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;
    .locals 4
    .param p0, "bundle"    # [Landroid/os/PersistableBundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 300
    if-nez p0, :cond_0

    #@3
    .line 301
    return-object v2

    #@4
    .line 303
    :cond_0
    array-length v2, p0

    #@5
    new-array v1, v2, [Landroid/os/PersistableBundle;

    #@7
    .line 304
    .local v1, "ret":[Landroid/os/PersistableBundle;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@9
    if-ge v0, v2, :cond_2

    #@b
    .line 305
    aget-object v2, p0, v0

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 306
    new-instance v2, Landroid/os/PersistableBundle;

    #@11
    aget-object v3, p0, v0

    #@13
    invoke-direct {v2, v3}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    #@16
    aput-object v2, v1, v0

    #@18
    .line 304
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 309
    :cond_2
    return-object v1
.end method

.method private fixUpIntentExtras()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 256
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 257
    iput-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@7
    .line 258
    return-void

    #@8
    .line 260
    :cond_0
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@a
    array-length v3, v3

    #@b
    new-array v3, v3, [Landroid/os/PersistableBundle;

    #@d
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@f
    .line 261
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@12
    array-length v3, v3

    #@13
    if-ge v1, v3, :cond_2

    #@15
    .line 262
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@17
    aget-object v2, v3, v1

    #@19
    .line 263
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@1c
    move-result-object v0

    #@1d
    .line 264
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    #@1f
    .line 265
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@21
    aput-object v4, v3, v1

    #@23
    .line 261
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 267
    :cond_1
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@28
    new-instance v5, Landroid/os/PersistableBundle;

    #@2a
    invoke-direct {v5, v0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    #@2d
    aput-object v5, v3, v1

    #@2f
    move-object v3, v4

    #@30
    .line 268
    nop

    #@31
    nop

    #@32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@35
    goto :goto_1

    #@36
    .line 255
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public static getInvalidIconException()Ljava/lang/IllegalArgumentException;
    .locals 2

    #@0
    .prologue
    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "Unsupported icon type: only the bitmap and resource types are supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method public static getResourceEntryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullResourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 502
    const/16 v1, 0x2f

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    .line 503
    .local v0, "p1":I
    if-gez v0, :cond_0

    #@8
    .line 504
    const/4 v1, 0x0

    #@9
    return-object v1

    #@a
    .line 506
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public static getResourcePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fullResourceName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 456
    const/16 v1, 0x3a

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 457
    .local v0, "p1":I
    if-gez v0, :cond_0

    #@9
    .line 458
    const/4 v1, 0x0

    #@a
    return-object v1

    #@b
    .line 460
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "defValue"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 383
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 384
    :catch_0
    move-exception v0

    #@6
    .line 385
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v1, "Shortcut"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Resource for ID="

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, " not found in package "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 386
    return-object p3
.end method

.method public static getResourceTypeAndEntryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullResourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 488
    const/16 v1, 0x3a

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    .line 489
    .local v0, "p1":I
    if-gez v0, :cond_0

    #@8
    .line 490
    const/4 v1, 0x0

    #@9
    return-object v1

    #@a
    .line 492
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public static getResourceTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "fullResourceName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 470
    const/16 v2, 0x3a

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 471
    .local v0, "p1":I
    if-gez v0, :cond_0

    #@9
    .line 472
    return-object v4

    #@a
    .line 474
    :cond_0
    const/16 v2, 0x2f

    #@c
    add-int/lit8 v3, v0, 0x1

    #@e
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    #@11
    move-result v1

    #@12
    .line 475
    .local v1, "p2":I
    if-gez v1, :cond_1

    #@14
    .line 476
    return-object v4

    #@15
    .line 478
    :cond_1
    add-int/lit8 v2, v0, 0x1

    #@17
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method public static lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "resourceType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 524
    if-nez p1, :cond_0

    #@3
    .line 525
    return v5

    #@4
    .line 530
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 531
    :catch_0
    move-exception v1

    #@a
    .line 534
    .local v1, "ignore":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 535
    .end local v1    # "ignore":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    #@10
    .line 536
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "Shortcut"

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Resource ID for name="

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, " not found in package "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 538
    return v5
.end method

.method public static lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "withType"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 428
    if-nez p1, :cond_0

    #@3
    .line 429
    return-object v5

    #@4
    .line 432
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 434
    .local v1, "fullName":Ljava/lang/String;
    const-string/jumbo v2, "android"

    #@b
    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourcePackageName(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 437
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 439
    :cond_1
    if-eqz p2, :cond_2

    #@1c
    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourceTypeAndEntryName(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    :goto_0
    return-object v2

    #@21
    .line 440
    :cond_2
    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourceEntryName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v2

    #@25
    goto :goto_0

    #@26
    .line 441
    .end local v1    # "fullName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@27
    .line 442
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "Shortcut"

    #@2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "Resource name for ID="

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    const-string/jumbo v4, " not found in package "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    .line 443
    const-string/jumbo v4, ". Resource IDs may change when the application is upgraded, and the system"

    #@48
    .line 442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    .line 444
    const-string/jumbo v4, " may not be able to find the correct resource."

    #@4f
    .line 442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 445
    return-object v5
.end method

.method public static setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1580
    if-nez p1, :cond_0

    #@3
    .line 1581
    nop

    #@4
    nop

    #@5
    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@8
    .line 1585
    :goto_0
    return-object p0

    #@9
    .line 1583
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@b
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    #@e
    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@11
    goto :goto_0
.end method

.method private toStringInner(ZZ)Ljava/lang/String;
    .locals 6
    .param p1, "secure"    # Z
    .param p2, "includeInternalData"    # Z

    #@0
    .prologue
    .line 1716
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1717
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "ShortcutInfo {"

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 1719
    const-string/jumbo v4, "id="

    #@e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 1720
    if-eqz p1, :cond_a

    #@13
    const-string/jumbo v4, "***"

    #@16
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 1722
    const-string/jumbo v4, ", flags=0x"

    #@1c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 1723
    iget v4, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@21
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 1724
    const-string/jumbo v4, " ["

    #@2b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 1725
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    #@31
    move-result v4

    #@32
    if-nez v4, :cond_0

    #@34
    .line 1726
    const-string/jumbo v4, "X"

    #@37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 1728
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_1

    #@40
    .line 1729
    const-string/jumbo v4, "Im"

    #@43
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 1731
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_2

    #@4c
    .line 1732
    const-string/jumbo v4, "M"

    #@4f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 1734
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_3

    #@58
    .line 1735
    const-string/jumbo v4, "D"

    #@5b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 1737
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_4

    #@64
    .line 1738
    const-string/jumbo v4, "P"

    #@67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 1740
    :cond_4
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    #@6d
    move-result v4

    #@6e
    if-eqz v4, :cond_5

    #@70
    .line 1741
    const-string/jumbo v4, "If"

    #@73
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 1743
    :cond_5
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    #@79
    move-result v4

    #@7a
    if-eqz v4, :cond_6

    #@7c
    .line 1744
    const-string/jumbo v4, "Ir"

    #@7f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    .line 1746
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    #@85
    move-result v4

    #@86
    if-eqz v4, :cond_7

    #@88
    .line 1747
    const-string/jumbo v4, "K"

    #@8b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    .line 1749
    :cond_7
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasStringResourcesResolved()Z

    #@91
    move-result v4

    #@92
    if-eqz v4, :cond_8

    #@94
    .line 1750
    const-string/jumbo v4, "Sr"

    #@97
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    .line 1752
    :cond_8
    const-string/jumbo v4, "]"

    #@9d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    .line 1754
    const-string/jumbo v4, ", packageName="

    #@a3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    .line 1755
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@a8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    .line 1757
    const-string/jumbo v4, ", activity="

    #@ae
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    .line 1758
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@b3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b6
    .line 1760
    const-string/jumbo v4, ", shortLabel="

    #@b9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    .line 1761
    if-eqz p1, :cond_b

    #@be
    const-string/jumbo v4, "***"

    #@c1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@c4
    .line 1762
    const-string/jumbo v4, ", resId="

    #@c7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    .line 1763
    iget v4, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@cc
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    .line 1764
    const-string/jumbo v4, "["

    #@d2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    .line 1765
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@d7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    .line 1766
    const-string/jumbo v4, "]"

    #@dd
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    .line 1768
    const-string/jumbo v4, ", longLabel="

    #@e3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    .line 1769
    if-eqz p1, :cond_c

    #@e8
    const-string/jumbo v4, "***"

    #@eb
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@ee
    .line 1770
    const-string/jumbo v4, ", resId="

    #@f1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    .line 1771
    iget v4, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@f6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f9
    .line 1772
    const-string/jumbo v4, "["

    #@fc
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    .line 1773
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@101
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    .line 1774
    const-string/jumbo v4, "]"

    #@107
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    .line 1776
    const-string/jumbo v4, ", disabledMessage="

    #@10d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    .line 1777
    if-eqz p1, :cond_d

    #@112
    const-string/jumbo v4, "***"

    #@115
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@118
    .line 1778
    const-string/jumbo v4, ", resId="

    #@11b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    .line 1779
    iget v4, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@120
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@123
    .line 1780
    const-string/jumbo v4, "["

    #@126
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    .line 1781
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@12b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    .line 1782
    const-string/jumbo v4, "]"

    #@131
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    .line 1784
    const-string/jumbo v4, ", categories="

    #@137
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    .line 1785
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@13c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13f
    .line 1787
    const-string/jumbo v4, ", icon="

    #@142
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    .line 1788
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@147
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14a
    .line 1790
    const-string/jumbo v4, ", rank="

    #@14d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    .line 1791
    iget v4, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@152
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@155
    .line 1793
    const-string/jumbo v4, ", timestamp="

    #@158
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    .line 1794
    iget-wide v4, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@15d
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@160
    .line 1796
    const-string/jumbo v4, ", intents="

    #@163
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    .line 1797
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@168
    if-nez v4, :cond_e

    #@16a
    .line 1798
    const-string/jumbo v4, "null"

    #@16d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    .line 1818
    :goto_4
    const-string/jumbo v4, ", extras="

    #@173
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    .line 1819
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@178
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17b
    .line 1821
    if-eqz p2, :cond_9

    #@17d
    .line 1823
    const-string/jumbo v4, ", iconRes="

    #@180
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    .line 1824
    iget v4, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@185
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@188
    .line 1825
    const-string/jumbo v4, "["

    #@18b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    .line 1826
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@190
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    .line 1827
    const-string/jumbo v4, "]"

    #@196
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    .line 1829
    const-string/jumbo v4, ", bitmapPath="

    #@19c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    .line 1830
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@1a1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    .line 1833
    :cond_9
    const-string/jumbo v4, "}"

    #@1a7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    .line 1834
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ad
    move-result-object v4

    #@1ae
    return-object v4

    #@1af
    .line 1720
    :cond_a
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@1b1
    goto/16 :goto_0

    #@1b3
    .line 1761
    :cond_b
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@1b5
    goto/16 :goto_1

    #@1b7
    .line 1769
    :cond_c
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@1b9
    goto/16 :goto_2

    #@1bb
    .line 1777
    :cond_d
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@1bd
    goto/16 :goto_3

    #@1bf
    .line 1800
    :cond_e
    if-eqz p1, :cond_f

    #@1c1
    .line 1801
    const-string/jumbo v4, "size:"

    #@1c4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    .line 1802
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@1c9
    array-length v4, v4

    #@1ca
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cd
    goto :goto_4

    #@1ce
    .line 1804
    :cond_f
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@1d0
    array-length v3, v4

    #@1d1
    .line 1805
    .local v3, "size":I
    const-string/jumbo v4, "["

    #@1d4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    .line 1806
    const-string/jumbo v2, ""

    #@1da
    .line 1807
    .local v2, "sep":Ljava/lang/String;
    const/4 v0, 0x0

    #@1db
    .local v0, "i":I
    :goto_5
    if-ge v0, v3, :cond_10

    #@1dd
    .line 1808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    .line 1809
    const-string/jumbo v2, ", "

    #@1e3
    .line 1810
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@1e5
    aget-object v4, v4, v0

    #@1e7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ea
    .line 1811
    const-string/jumbo v4, "/"

    #@1ed
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    .line 1812
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@1f2
    aget-object v4, v4, v0

    #@1f4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f7
    .line 1807
    add-int/lit8 v0, v0, 0x1

    #@1f9
    goto :goto_5

    #@1fa
    .line 1814
    :cond_10
    const-string/jumbo v4, "]"

    #@1fd
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    goto/16 :goto_4
.end method

.method public static validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 684
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 689
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    #@a
    move-result-object v0

    #@b
    throw v0

    #@c
    .line 691
    :pswitch_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->hasTint()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Icons with tints are not supported"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 695
    :cond_0
    return-object p0

    #@1c
    .line 684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1318
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@5
    .line 1317
    return-void
.end method

.method public clearFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1323
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@6
    .line 1322
    return-void
.end method

.method public clearIcon()V
    .locals 1

    #@0
    .prologue
    .line 1478
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@3
    .line 1477
    return-void
.end method

.method public clearImplicitRankAndRankChangedFlag()V
    .locals 1

    #@0
    .prologue
    .line 1252
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    #@3
    .line 1251
    return-void
.end method

.method public clone(I)Landroid/content/pm/ShortcutInfo;
    .locals 1
    .param p1, "cloneFlags"    # I

    #@0
    .prologue
    .line 595
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;I)V

    #@5
    return-object v0
.end method

.method public copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V
    .locals 3
    .param p1, "source"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 623
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;)V

    #@5
    .line 625
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 626
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@b
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@d
    .line 629
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 630
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@13
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@15
    .line 632
    iput v2, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@17
    .line 633
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@19
    .line 634
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@1b
    .line 636
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@1d
    if-eqz v0, :cond_9

    #@1f
    .line 637
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@21
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@23
    .line 638
    iput v2, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@25
    .line 639
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@27
    .line 646
    :cond_2
    :goto_0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@29
    if-eqz v0, :cond_a

    #@2b
    .line 647
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@2d
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@2f
    .line 648
    iput v2, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@31
    .line 649
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@33
    .line 655
    :cond_3
    :goto_1
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@35
    if-eqz v0, :cond_b

    #@37
    .line 656
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@39
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@3b
    .line 657
    iput v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@3d
    .line 658
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@3f
    .line 664
    :cond_4
    :goto_2
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@41
    if-eqz v0, :cond_5

    #@43
    .line 665
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@45
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@4b
    .line 667
    :cond_5
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@4d
    if-eqz v0, :cond_6

    #@4f
    .line 668
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@51
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@57
    .line 670
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@59
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;

    #@5c
    move-result-object v0

    #@5d
    .line 669
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@5f
    .line 672
    :cond_6
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@61
    const v1, 0x7fffffff

    #@64
    if-eq v0, v1, :cond_7

    #@66
    .line 673
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@68
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@6a
    .line 675
    :cond_7
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@6c
    if-eqz v0, :cond_8

    #@6e
    .line 676
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@70
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@72
    .line 622
    :cond_8
    return-void

    #@73
    .line 640
    :cond_9
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@75
    if-eqz v0, :cond_2

    #@77
    .line 641
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@79
    .line 642
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@7b
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@7d
    .line 643
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@7f
    goto :goto_0

    #@80
    .line 650
    :cond_a
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@82
    if-eqz v0, :cond_3

    #@84
    .line 651
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@86
    .line 652
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@88
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@8a
    .line 653
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@8c
    goto :goto_1

    #@8d
    .line 659
    :cond_b
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@8f
    if-eqz v0, :cond_4

    #@91
    .line 660
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@93
    .line 661
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@95
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@97
    .line 662
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@99
    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1699
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public enforceMandatoryFields()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 318
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@3
    const-string/jumbo v2, "Shortcut ID must be provided"

    #@6
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@9
    .line 319
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@b
    const-string/jumbo v2, "Activity must be provided"

    #@e
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 320
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@13
    if-nez v1, :cond_0

    #@15
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@17
    if-nez v1, :cond_0

    #@19
    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v1, "Short label must be provided"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 323
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@24
    const-string/jumbo v2, "Shortcut Intent must be provided"

    #@27
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 324
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@2c
    array-length v1, v1

    #@2d
    if-lez v1, :cond_1

    #@2f
    const/4 v0, 0x1

    #@30
    :cond_1
    const-string/jumbo v1, "Shortcut Intent must be provided"

    #@33
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    #@36
    .line 317
    return-void
.end method

.method public ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;)V
    .locals 4
    .param p1, "source"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 602
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@4
    iget v3, p1, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@6
    if-ne v0, v3, :cond_0

    #@8
    move v0, v1

    #@9
    :goto_0
    const-string/jumbo v3, "Owner User ID must match"

    #@c
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@f
    .line 603
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@11
    iget-object v3, p1, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    const-string/jumbo v3, "ID must match"

    #@1a
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@1d
    .line 604
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@1f
    iget-object v3, p1, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    .line 605
    const-string/jumbo v3, "Package name must match"

    #@28
    .line 604
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@2b
    .line 606
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_1

    #@31
    :goto_1
    const-string/jumbo v0, "Target ShortcutInfo is immutable"

    #@34
    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@37
    .line 601
    return-void

    #@38
    :cond_0
    move v0, v2

    #@39
    .line 602
    goto :goto_0

    #@3a
    :cond_1
    move v2, v1

    #@3b
    .line 606
    goto :goto_1
.end method

.method public getActivity()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 1060
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getBitmapPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1499
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1157
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1142
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getDisabledMessageResName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1545
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDisabledMessageResourceId()I
    .locals 1

    #@0
    .prologue
    .line 1147
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@2
    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 1283
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 1308
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    .prologue
    .line 1075
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method public getIconResName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1555
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    #@0
    .prologue
    .line 1494
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@2
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1038
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getImplicitRank()I
    .locals 2

    #@0
    .prologue
    .line 1263
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    #@2
    const v1, 0x7fffffff

    #@5
    and-int/2addr v0, v1

    #@6
    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1172
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@7
    array-length v2, v2

    #@8
    if-nez v2, :cond_1

    #@a
    .line 1173
    :cond_0
    return-object v3

    #@b
    .line 1175
    :cond_1
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@d
    array-length v2, v2

    #@e
    add-int/lit8 v1, v2, -0x1

    #@10
    .line 1176
    .local v1, "last":I
    new-instance v0, Landroid/content/Intent;

    #@12
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@14
    aget-object v2, v2, v1

    #@16
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@19
    .line 1177
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@1b
    aget-object v2, v2, v1

    #@1d
    invoke-static {v0, v2}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    #@20
    move-result-object v2

    #@21
    return-object v2
.end method

.method public getIntentPersistableExtrases()[Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 1217
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 4

    #@0
    .prologue
    .line 1191
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@2
    array-length v2, v2

    #@3
    new-array v1, v2, [Landroid/content/Intent;

    #@5
    .line 1193
    .local v1, "ret":[Landroid/content/Intent;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 1194
    new-instance v2, Landroid/content/Intent;

    #@b
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@d
    aget-object v3, v3, v0

    #@f
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@12
    aput-object v2, v1, v0

    #@14
    .line 1195
    aget-object v2, v1, v0

    #@16
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@18
    aget-object v3, v3, v0

    #@1a
    invoke-static {v2, v3}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    #@1d
    .line 1193
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1198
    :cond_0
    return-object v1
.end method

.method public getIntentsNoExtras()[Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 1207
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getLastChangedTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 1302
    iget-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@2
    return-wide v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1126
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getLongLabelResourceId()I
    .locals 1

    #@0
    .prologue
    .line 1131
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@2
    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1046
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRank()I
    .locals 1

    #@0
    .prologue
    .line 1237
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@2
    return v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1111
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getShortLabelResourceId()I
    .locals 1

    #@0
    .prologue
    .line 1116
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@2
    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1095
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTextResId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1101
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@2
    return v0
.end method

.method public getTextResName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1535
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1082
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitleResId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1088
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@2
    return v0
.end method

.method public getTitleResName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1525
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 1295
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@2
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 1288
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@2
    return v0
.end method

.method public hasAnyResources()Z
    .locals 1

    #@0
    .prologue
    .line 1422
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public hasFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1328
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-ne v0, p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public hasIconFile()Z
    .locals 1

    #@0
    .prologue
    .line 1431
    const/16 v0, 0x8

    #@2
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasIconResource()Z
    .locals 1

    #@0
    .prologue
    .line 1412
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasKeyFieldsOnly()Z
    .locals 1

    #@0
    .prologue
    .line 1457
    const/16 v0, 0x10

    #@2
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasRank()Z
    .locals 2

    #@0
    .prologue
    .line 1242
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@2
    const v1, 0x7fffffff

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public hasStringResources()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1417
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@4
    if-nez v2, :cond_0

    #@6
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@8
    if-eqz v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@d
    if-nez v2, :cond_0

    #@f
    move v0, v1

    #@10
    goto :goto_0
.end method

.method public hasStringResourcesResolved()Z
    .locals 1

    #@0
    .prologue
    .line 1462
    const/16 v0, 0x80

    #@2
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isAlive()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1398
    const/4 v1, 0x2

    #@2
    invoke-virtual {p0, v1}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    const/16 v0, 0x20

    #@10
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@13
    move-result v0

    #@14
    :cond_0
    return v0
.end method

.method public isDeclaredInManifest()Z
    .locals 1

    #@0
    .prologue
    .line 1351
    const/16 v0, 0x20

    #@2
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDynamic()Z
    .locals 1

    #@0
    .prologue
    .line 1333
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1393
    const/16 v0, 0x40

    #@2
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public isFloating()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1365
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    :cond_0
    :goto_0
    return v0

    #@14
    :cond_1
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method public isImmutable()Z
    .locals 1

    #@0
    .prologue
    .line 1385
    const/16 v0, 0x100

    #@2
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isManifestShortcut()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1357
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isOriginallyFromManifest()Z
    .locals 1

    #@0
    .prologue
    .line 1370
    const/16 v0, 0x100

    #@2
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPinned()Z
    .locals 1

    #@0
    .prologue
    .line 1338
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isRankChanged()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1273
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    #@3
    const/high16 v2, -0x80000000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public lookupAndFillInResourceIds(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 576
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@7
    if-nez v0, :cond_0

    #@9
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 577
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@f
    if-nez v0, :cond_0

    #@11
    .line 578
    return-void

    #@12
    .line 581
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@14
    const-string/jumbo v1, "string"

    #@17
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@19
    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@1f
    .line 582
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@21
    const-string/jumbo v1, "string"

    #@24
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@26
    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@2c
    .line 583
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@2e
    const-string/jumbo v1, "string"

    #@31
    .line 584
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@33
    .line 583
    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@39
    .line 587
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@3b
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@3d
    invoke-static {p1, v0, v3, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@40
    move-result v0

    #@41
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@43
    .line 575
    return-void
.end method

.method public lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 552
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@3
    if-nez v0, :cond_0

    #@5
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@7
    if-nez v0, :cond_0

    #@9
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@b
    if-nez v0, :cond_0

    #@d
    .line 553
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@f
    if-nez v0, :cond_0

    #@11
    .line 554
    return-void

    #@12
    .line 558
    :cond_0
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@14
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@16
    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@1c
    .line 559
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@1e
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@20
    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@26
    .line 560
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@28
    .line 561
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@2a
    .line 560
    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@30
    .line 564
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@32
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@34
    const/4 v2, 0x1

    #@35
    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@3b
    .line 551
    return-void
.end method

.method public replaceFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1313
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2
    .line 1312
    return-void
.end method

.method public resolveResourceStrings(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 400
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2
    or-int/lit16 v0, v0, 0x80

    #@4
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@6
    .line 402
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@8
    if-nez v0, :cond_0

    #@a
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@c
    if-nez v0, :cond_0

    #@e
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@10
    if-nez v0, :cond_0

    #@12
    .line 403
    return-void

    #@13
    .line 406
    :cond_0
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 407
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@19
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@1b
    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@21
    .line 409
    :cond_1
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 410
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@27
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@29
    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@2f
    .line 412
    :cond_2
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 413
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@35
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@37
    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@3d
    .line 399
    :cond_3
    return-void
.end method

.method public setActivity(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1065
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@2
    .line 1064
    return-void
.end method

.method public setBitmapPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitmapPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1504
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@2
    .line 1503
    return-void
.end method

.method public setCategories(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1594
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@6
    .line 1593
    return-void
.end method

.method public setDisabledMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "disabledMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1518
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@2
    .line 1519
    const/4 v0, 0x0

    #@3
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@5
    .line 1520
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@8
    .line 1517
    return-void
.end method

.method public setDisabledMessageResId(I)V
    .locals 2
    .param p1, "disabledMessageResId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1509
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 1510
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@7
    .line 1512
    :cond_0
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@9
    .line 1513
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@b
    .line 1508
    return-void
.end method

.method public setDisabledMessageResName(Ljava/lang/String;)V
    .locals 0
    .param p1, "disabledMessageResName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1550
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@2
    .line 1549
    return-void
.end method

.method public setIconResName(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconResName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1560
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@2
    .line 1559
    return-void
.end method

.method public setIconResourceId(I)V
    .locals 1
    .param p1, "iconResourceId"    # I

    #@0
    .prologue
    .line 1483
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1484
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@7
    .line 1486
    :cond_0
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@9
    .line 1482
    return-void
.end method

.method public setImplicitRank(I)V
    .locals 2
    .param p1, "rank"    # I

    #@0
    .prologue
    .line 1258
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    and-int/2addr v0, v1

    #@5
    const v1, 0x7fffffff

    #@8
    and-int/2addr v1, p1

    #@9
    or-int/2addr v0, v1

    #@a
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    #@c
    .line 1256
    return-void
.end method

.method public setIntents([Landroid/content/Intent;)V
    .locals 2
    .param p1, "intents"    # [Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1571
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 1572
    array-length v1, p1

    #@5
    if-lez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    #@b
    .line 1574
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@11
    .line 1575
    invoke-direct {p0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    #@14
    .line 1570
    return-void
.end method

.method public setRank(I)V
    .locals 0
    .param p1, "rank"    # I

    #@0
    .prologue
    .line 1247
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@2
    .line 1246
    return-void
.end method

.method public setRankChanged()V
    .locals 2

    #@0
    .prologue
    .line 1268
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    or-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    #@7
    .line 1267
    return-void
.end method

.method public setTextResName(Ljava/lang/String;)V
    .locals 0
    .param p1, "textResName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1540
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@2
    .line 1539
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 1473
    iput-wide p1, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@2
    .line 1472
    return-void
.end method

.method public setTitleResName(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleResName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1530
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@2
    .line 1529
    return-void
.end method

.method public toInsecureString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1712
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, v0, v1}, Landroid/content/pm/ShortcutInfo;->toStringInner(ZZ)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1707
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Landroid/content/pm/ShortcutInfo;->toStringInner(ZZ)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public updateTimestamp()V
    .locals 2

    #@0
    .prologue
    .line 1467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@6
    .line 1466
    return-void
.end method

.method public usesQuota()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1403
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/16 v0, 0x20

    #@9
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@c
    move-result v0

    #@d
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1643
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1644
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 1645
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 1646
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    #@12
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@15
    .line 1647
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@17
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1648
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    #@1c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1649
    iget-wide v2, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@21
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@24
    .line 1651
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_0

    #@2a
    .line 1652
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 1653
    return-void

    #@2e
    .line 1655
    :cond_0
    const/4 v2, 0x1

    #@2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 1657
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@34
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@37
    .line 1658
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    #@39
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@3c
    .line 1659
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    #@3e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 1660
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    #@43
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@46
    .line 1661
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    #@48
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 1662
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    #@4d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@50
    .line 1663
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    #@52
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 1665
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    #@57
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@5a
    .line 1666
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    #@5c
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@5f
    .line 1667
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    #@61
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 1668
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@66
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@69
    .line 1669
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@6b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6e
    .line 1671
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    #@70
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@73
    .line 1672
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    #@75
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@78
    .line 1673
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    #@7a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7d
    .line 1674
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    #@7f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@82
    .line 1676
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@84
    if-eqz v2, :cond_1

    #@86
    .line 1677
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@88
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@8b
    move-result v0

    #@8c
    .line 1678
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8f
    .line 1679
    const/4 v1, 0x0

    #@90
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@92
    .line 1680
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@94
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@97
    move-result-object v2

    #@98
    check-cast v2, Ljava/lang/String;

    #@9a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9d
    .line 1679
    add-int/lit8 v1, v1, 0x1

    #@9f
    goto :goto_0

    #@a0
    .line 1683
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a3
    .line 1642
    :cond_2
    return-void
.end method
