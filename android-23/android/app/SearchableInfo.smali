.class public final Landroid/app/SearchableInfo;
.super Ljava/lang/Object;
.source "SearchableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchableInfo$ActionKeyInfo;,
        Landroid/app/SearchableInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SearchableInfo"

.field private static final MD_LABEL_SEARCHABLE:Ljava/lang/String; = "android.app.searchable"

.field private static final MD_XML_ELEMENT_SEARCHABLE:Ljava/lang/String; = "searchable"

.field private static final MD_XML_ELEMENT_SEARCHABLE_ACTION_KEY:Ljava/lang/String; = "actionkey"

.field private static final SEARCH_MODE_BADGE_ICON:I = 0x8

.field private static final SEARCH_MODE_BADGE_LABEL:I = 0x4

.field private static final SEARCH_MODE_QUERY_REWRITE_FROM_DATA:I = 0x10

.field private static final SEARCH_MODE_QUERY_REWRITE_FROM_TEXT:I = 0x20

.field private static final VOICE_SEARCH_LAUNCH_RECOGNIZER:I = 0x4

.field private static final VOICE_SEARCH_LAUNCH_WEB_SEARCH:I = 0x2

.field private static final VOICE_SEARCH_SHOW_BUTTON:I = 0x1


# instance fields
.field private mActionKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/SearchableInfo$ActionKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoUrlDetect:Z

.field private final mHintId:I

.field private final mIconId:I

.field private final mIncludeInGlobalSearch:Z

.field private final mLabelId:I

.field private final mQueryAfterZeroResults:Z

.field private final mSearchActivity:Landroid/content/ComponentName;

.field private final mSearchButtonText:I

.field private final mSearchImeOptions:I

.field private final mSearchInputType:I

.field private final mSearchMode:I

.field private final mSettingsDescriptionId:I

.field private final mSuggestAuthority:Ljava/lang/String;

.field private final mSuggestIntentAction:Ljava/lang/String;

.field private final mSuggestIntentData:Ljava/lang/String;

.field private final mSuggestPath:Ljava/lang/String;

.field private final mSuggestProviderPackage:Ljava/lang/String;

.field private final mSuggestSelection:Ljava/lang/String;

.field private final mSuggestThreshold:I

.field private final mVoiceLanguageId:I

.field private final mVoiceLanguageModeId:I

.field private final mVoiceMaxResults:I

.field private final mVoicePromptTextId:I

