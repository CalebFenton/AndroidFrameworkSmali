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
.field public static final CLONE_REMOVE_FOR_CREATOR:I = 0x1

.field public static final CLONE_REMOVE_FOR_LAUNCHER:I = 0x3

.field private static final CLONE_REMOVE_ICON:I = 0x1

.field private static final CLONE_REMOVE_INTENT:I = 0x2

.field public static final CLONE_REMOVE_NON_KEY_INFO:I = 0x4

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

.field public static final FLAG_DYNAMIC:I = 0x1

.field public static final FLAG_HAS_ICON_FILE:I = 0x8

.field public static final FLAG_HAS_ICON_RES:I = 0x4

.field public static final FLAG_KEY_FIELDS_ONLY:I = 0x10

.field public static final FLAG_PINNED:I = 0x2

.field public static final SHORTCUT_CATEGORY_CONVERSATION:Ljava/lang/String; = "android.shortcut.conversation"


# instance fields
.field private mActivityComponent:Landroid/content/ComponentName;

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

.field private mExtras:Landroid/os/PersistableBundle;

.field private mFlags:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIconResourceId:I

.field private final mId:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIntentPersistableExtras:Landroid/os/PersistableBundle;

.field private mLastChangedTimestamp:J

.field private final mPackageName:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private final mUserId:I

