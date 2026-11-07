.class public Landroid/app/ActivityManager$TaskDescription;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$TaskDescription$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTR_TASKDESCRIPTIONCOLOR_BACKGROUND:Ljava/lang/String; = "task_description_color_background"

.field private static final blacklist ATTR_TASKDESCRIPTIONCOLOR_BACKGROUND_FLOATING:Ljava/lang/String; = "task_description_color_background_floating"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONCOLOR_PRIMARY:Ljava/lang/String; = "task_description_color"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONICON_FILENAME:Ljava/lang/String; = "task_description_icon_filename"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONICON_RESOURCE:Ljava/lang/String; = "task_description_icon_resource"

.field private static final blacklist ATTR_TASKDESCRIPTIONICON_RESOURCE_PACKAGE:Ljava/lang/String; = "task_description_icon_package"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONLABEL:Ljava/lang/String; = "task_description_label"

.field public static final greylist-max-o ATTR_TASKDESCRIPTION_PREFIX:Ljava/lang/String; = "task_description_"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mColorBackground:I

.field private blacklist mColorBackgroundFloating:I

.field private greylist-max-o mColorPrimary:I

.field private blacklist mEnsureNavigationBarContrastWhenTransparent:Z

.field private blacklist mEnsureStatusBarContrastWhenTransparent:Z

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconFilename:Ljava/lang/String;

.field private greylist-max-o mLabel:Ljava/lang/String;

.field private blacklist mMinHeight:I

.field private blacklist mMinWidth:I

.field private greylist-max-o mNavigationBarColor:I

.field private blacklist mResizeMode:I

.field private greylist-max-o mStatusBarColor:I

.field private blacklist mSystemBarsAppearance:I

.field private blacklist mTopOpaqueSystemBarsAppearance:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2594
    new-instance v0, Landroid/app/ActivityManager$TaskDescription$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2010
    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 2011
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2076
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2077
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2148
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->readFromParcel(Landroid/os/Parcel;)V

    .line 2149
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 17
    .param p1, "label"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2000
    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v14}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 2001
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 20
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "iconRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1987
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v16}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 1989
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .registers 21
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "iconRes"    # I
    .param p3, "colorPrimary"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1969
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v16}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 1971
    if-eqz p3, :cond_32

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_2a

    goto :goto_32

    .line 1972
    :cond_2a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1974
    :cond_32
    :goto_32
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 19
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2042
    if-eqz p2, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object v3, v0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 2044
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 20
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "colorPrimary"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2025
    if-eqz p2, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object v3, v0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-direct/range {v1 .. v15}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 2027
    if-eqz p3, :cond_30

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_28

    goto :goto_30

    .line 2028
    :cond_28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2030
    :cond_30
    :goto_30
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V
    .registers 15
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "colorPrimary"    # I
    .param p4, "colorBackground"    # I
    .param p5, "statusBarColor"    # I
    .param p6, "navigationBarColor"    # I
    .param p7, "systemBarsAppearance"    # I
    .param p8, "topOpaqueSystemBarsAppearance"    # I
    .param p9, "ensureStatusBarContrastWhenTransparent"    # Z
    .param p10, "ensureNavigationBarContrastWhenTransparent"    # Z
    .param p11, "resizeMode"    # I
    .param p12, "minWidth"    # I
    .param p13, "minHeight"    # I
    .param p14, "colorBackgroundFloating"    # I

    .line 2054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2055
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 2056
    iput-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2057
    iput p3, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 2058
    iput p4, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 2059
    iput p5, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 2060
    iput p6, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 2061
    iput p7, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    .line 2062
    iput p8, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    .line 2063
    iput-boolean p9, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2064
    iput-boolean p10, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2066
    iput p11, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 2067
    iput p12, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 2068
    iput p13, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 2069
    iput p14, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 2070
    return-void
.end method