.field private final mVoiceSearchMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 793
    new-instance v0, Landroid/app/SearchableInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/SearchableInfo$1;-><init>()V

    #@5
    .line 792
    sput-object v0, Landroid/app/SearchableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "cName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 94
    iput-object v4, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    #@9
    .line 311
    iput-object p3, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    #@b
    .line 314
    sget-object v4, Lcom/android/internal/R$styleable;->Searchable:[I

    #@d
    .line 313
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 315
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    #@12
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@15
    move-result v4

    #@16
    iput v4, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    #@18
    .line 316
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1b
    move-result v4

    #@1c
    iput v4, p0, Landroid/app/SearchableInfo;->mLabelId:I

    #@1e
    .line 317
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@21
    move-result v4

    #@22
    iput v4, p0, Landroid/app/SearchableInfo;->mHintId:I

    #@24
    .line 318
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@27
    move-result v4

    #@28
    iput v4, p0, Landroid/app/SearchableInfo;->mIconId:I

    #@2a
    .line 320
    const/16 v4, 0x9

    #@2c
    .line 319
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2f
    move-result v4

    #@30
    iput v4, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    #@32
    .line 321
    const/16 v4, 0xa

    #@34
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@37
    move-result v4

    #@38
    iput v4, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    #@3a
    .line 324
    const/16 v4, 0x10

    #@3c
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3f
    move-result v4

    #@40
    iput v4, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    #@42
    .line 327
    const/16 v4, 0x12

    #@44
    .line 326
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@47
    move-result v4

    #@48
    iput-boolean v4, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    #@4a
    .line 329
    const/16 v4, 0x13

    #@4c
    .line 328
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4f
    move-result v4

    #@50
    iput-boolean v4, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    #@52
    .line 331
    const/16 v4, 0x15

    #@54
    .line 330
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@57
    move-result v4

    #@58
    iput-boolean v4, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    #@5a
    .line 334
    const/16 v4, 0x14

    #@5c
    .line 333
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@5f
    move-result v4

    #@60
    iput v4, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    #@62
    .line 336
    const/4 v4, 0x4

    #@63
    .line 335
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    #@69
    .line 338
    const/4 v4, 0x5

    #@6a
    .line 337
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    #@70
    .line 340
    const/4 v4, 0x6

    #@71
    .line 339
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    #@77
    .line 342
    const/4 v4, 0x7

    #@78
    .line 341
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@7b
    move-result-object v4

    #@7c
    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    #@7e
    .line 344
    const/16 v4, 0x8

    #@80
    .line 343
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    #@86
    .line 346
    const/16 v4, 0x11

    #@88
    .line 345
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@8b
    move-result v4

    #@8c
    iput v4, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    #@8e
    .line 349
    const/16 v4, 0xb

    #@90
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@93
    move-result v4

    #@94
    .line 348
    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    #@96
    .line 352
    const/16 v4, 0xc

    #@98
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@9b
    move-result v4

    #@9c
    .line 351
    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    #@9e
    .line 354
    const/16 v4, 0xd

    #@a0
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@a3
    move-result v4

    #@a4
    .line 353
    iput v4, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    #@a6
    .line 356
    const/16 v4, 0xe

    #@a8
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@ab
    move-result v4

    #@ac
    .line 355
    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    #@ae
    .line 358
    const/16 v4, 0xf

    #@b0
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b3
    move-result v4

    #@b4
    .line 357
    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    #@b6
    .line 360
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@b9
    .line 363
    const/4 v3, 0x0

    #@ba
    .line 364
    .local v3, "suggestProviderPackage":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    #@bc
    if-eqz v4, :cond_0

    #@be
    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c1
    move-result-object v2

    #@c2
    .line 366
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    #@c4
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    #@c7
    move-result-object v1

    #@c8
    .line 367
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_0

    #@ca
    .line 368
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@cc
    .line 371
    .end local v1    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "suggestProviderPackage":Ljava/lang/String;
    :cond_0
    iput-object v3, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    #@ce
    .line 374
    iget v4, p0, Landroid/app/SearchableInfo;->mLabelId:I

    #@d0
    if-nez v4, :cond_1

    #@d2
    .line 375
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@d4
    const-string/jumbo v5, "Search label must be a resource reference."

    #@d7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@da
    throw v4

    #@db
    .line 310
    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 94
    iput-object v4, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    #@8
    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v1

    #@c
    iput v1, p0, Landroid/app/SearchableInfo;->mLabelId:I

    #@e
    .line 812
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    #@14
    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v1

    #@18
    iput v1, p0, Landroid/app/SearchableInfo;->mHintId:I

    #@1a
    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    iput v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    #@20
    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v1

    #@24
    iput v1, p0, Landroid/app/SearchableInfo;->mIconId:I

    #@26
    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v1

    #@2a
    iput v1, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    #@2c
    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v1

    #@30
    iput v1, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    #@32
    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v1

    #@36
    iput v1, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    #@38
    .line 819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_0

    #@3e
    move v1, v2

    #@3f
    :goto_0
    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    #@41
    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_1

    #@47
    move v1, v2

    #@48
    :goto_1
    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    #@4a
    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_2

    #@50
    :goto_2
    iput-boolean v2, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    #@52
    .line 823
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v1

    #@56
    iput v1, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    #@58
    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    #@5e
    .line 825
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    #@64
    .line 826
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    #@6a
    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    #@70
    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    #@76
    .line 829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v1

    #@7a
    iput v1, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    #@7c
    .line 831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v0

    #@80
    .local v0, "count":I
    :goto_3
    if-lez v0, :cond_3

    #@82
    .line 832
    new-instance v1, Landroid/app/SearchableInfo$ActionKeyInfo;

    #@84
    invoke-direct {v1, p1, v4}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/os/Parcel;Landroid/app/SearchableInfo$ActionKeyInfo;)V

    #@87
    invoke-direct {p0, v1}, Landroid/app/SearchableInfo;->addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V

    #@8a
    .line 831
    add-int/lit8 v0, v0, -0x1

    #@8c
    goto :goto_3

    #@8d
    .end local v0    # "count":I
    :cond_0
    move v1, v3

    #@8e
    .line 819
    goto :goto_0

    #@8f
    :cond_1
    move v1, v3

    #@90
    .line 820
    goto :goto_1

    #@91
    :cond_2
    move v2, v3

    #@92
    .line 821
    goto :goto_2

    #@93
    .line 835
    .restart local v0    # "count":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@96
    move-result-object v1

    #@97
    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    #@99
    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v1

    #@9d
    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    #@9f
    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a2
    move-result v1

    #@a3
    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    #@a5
    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a8
    move-result v1

    #@a9
    iput v1, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    #@ab
    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ae
    move-result v1

    #@af
    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    #@b1
    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b4
    move-result v1

    #@b5
    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    #@b7
    .line 810
    return-void