.field private mWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 792
    new-instance v0, Landroid/content/pm/ShortcutInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/ShortcutInfo$1;-><init>()V

    #@5
    .line 791
    sput-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 56
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/content/Intent;Landroid/os/PersistableBundle;ILandroid/os/PersistableBundle;JIILjava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityComponent"    # Landroid/content/ComponentName;
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p9, "intent"    # Landroid/content/Intent;
    .param p10, "intentPersistableExtras"    # Landroid/os/PersistableBundle;
    .param p11, "weight"    # I
    .param p12, "extras"    # Landroid/os/PersistableBundle;
    .param p13, "lastChangedTimestamp"    # J
    .param p15, "flags"    # I
    .param p16, "iconResId"    # I
    .param p17, "bitmapPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/os/PersistableBundle;",
            "I",
            "Landroid/os/PersistableBundle;",
            "JII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 883
    .local p8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 889
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@5
    .line 890
    iput-object p2, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@7
    .line 891
    iput-object p3, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@9
    .line 892
    iput-object p4, p0, Landroid/content/pm/ShortcutInfo;->mActivityComponent:Landroid/content/ComponentName;

    #@b
    .line 893
    iput-object p5, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@d
    .line 894
    iput-object p6, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@f
    .line 895
    iput-object p7, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/String;

    #@11
    .line 896
    invoke-direct {p0, p8}, Landroid/content/pm/ShortcutInfo;->clone(Ljava/util/Set;)Landroid/util/ArraySet;

    #@14
    move-result-object v2

    #@15
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@17
    .line 897
    iput-object p9, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@19
    .line 898
    iput-object p10, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@1b
    .line 899
    move/from16 v0, p11

    #@1d
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mWeight:I

    #@1f
    .line 900
    move-object/from16 v0, p12

    #@21
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@23
    .line 901
    move-wide/from16 v0, p13

    #@25
    iput-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@27
    .line 902
    move/from16 v0, p15

    #@29
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2b
    .line 903
    move/from16 v0, p16

    #@2d
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResourceId:I

    #@2f
    .line 904
    move-object/from16 v0, p17

    #@31
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@33
    .line 888
    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ShortcutInfo$Builder;)V
    .locals 4
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo$Builder;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 171
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get2(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    #@b
    move-result v1

    #@c
    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@e
    .line 173
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get5(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v3, "Shortcut ID must be provided"

    #@15
    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/lang/String;

    #@1b
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@1d
    .line 177
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get2(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@27
    .line 178
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get0(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/ComponentName;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mActivityComponent:Landroid/content/ComponentName;

    #@2d
    .line 179
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get4(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/graphics/drawable/Icon;

    #@30
    move-result-object v1

    #@31
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@33
    .line 180
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get8(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@39
    .line 181
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get7(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/String;

    #@3f
    .line 182
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get1(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Set;

    #@42
    move-result-object v1

    #@43
    invoke-direct {p0, v1}, Landroid/content/pm/ShortcutInfo;->clone(Ljava/util/Set;)Landroid/util/ArraySet;

    #@46
    move-result-object v1

    #@47
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@49
    .line 183
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get6(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Intent;

    #@4c
    move-result-object v1

    #@4d
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@4f
    .line 184
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@51
    if-eqz v1, :cond_0

    #@53
    .line 185
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@55
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@58
    move-result-object v0

    #@59
    .line 186
    .local v0, "intentExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@5b
    .line 187
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@5d
    move-object v1, v2

    #@5e
    nop

    #@5f
    nop

    #@60
    invoke-virtual {v3, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@63
    .line 188
    new-instance v1, Landroid/os/PersistableBundle;

    #@65
    invoke-direct {v1, v0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    #@68
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@6a
    .line 191
    .end local v0    # "intentExtras":Landroid/os/Bundle;
    :cond_0
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get9(Landroid/content/pm/ShortcutInfo$Builder;)I

    #@6d
    move-result v1

    #@6e
    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mWeight:I

    #@70
    .line 192
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-get3(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/os/PersistableBundle;

    #@73
    move-result-object v1

    #@74
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@76
    .line 193
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->updateTimestamp()V

    #@79
    .line 170
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
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 215
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@5
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@7
    .line 216
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@b
    .line 217
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@d
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@f
    .line 218
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@11
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@13
    .line 219
    iget-wide v0, p1, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@15
    iput-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@17
    .line 222
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mIconResourceId:I

    #@19
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResourceId:I

    #@1b
    .line 224
    and-int/lit8 v0, p2, 0x4

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 225
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivityComponent:Landroid/content/ComponentName;

    #@21
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivityComponent:Landroid/content/ComponentName;

    #@23
    .line 227
    and-int/lit8 v0, p2, 0x1

    #@25
    if-nez v0, :cond_0

    #@27
    .line 228
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@29
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@2b
    .line 229
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@2d
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@2f
    .line 232
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@31
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@33
    .line 233
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/String;

    #@35
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/String;

    #@37
    .line 234
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@39
    invoke-direct {p0, v0}, Landroid/content/pm/ShortcutInfo;->clone(Ljava/util/Set;)Landroid/util/ArraySet;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@3f
    .line 235
    and-int/lit8 v0, p2, 0x2

    #@41
    if-nez v0, :cond_1

    #@43
    .line 236
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@45
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@47
    .line 237
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@49
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@4b
    .line 239
    :cond_1
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mWeight:I

    #@4d
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mWeight:I

    #@4f
    .line 240
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@51
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@53
    .line 214
    :goto_0
    return-void

    #@54
    .line 243
    :cond_2
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@56
    or-int/lit8 v0, v0, 0x10

    #@58
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@5a
    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 732
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v1

    #@b
    .line 734
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v3

    #@f
    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@11
    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@17
    .line 736
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@1d
    .line 737
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/content/ComponentName;

    #@23
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mActivityComponent:Landroid/content/ComponentName;

    #@25
    .line 738
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/graphics/drawable/Icon;

    #@2b
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@2d
    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@33
    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/String;

    #@39
    .line 741
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Landroid/content/Intent;

    #@3f
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@41
    .line 742
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@44
    move-result-object v3

    #@45
    check-cast v3, Landroid/os/PersistableBundle;

    #@47
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@49
    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v3

    #@4d
    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mWeight:I

    #@4f
    .line 744
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@52
    move-result-object v3

    #@53
    check-cast v3, Landroid/os/PersistableBundle;

    #@55
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@57
    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@5a
    move-result-wide v4

    #@5b
    iput-wide v4, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@5d
    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v3

    #@61
    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@63
    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v3

    #@67
    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mIconResourceId:I

    #@69
    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@6f
    .line 750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v0

    #@73
    .line 751
    .local v0, "N":I
    if-nez v0, :cond_1

    #@75
    .line 752
    const/4 v3, 0x0

    #@76
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@78
    .line 731
    :cond_0
    return-void

    #@79
    .line 754
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    #@7b
    invoke-direct {v3, v0}, Landroid/util/ArraySet;-><init>(I)V

    #@7e
    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@80
    .line 755
    const/4 v2, 0x0

    #@81
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@83
    .line 756
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@8c
    move-result-object v4

    #@8d
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@90
    .line 755
    add-int/lit8 v2, v2, 0x1

    #@92
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

.method private clone(Ljava/util/Set;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "source":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 197
    if-nez p1, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    #@6
    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@9
    goto :goto_0
.end method

.method public static getInvalidIconException()Ljava/lang/IllegalArgumentException;
    .locals 2

    #@0
    .prologue
    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "Unsupported icon type: only bitmap, resource and content URI are supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method private toStringInner(ZZ)Ljava/lang/String;
    .locals 4
    .param p1, "secure"    # Z
    .param p2, "includeInternalData"    # Z

    #@0
    .prologue
    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 821
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ShortcutInfo {"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 823
    const-string/jumbo v1, "id="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 824
    if-eqz p1, :cond_3

    #@13
    const-string/jumbo v1, "***"

    #@16
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 826
    const-string/jumbo v1, ", packageName="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 827
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 829
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 830
    const-string/jumbo v1, ", dynamic"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 832
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_1

    #@36
    .line 833
    const-string/jumbo v1, ", pinned"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 836
    :cond_1
    const-string/jumbo v1, ", activity="

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 837
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mActivityComponent:Landroid/content/ComponentName;

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    .line 839
    const-string/jumbo v1, ", title="

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 840
    if-eqz p1, :cond_4

    #@4f
    const-string/jumbo v1, "***"

    #@52
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 842
    const-string/jumbo v1, ", text="

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 843
    if-eqz p1, :cond_5

    #@5d
    const-string/jumbo v1, "***"

    #@60
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 845
    const-string/jumbo v1, ", categories="

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 846
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    .line 848
    const-string/jumbo v1, ", icon="

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 849
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    .line 851
    const-string/jumbo v1, ", weight="

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 852
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mWeight:I

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    .line 854
    const-string/jumbo v1, ", timestamp="

    #@87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    .line 855
    iget-wide v2, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@8c
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8f
    .line 857
    const-string/jumbo v1, ", intent="

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    .line 858
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    .line 860
    const-string/jumbo v1, ", intentExtras="

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    .line 861
    if-eqz p1, :cond_6

    #@a2
    const-string/jumbo v1, "***"

    #@a5
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    .line 863
    const-string/jumbo v1, ", extras="

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 864
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b3
    .line 866
    const-string/jumbo v1, ", flags="

    #@b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    .line 867
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    .line 869
    if-eqz p2, :cond_2

    #@c0
    .line 871
    const-string/jumbo v1, ", iconRes="

    #@c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    .line 872
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResourceId:I

    #@c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb
    .line 874
    const-string/jumbo v1, ", bitmapPath="

    #@ce
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    .line 875
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    .line 878
    :cond_2
    const-string/jumbo v1, "}"

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    .line 879
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v1

    #@e0
    return-object v1

    #@e1
    .line 824
    :cond_3
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@e3
    goto/16 :goto_0

    #@e5
    .line 840
    :cond_4
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@e7
    goto/16 :goto_1

    #@e9
    .line 843
    :cond_5
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/String;

    #@eb
    goto/16 :goto_2

    #@ed
    .line 861
    :cond_6
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@ef
    goto :goto_3
.end method

.method public static validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 310
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    #@a
    move-result-object v0

    #@b
    throw v0

    #@c
    .line 312
    :pswitch_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->hasTint()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Icons with tints are not supported"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 317
    :cond_0
    return-object p0

    #@1c
    .line 305
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
    .line 635
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@5
    .line 634
    return-void
.end method

.method public clearFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 640
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@6
    .line 639
    return-void
.end method

.method public clearIcon()V
    .locals 1

    #@0
    .prologue
    .line 706
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@3
    .line 705
    return-void
.end method

.method public clone(I)Landroid/content/pm/ShortcutInfo;
    .locals 1
    .param p1, "cloneFlags"    # I

    #@0
    .prologue
    .line 252
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
    const/4 v0, 0x0

    #@1
    .line 266
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@3
    iget v2, p1, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@5
    if-ne v1, v2, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    const-string/jumbo v1, "Owner User ID must match"

    #@b
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@e
    .line 267
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@10
    iget-object v1, p1, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    const-string/jumbo v1, "ID must match"

    #@19
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@1c
    .line 268
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@1e
    iget-object v1, p1, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    .line 269
    const-string/jumbo v1, "Package name must match"

    #@27
    .line 268
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@2a
    .line 271
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivityComponent:Landroid/content/ComponentName;

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 272
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivityComponent:Landroid/content/ComponentName;

    #@30
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivityComponent:Landroid/content/ComponentName;

    #@32
    .line 275
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@34
    if-eqz v0, :cond_2

    #@36
    .line 276
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@38
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@3a
    .line 278
    :cond_2
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@3c
    if-eqz v0, :cond_3

    #@3e
    .line 279
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@40
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@42
    .line 281
    :cond_3
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/String;

    #@44
    if-eqz v0, :cond_4

    #@46
    .line 282
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/String;

    #@48
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/String;

    #@4a
    .line 284
    :cond_4
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@4c
    if-eqz v0, :cond_5

    #@4e
    .line 285
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@50
    invoke-direct {p0, v0}, Landroid/content/pm/ShortcutInfo;->clone(Ljava/util/Set;)Landroid/util/ArraySet;

    #@53
    move-result-object v0

    #@54
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@56
    .line 287
    :cond_5
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@58
    if-eqz v0, :cond_6

    #@5a
    .line 288
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@5c
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@5e
    .line 289
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@60
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@62
    .line 291
    :cond_6
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mWeight:I

    #@64
    if-eqz v0, :cond_7

    #@66
    .line 292
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mWeight:I

    #@68
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mWeight:I

    #@6a
    .line 294
    :cond_7
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@6c
    if-eqz v0, :cond_8

    #@6e
    .line 295
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@70
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@72
    .line 298
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->updateTimestamp()V

    #@75
    .line 265
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 803
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public enforceMandatoryFields()V
    .locals 2

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "Shortcut ID must be provided"

    #@5
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@8
    .line 207
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@a
    const-string/jumbo v1, "Shortcut title must be provided"

    #@d
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@10
    .line 208
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@12
    const-string/jumbo v1, "Shortcut Intent must be provided"

    #@15
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 205
    return-void
.end method

.method public getActivityComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 503
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivityComponent:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getBitmapPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 723
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
    .line 544
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 625
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    #@0
    .prologue
    .line 718
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResourceId:I

    #@2
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 559
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 560
    return-object v1

    #@6
    .line 562
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@8
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@a
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@d
    .line 564
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@f
    if-eqz v2, :cond_1

    #@11
    new-instance v1, Landroid/os/Bundle;

    #@13
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@15
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    #@18
    .line 563
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@1b
    .line 565
    return-object v0
.end method

.method public getIntentNoExtras()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 574
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getIntentPersistableExtras()Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 584
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method public getLastChangedTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 619
    iget-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@2
    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 612
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
    .line 605
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@2
    return v0
.end method

.method public getWeight()I
    .locals 1

    #@0
    .prologue
    .line 592
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mWeight:I

    #@2
    return v0
.end method

.method public hasFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 645
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
    .line 673
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
    .line 664
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
    .line 690
    const/16 v0, 0x10

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
    .line 650
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isPinned()Z
    .locals 1

    #@0
    .prologue
    .line 655
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public replaceFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 630
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@2
    .line 629
    return-void
.end method

.method public setBitmapPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitmapPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 728
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@2
    .line 727
    return-void
.end method

.method public setIconResourceId(I)V
    .locals 0
    .param p1, "iconResourceId"    # I

    #@0
    .prologue
    .line 711
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mIconResourceId:I

    #@2
    .line 710
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 701
    iput-wide p1, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@2
    .line 700
    return-void
.end method

.method public toInsecureString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 816
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
    .line 811
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
    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@6
    .line 694
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 763
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    #@2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 764
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 765
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 766
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mActivityComponent:Landroid/content/ComponentName;

    #@11
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@14
    .line 767
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@16
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@19
    .line 768
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 769
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 771
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntent:Landroid/content/Intent;

    #@25
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@28
    .line 772
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtras:Landroid/os/PersistableBundle;

    #@2a
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@2d
    .line 773
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mWeight:I

    #@2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 774
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    #@34
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@37
    .line 775
    iget-wide v2, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    #@39
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@3c
    .line 776
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    #@3e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 777
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mIconResourceId:I

    #@43
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 778
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    #@48
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4b
    .line 780
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@4d
    if-eqz v2, :cond_0

    #@4f
    .line 781
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@51
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@54
    move-result v0

    #@55
    .line 782
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 783
    const/4 v1, 0x0

    #@59
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@5b
    .line 784
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    #@5d
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Ljava/lang/String;

    #@63
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@66
    .line 783
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_0

    #@69
    .line 787
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    #@6a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    .line 762
    :cond_1
    return-void
.end method