.method public static blacklist equals(Landroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 3
    .param p0, "td1"    # Landroid/app/ActivityManager$TaskDescription;
    .param p1, "td2"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2676
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 2677
    const/4 v0, 0x1

    return v0

    .line 2678
    :cond_6
    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 2679
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2681
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "iconFilename"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 2338
    if-eqz p0, :cond_11

    .line 2340
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->-$$Nest$smgetTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityTaskManager;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 2342
    :catch_b
    move-exception v0

    .line 2343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2346
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 3
    .param p1, "other"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2084
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 2085
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2086
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2087
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 2088
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 2089
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 2090
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 2091
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    .line 2092
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    .line 2093
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2094
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2096
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 2097
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 2098
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 2099
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 2100
    return-void
.end method

.method public greylist-max-o copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 4
    .param p1, "other"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2108
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 2109
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2110
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2111
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 2113
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-eqz v0, :cond_18

    .line 2114
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 2116
    :cond_18
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    if-eqz v0, :cond_20

    .line 2117
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 2119
    :cond_20
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    if-eqz v0, :cond_28

    .line 2120
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 2122
    :cond_28
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    if-eqz v0, :cond_30

    .line 2123
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    .line 2125
    :cond_30
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    if-eqz v0, :cond_38

    .line 2126
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    .line 2129
    :cond_38
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2130
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2133
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_49

    .line 2134
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 2136
    :cond_49
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_52

    .line 2137
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 2139
    :cond_52
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    if-eq v0, v1, :cond_5a

    .line 2140
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 2142
    :cond_5a
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-eqz v0, :cond_62

    .line 2143
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 2145
    :cond_62
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2534
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2650
    instance-of v0, p1, Landroid/app/ActivityManager$TaskDescription;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2651
    return v1

    .line 2654
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    .line 2655
    .local v0, "other":Landroid/app/ActivityManager$TaskDescription;
    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2656
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, v0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-ne v2, v3, :cond_6d

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    if-ne v2, v3, :cond_6d

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-ne v2, v3, :cond_6d

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    if-ne v2, v3, :cond_6d

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    if-ne v2, v3, :cond_6d

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    if-ne v2, v3, :cond_6d

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    if-ne v2, v3, :cond_6d

    iget-boolean v2, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iget-boolean v3, v0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    if-ne v2, v3, :cond_6d

    iget-boolean v2, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iget-boolean v3, v0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-ne v2, v3, :cond_6d

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    if-ne v2, v3, :cond_6d

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    if-ne v2, v3, :cond_6d

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    if-ne v2, v3, :cond_6d

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-ne v2, v3, :cond_6d

    const/4 v1, 0x1

    goto :goto_6e

    :cond_6d
    nop

    .line 2655
    :goto_6e
    return v1
.end method

.method public whitelist getBackgroundColor()I
    .registers 2

    .line 2362
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    return v0
.end method

.method public blacklist getBackgroundColorFloating()I
    .registers 2

    .line 2370
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    return v0
.end method

.method public blacklist getEnsureNavigationBarContrastWhenTransparent()Z
    .registers 2

    .line 2438
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    return v0
.end method

.method public blacklist getEnsureStatusBarContrastWhenTransparent()Z
    .registers 2

    .line 2393
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    return v0
.end method

.method public whitelist getIcon()Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2288
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2289
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 2290
    return-object v0

    .line 2292
    :cond_7
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getIconFilename()Ljava/lang/String;
    .registers 2

    .line 2323
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIconResource()I
    .registers 3

    .line 2314
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 2315
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    return v0

    .line 2317
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIconResourcePackage()Ljava/lang/String;
    .registers 3

    .line 2305
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 2306
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2308
    :cond_14
    const-string v0, ""

    return-object v0
.end method

.method public greylist getInMemoryIcon()Landroid/graphics/Bitmap;
    .registers 3

    .line 2329
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 2330
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2332
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/String;
    .registers 2

    .line 2262
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMinHeight()I
    .registers 2

    .line 2468
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    return v0
.end method

.method public blacklist getMinWidth()I
    .registers 2

    .line 2461
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    return v0
.end method

.method public whitelist getNavigationBarColor()I
    .registers 2

    .line 2386
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    return v0
.end method

.method public whitelist getPrimaryColor()I
    .registers 2

    .line 2354
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    return v0
.end method

.method public blacklist getRawIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 2298
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getResizeMode()I
    .registers 2

    .line 2454
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    return v0
.end method

.method public whitelist getStatusBarColor()I
    .registers 2

    .line 2378
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    return v0
.end method

.method public blacklist getSystemBarsAppearance()I
    .registers 2

    .line 2401
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    return v0
.end method

.method public blacklist getTopOpaqueSystemBarsAppearance()I
    .registers 2

    .line 2409
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2623
    const/16 v0, 0x11

    .line 2624
    .local v0, "result":I
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 2625
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2627
    :cond_10
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_1e

    .line 2628
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2630
    :cond_1e
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 2631
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2633
    :cond_2c
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    add-int/2addr v1, v2

    .line 2634
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    add-int/2addr v0, v2

    .line 2635
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    add-int/2addr v1, v2

    .line 2636
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    add-int/2addr v0, v2

    .line 2637
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    add-int/2addr v1, v2

    .line 2638
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    add-int/2addr v0, v2

    .line 2639
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    add-int/2addr v1, v2

    .line 2640
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    add-int/2addr v0, v2

    .line 2641
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    add-int/2addr v1, v2

    .line 2642
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    add-int/2addr v0, v2

    .line 2643
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    add-int/2addr v1, v2

    .line 2644
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    add-int/2addr v0, v2

    .line 2645
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist loadIcon()Landroid/graphics/drawable/Icon;
    .registers 3

    .line 2271
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_7

    .line 2272
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0

    .line 2274
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2275
    .local v0, "loadedIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_18

    .line 2276
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 2278
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 2576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1f

    .line 2577
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2579
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 2580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 2581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 2582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 2583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    .line 2584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    .line 2585
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2586
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 2588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 2589
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 2590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_6b

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :cond_6b
    iput-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2591
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 2592
    return-void
.end method

.method public blacklist restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 10
    .param p1, "in"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 2498
    const-string/jumbo v0, "task_description_label"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2499
    .local v0, "label":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 2500
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 2502
    :cond_d
    const-string/jumbo v2, "task_description_color"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 2504
    .local v2, "colorPrimary":I
    if-eqz v2, :cond_1a

    .line 2505
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 2507
    :cond_1a
    const-string/jumbo v4, "task_description_color_background"

    invoke-interface {p1, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 2509
    .local v4, "colorBackground":I
    if-eqz v4, :cond_26

    .line 2510
    invoke-virtual {p0, v4}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 2512
    :cond_26
    const-string/jumbo v5, "task_description_color_background_floating"

    invoke-interface {p1, v1, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 2514
    .local v5, "colorBackgroundFloating":I
    if-eqz v5, :cond_32

    .line 2515
    invoke-virtual {p0, v5}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 2517
    :cond_32
    const-string/jumbo v6, "task_description_icon_filename"

    invoke-interface {p1, v1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2519
    .local v6, "iconFilename":Ljava/lang/String;
    if-eqz v6, :cond_3e

    .line 2520
    invoke-virtual {p0, v6}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2522
    :cond_3e
    const-string/jumbo v7, "task_description_icon_resource"

    invoke-interface {p1, v1, v7, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 2524
    .local v3, "iconResourceId":I
    const-string/jumbo v7, "task_description_icon_package"

    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2526
    .local v1, "iconResourcePackage":Ljava/lang/String;
    if-eqz v3, :cond_57

    if-eqz v1, :cond_57

    .line 2527
    invoke-static {v1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 2530
    :cond_57
    return-void
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2473
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2474
    const-string/jumbo v0, "task_description_label"

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2476
    :cond_d
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    if-eqz v0, :cond_19

    .line 2477
    const-string/jumbo v0, "task_description_color"

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2479
    :cond_19
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-eqz v0, :cond_25

    .line 2480
    const-string/jumbo v0, "task_description_color_background"

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2482
    :cond_25
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-eqz v0, :cond_31

    .line 2483
    const-string/jumbo v0, "task_description_color_background_floating"

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2486
    :cond_31
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-eqz v0, :cond_3d

    .line 2487
    const-string/jumbo v0, "task_description_icon_filename"

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2489
    :cond_3d
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_62

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_62

    .line 2490
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    const-string/jumbo v2, "task_description_icon_resource"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2491
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2492
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    .line 2491
    const-string/jumbo v2, "task_description_icon_package"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2494
    :cond_62
    return-void
.end method

.method public greylist-max-o setBackgroundColor(I)V
    .registers 4
    .param p1, "backgroundColor"    # I

    .line 2177
    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 2178
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s background color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2180
    :cond_13
    :goto_13
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 2181
    return-void
.end method

.method public blacklist setBackgroundColorFloating(I)V
    .registers 4
    .param p1, "backgroundColor"    # I

    .line 2189
    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 2190
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s background color floating should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2193
    :cond_13
    :goto_13
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 2194
    return-void
.end method

.method public blacklist setEnsureNavigationBarContrastWhenTransparent(Z)V
    .registers 2
    .param p1, "ensureNavigationBarContrastWhenTransparent"    # Z

    .line 2446
    iput-boolean p1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2448
    return-void
.end method

.method public blacklist setEnsureStatusBarContrastWhenTransparent(Z)V
    .registers 2
    .param p1, "ensureStatusBarContrastWhenTransparent"    # Z

    .line 2417
    iput-boolean p1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2418
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 2215
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2216
    return-void
.end method

.method public greylist-max-o setIconFilename(Ljava/lang/String;)V
    .registers 3
    .param p1, "iconFilename"    # Ljava/lang/String;

    .line 2224
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2225
    if-eqz p1, :cond_7

    .line 2227
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2229
    :cond_7
    return-void
.end method

.method public greylist-max-o setLabel(Ljava/lang/String;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/String;

    .line 2156
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 2157
    return-void
.end method

.method public blacklist setMinHeight(I)V
    .registers 2
    .param p1, "minHeight"    # I

    .line 2255
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 2256
    return-void
.end method

.method public blacklist setMinWidth(I)V
    .registers 2
    .param p1, "minWidth"    # I

    .line 2246
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 2247
    return-void
.end method

.method public greylist-max-o setNavigationBarColor(I)V
    .registers 2
    .param p1, "navigationBarColor"    # I

    .line 2207
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 2208
    return-void
.end method

.method public greylist-max-o setPrimaryColor(I)V
    .registers 4
    .param p1, "primaryColor"    # I

    .line 2165
    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 2166
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2168
    :cond_13
    :goto_13
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 2169
    return-void
.end method

.method public blacklist setResizeMode(I)V
    .registers 2
    .param p1, "resizeMode"    # I

    .line 2237
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 2238
    return-void
.end method

.method public greylist-max-o setStatusBarColor(I)V
    .registers 2
    .param p1, "statusBarColor"    # I

    .line 2200
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 2201
    return-void
.end method

.method public blacklist setSystemBarsAppearance(I)V
    .registers 2
    .param p1, "systemBarsAppearance"    # I

    .line 2424
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    .line 2425
    return-void
.end method

.method public blacklist setTopOpaqueSystemBarsAppearance(I)V
    .registers 2
    .param p1, "topOpaqueSystemBarsAppearance"    # I

    .line 2431
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    .line 2432
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskDescription Label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IconFilename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " colorPrimary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " colorBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " statusBarColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2610
    iget-boolean v1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    const-string v2, " (contrast when transparent)"

    const-string v3, ""

    if-eqz v1, :cond_57

    move-object v1, v2

    goto :goto_58

    .line 2611
    :cond_57
    move-object v1, v3

    :goto_58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " navigationBarColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2612
    iget-boolean v1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-eqz v1, :cond_6d

    .line 2613
    goto :goto_6e

    :cond_6d
    move-object v2, v3

    :goto_6e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resizeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 2614
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " colorBackgrounFloating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " systemBarsAppearance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topOpaqueSystemBarsAppearance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2606
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2539
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 2540
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 2542
    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2543
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2545
    :goto_12
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2546
    .local v0, "bitmapIcon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_2c

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_2c

    .line 2551
    :cond_23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2552
    iget-object v3, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2f

    .line 2549
    :cond_2c
    :goto_2c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2554
    :goto_2f
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2555
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2556
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2557
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2558
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2559
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2560
    iget-boolean v3, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2561
    iget-boolean v3, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2562
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2563
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2564
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2565
    iget-object v3, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-nez v3, :cond_6e

    .line 2566
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_76

    .line 2568
    :cond_6e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2569
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2571
    :goto_76
    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2572
    return-void
.end method