.end method

.method private addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V
    .locals 2
    .param p1, "keyInfo"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 501
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    #@b
    .line 503
    :cond_0
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    #@d
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getKeyCode()I

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 499
    return-void
.end method

.method private static createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 260
    const/4 v2, 0x0

    #@1
    .line 262
    .local v2, "theirContext":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    const/4 v4, 0x0

    #@6
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v2

    #@a
    .line 269
    .end local v2    # "theirContext":Landroid/content/Context;
    :goto_0
    return-object v2

    #@b
    .line 265
    .restart local v2    # "theirContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    #@c
    .line 266
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "SearchableInfo"

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "Can\'t make context for "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0

    #@2b
    .line 263
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    #@2c
    .line 264
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "SearchableInfo"

    #@2f
    new-instance v4, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v5, "Package not found "

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_0
.end method

.method public static getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 518
    const/4 v3, 0x0

    #@2
    .line 520
    .local v3, "userContext":Landroid/content/Context;
    :try_start_0
    const-string/jumbo v5, "system"

    #@5
    .line 521
    new-instance v6, Landroid/os/UserHandle;

    #@7
    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@a
    .line 520
    const/4 v7, 0x0

    #@b
    invoke-virtual {p0, v5, v7, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v3

    #@f
    .line 528
    .local v3, "userContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@12
    move-result-object v5

    #@13
    const-string/jumbo v6, "android.app.searchable"

    #@16
    invoke-virtual {p1, v5, v6}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@19
    move-result-object v4

    #@1a
    .line 529
    .local v4, "xml":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_0

    #@1c
    .line 530
    return-object v8

    #@1d
    .line 522
    .end local v4    # "xml":Landroid/content/res/XmlResourceParser;
    .local v3, "userContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    #@1e
    .line 523
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "SearchableInfo"

    #@21
    new-instance v6, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v7, "Couldn\'t create package context for user "

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 524
    return-object v8

    #@39
    .line 532
    .end local v1    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v3, "userContext":Landroid/content/Context;
    .restart local v4    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    #@3b
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@3d
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3f
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 534
    .local v0, "cName":Landroid/content/ComponentName;
    invoke-static {v3, v4, v0}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    #@45
    move-result-object v2

    #@46
    .line 535
    .local v2, "searchable":Landroid/app/SearchableInfo;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@49
    .line 551
    return-object v2
.end method

.method private static getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "cName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 565
    const/4 v5, 0x0

    #@2
    .line 566
    .local v5, "result":Landroid/app/SearchableInfo;
    invoke-static {p0, p2}, Landroid/app/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 567
    .local v0, "activityContext":Landroid/content/Context;
    if-nez v0, :cond_0

    #@8
    return-object v11

    #@9
    .line 572
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    #@c
    move-result v7

    #@d
    .local v7, "tagType":I
    move-object v6, v5

    #@e
    .line 573
    .end local v5    # "result":Landroid/app/SearchableInfo;
    .local v6, "result":Landroid/app/SearchableInfo;
    :goto_0
    const/4 v8, 0x1

    #@f
    if-eq v7, v8, :cond_4

    #@11
    .line 574
    const/4 v8, 0x2

    #@12
    if-ne v7, v8, :cond_3

    #@14
    .line 575
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    const-string/jumbo v9, "searchable"

    #@1b
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_1

    #@21
    .line 576
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    #@24
    move-result-object v1

    #@25
    .line 577
    .local v1, "attr":Landroid/util/AttributeSet;
    if-eqz v1, :cond_3

    #@27
    .line 579
    :try_start_2
    new-instance v5, Landroid/app/SearchableInfo;

    #@29
    invoke-direct {v5, v0, v1, p2}, Landroid/app/SearchableInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    #@2c
    .line 603
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v6    # "result":Landroid/app/SearchableInfo;
    .local v5, "result":Landroid/app/SearchableInfo;
    :goto_1
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@2f
    move-result v7

    #@30
    move-object v6, v5

    #@31
    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v6    # "result":Landroid/app/SearchableInfo;
    goto :goto_0

    #@32
    .line 580
    .restart local v1    # "attr":Landroid/util/AttributeSet;
    :catch_0
    move-exception v4

    #@33
    .line 581
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string/jumbo v8, "SearchableInfo"

    #@36
    new-instance v9, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v10, "Invalid searchable metadata for "

    #@3e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v9

    #@42
    .line 582
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@45
    move-result-object v10

    #@46
    .line 581
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v9

    #@4a
    .line 582
    const-string/jumbo v10, ": "

    #@4d
    .line 581
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    .line 582
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@54
    move-result-object v10

    #@55
    .line 581
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 583
    return-object v11

    #@61
    .line 586
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    const-string/jumbo v9, "actionkey"

    #@68
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v8

    #@6c
    if-eqz v8, :cond_3

    #@6e
    .line 587
    if-nez v6, :cond_2

    #@70
    .line 589
    return-object v11

    #@71
    .line 591
    :cond_2
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    #@74
    move-result-object v1

    #@75
    .line 592
    .restart local v1    # "attr":Landroid/util/AttributeSet;
    if-eqz v1, :cond_3

    #@77
    .line 594
    :try_start_5
    new-instance v8, Landroid/app/SearchableInfo$ActionKeyInfo;

    #@79
    invoke-direct {v8, v0, v1}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@7c
    invoke-direct {v6, v8}, Landroid/app/SearchableInfo;->addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    #@7f
    .end local v1    # "attr":Landroid/util/AttributeSet;
    :cond_3
    move-object v5, v6

    #@80
    .end local v6    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    goto :goto_1

    #@81
    .line 595
    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v1    # "attr":Landroid/util/AttributeSet;
    .restart local v6    # "result":Landroid/app/SearchableInfo;
    :catch_1
    move-exception v4

    #@82
    .line 596
    .restart local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string/jumbo v8, "SearchableInfo"

    #@85
    new-instance v9, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v10, "Invalid action key for "

    #@8d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    .line 597
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@94
    move-result-object v10

    #@95
    .line 596
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v9

    #@99
    .line 597
    const-string/jumbo v10, ": "

    #@9c
    .line 596
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v9

    #@a0
    .line 597
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@a3
    move-result-object v10

    #@a4
    .line 596
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v9

    #@a8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v9

    #@ac
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    #@af
    .line 598
    return-object v11

    #@b0
    .line 608
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v6    # "result":Landroid/app/SearchableInfo;
    .end local v7    # "tagType":I
    :catch_2
    move-exception v2

    #@b1
    .line 609
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    const-string/jumbo v8, "SearchableInfo"

    #@b4
    new-instance v9, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v10, "Reading searchable metadata for "

    #@bc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@c3
    move-result-object v10

    #@c4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v9

    #@c8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v9

    #@cc
    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@cf
    .line 610
    return-object v11

    #@d0
    .line 605
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    #@d1
    .line 606
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    const-string/jumbo v8, "SearchableInfo"

    #@d4
    new-instance v9, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v10, "Reading searchable metadata for "

    #@dc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v9

    #@e0
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@e3
    move-result-object v10

    #@e4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v9

    #@e8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v9

    #@ec
    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ef
    .line 607
    return-object v11

    #@f0
    .line 613
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "result":Landroid/app/SearchableInfo;
    .restart local v7    # "tagType":I
    :cond_4
    return-object v6

    #@f1
    .line 605
    :catch_4
    move-exception v3

    #@f2
    .restart local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v5, v6

    #@f3
    .end local v6    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    goto :goto_3

    #@f4
    .line 608
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v6    # "result":Landroid/app/SearchableInfo;
    :catch_5
    move-exception v2

    #@f5
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v5, v6

    #@f6
    .end local v6    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    goto :goto_2
.end method


# virtual methods
.method public autoUrlDetect()Z
    .locals 1

    #@0
    .prologue
    .line 786
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    #@2
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 845
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;
    .locals 2
    .param p1, "keyCode"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 493
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 494
    return-object v1

    #@6
    .line 496
    :cond_0
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/app/SearchableInfo$ActionKeyInfo;

    #@12
    return-object v0
.end method

.method public getActivityContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    #@2
    invoke-static {p1, v0}, Landroid/app/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHintId()I
    .locals 1

    #@0
    .prologue
    .line 637
    iget v0, p0, Landroid/app/SearchableInfo;->mHintId:I

    #@2
    return v0
.end method

.method public getIconId()I
    .locals 1

    #@0
    .prologue
    .line 650
    iget v0, p0, Landroid/app/SearchableInfo;->mIconId:I

    #@2
    return v0
.end method

.method public getImeOptions()I
    .locals 1

    #@0
    .prologue
    .line 756
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    #@2
    return v0
.end method

.method public getInputType()I
    .locals 1

    #@0
    .prologue
    .line 744
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    #@2
    return v0
.end method

.method public getLabelId()I
    .locals 1

    #@0
    .prologue
    .line 626
    iget v0, p0, Landroid/app/SearchableInfo;->mLabelId:I

    #@2
    return v0
.end method

.method public getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityContext"    # Landroid/content/Context;

    #@0
    .prologue
    .line 282
    const/4 v2, 0x0

    #@1
    .line 283
    .local v2, "theirContext":Landroid/content/Context;
    iget-object v3, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    #@3
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    iget-object v4, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 284
    return-object p2

    #@10
    .line 286
    :cond_0
    iget-object v3, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 288
    :try_start_0
    iget-object v3, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    #@16
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    #@1a
    move-result-object v2

    #@1b
    .line 295
    .end local v2    # "theirContext":Landroid/content/Context;
    :cond_1
    :goto_0
    return-object v2

    #@1c
    .line 289
    .restart local v2    # "theirContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    #@1d
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    #@1e
    .line 291
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    #@1f
    .local v1, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public getSearchActivity()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getSearchButtonText()I
    .locals 1

    #@0
    .prologue
    .line 732
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    #@2
    return v0
.end method

.method public getSettingsDescriptionId()I
    .locals 1

    #@0
    .prologue
    .line 181
    iget v0, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    #@2
    return v0
.end method

.method public getSuggestAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSuggestIntentAction()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSuggestIntentData()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSuggestPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSuggestPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSuggestSelection()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSuggestThreshold()I
    .locals 1

    #@0
    .prologue
    .line 242
    iget v0, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    #@2
    return v0
.end method

.method public getVoiceLanguageId()I
    .locals 1

    #@0
    .prologue
    .line 710
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    #@2
    return v0
.end method

.method public getVoiceLanguageModeId()I
    .locals 1

    #@0
    .prologue
    .line 688
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    #@2
    return v0
.end method

.method public getVoiceMaxResults()I
    .locals 1

    #@0
    .prologue
    .line 721
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    #@2
    return v0
.end method

.method public getVoicePromptTextId()I
    .locals 1

    #@0
    .prologue
    .line 699
    iget v0, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    #@2
    return v0
.end method

.method public getVoiceSearchEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 659
    iget v1, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getVoiceSearchLaunchRecognizer()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 677
    iget v1, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getVoiceSearchLaunchWebSearch()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 668
    iget v1, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    #@0
    .prologue
    .line 777
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    #@2
    return v0
.end method

.method public shouldIncludeInGlobalSearch()Z
    .locals 1

    #@0
    .prologue
    .line 767
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    #@2
    return v0
.end method

.method public shouldRewriteQueryFromData()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 162
    iget v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public shouldRewriteQueryFromText()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 171
    iget v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    #@3
    and-int/lit8 v1, v1, 0x20

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public useBadgeIcon()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 153
    iget v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Landroid/app/SearchableInfo;->mIconId:I

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public useBadgeLabel()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 142
    iget v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 849
    iget v2, p0, Landroid/app/SearchableInfo;->mLabelId:I

    #@4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 850
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    #@9
    invoke-virtual {v2, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@c
    .line 851
    iget v2, p0, Landroid/app/SearchableInfo;->mHintId:I

    #@e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 852
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    #@13
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 853
    iget v2, p0, Landroid/app/SearchableInfo;->mIconId:I

    #@18
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 854
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    #@1d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 855
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    #@22
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 856
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    #@27
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 857
    iget-boolean v2, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    #@2c
    if-eqz v2, :cond_1

    #@2e
    move v2, v3

    #@2f
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 858
    iget-boolean v2, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    #@34
    if-eqz v2, :cond_2

    #@36
    move v2, v3

    #@37
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 859
    iget-boolean v2, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    #@3c
    if-eqz v2, :cond_3

    #@3e
    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 861
    iget v2, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    #@43
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 862
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    #@48
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4b
    .line 863
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    #@4d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@50
    .line 864
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    #@52
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@55
    .line 865
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    #@57
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5a
    .line 866
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    #@5c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5f
    .line 867
    iget v2, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    #@61
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 869
    iget-object v2, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    #@66
    if-nez v2, :cond_4

    #@68
    .line 870
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 878
    :cond_0
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    #@6d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@70
    .line 880
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    #@72
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@75
    .line 881
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    #@77
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    .line 882
    iget v2, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    #@7c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@7f
    .line 883
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    #@81
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@84
    .line 884
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    #@86
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@89
    .line 848
    return-void

    #@8a
    :cond_1
    move v2, v4

    #@8b
    .line 857
    goto :goto_0

    #@8c
    :cond_2
    move v2, v4

    #@8d
    .line 858
    goto :goto_1

    #@8e
    :cond_3
    move v3, v4

    #@8f
    .line 859
    goto :goto_2

    #@90
    .line 872
    :cond_4
    iget-object v2, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    #@92
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    #@95
    move-result v2

    #@96
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@99
    .line 873
    iget-object v2, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    #@9b
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@9e
    move-result-object v2

    #@9f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a2
    move-result-object v1

    #@a3
    .local v1, "actionKey$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_0

    #@a9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ac
    move-result-object v0

    #@ad
    check-cast v0, Landroid/app/SearchableInfo$ActionKeyInfo;

    #@af
    .line 874
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    invoke-virtual {v0, p1, p2}, Landroid/app/SearchableInfo$ActionKeyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@b2
    goto :goto_3
.end method
