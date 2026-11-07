.class public final Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarInflaterView.java"


# static fields
.field private static final blacklist ABSOLUTE_SUFFIX:Ljava/lang/String; = "A"

.field private static final blacklist ABSOLUTE_VERTICAL_CENTERED_SUFFIX:Ljava/lang/String; = "C"

.field public static final blacklist BACK:Ljava/lang/String; = "back"

.field public static final blacklist BUTTON_SEPARATOR:Ljava/lang/String; = ","

.field public static final blacklist CLIPBOARD:Ljava/lang/String; = "clipboard"

.field private static final blacklist CONFIG_NAV_BAR_LAYOUT_HANDLE:Ljava/lang/String; = "back[70AC];home_handle;ime_switcher[70AC]"

.field public static final blacklist CONTEXTUAL:Ljava/lang/String; = "contextual"

.field public static final blacklist GRAVITY_SEPARATOR:Ljava/lang/String; = ";"

.field public static final blacklist HOME:Ljava/lang/String; = "home"

.field public static final blacklist HOME_HANDLE:Ljava/lang/String; = "home_handle"

.field public static final blacklist IME_SWITCHER:Ljava/lang/String; = "ime_switcher"

.field public static final blacklist KEY:Ljava/lang/String; = "key"

.field public static final blacklist KEY_CODE_END:Ljava/lang/String; = ")"

.field public static final blacklist KEY_CODE_START:Ljava/lang/String; = "("

.field public static final blacklist KEY_IMAGE_DELIM:Ljava/lang/String; = ":"

.field public static final blacklist LEFT:Ljava/lang/String; = "left"

.field public static final blacklist MENU_IME_ROTATE:Ljava/lang/String; = "menu_ime"

.field public static final blacklist NAVSPACE:Ljava/lang/String; = "space"

.field public static final blacklist NAV_BAR_LEFT:Ljava/lang/String; = "sysui_nav_bar_left"

.field public static final blacklist NAV_BAR_RIGHT:Ljava/lang/String; = "sysui_nav_bar_right"

.field public static final blacklist NAV_BAR_VIEWS:Ljava/lang/String; = "sysui_nav_bar"

.field public static final blacklist RECENT:Ljava/lang/String; = "recent"

.field public static final blacklist RIGHT:Ljava/lang/String; = "right"

.field public static final blacklist SIZE_MOD_END:Ljava/lang/String; = "]"

.field public static final blacklist SIZE_MOD_START:Ljava/lang/String; = "["

.field private static final blacklist TAG:Ljava/lang/String; = "NavBarInflater"

.field private static final blacklist WEIGHT_CENTERED_SUFFIX:Ljava/lang/String; = "WC"

.field private static final blacklist WEIGHT_SUFFIX:Ljava/lang/String; = "W"


# instance fields
.field private blacklist mAlternativeOrder:Z

.field blacklist mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mHorizontal:Landroid/widget/FrameLayout;

.field protected blacklist mLandscapeInflater:Landroid/view/LayoutInflater;

.field private blacklist mLastLandscape:Landroid/view/View;

.field private blacklist mLastPortrait:Landroid/view/View;

.field protected blacklist mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->createInflaters()V

    .line 93
    return-void
.end method

.method private blacklist addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V
    .registers 6
    .param p1, "buttonDispatcher"    # Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 174
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1c

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 177
    :cond_1c
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2d

    .line 178
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 170
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method private blacklist addGravitySpacer(Landroid/widget/LinearLayout;)V
    .registers 6
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .line 216
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    return-void
.end method

.method private blacklist addToDispatchers(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 395
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_33

    .line 396
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 397
    .local v0, "indexOfKey":I
    if-ltz v0, :cond_1b

    .line 398
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 400
    :cond_1b
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_33

    .line 401
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 402
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 403
    .local v2, "numChildViews":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    if-ge v3, v2, :cond_33

    .line 404
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    .line 403
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 408
    .end local v0    # "indexOfKey":I
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "numChildViews":I
    .end local v3    # "i":I
    :cond_33
    return-void
.end method

.method private blacklist applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;
    .registers 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "buttonSpec"    # Ljava/lang/String;
    .param p3, "landscape"    # Z
    .param p4, "start"    # Z

    .line 261
    invoke-static {p2}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "sizeStr":Ljava/lang/String;
    if-nez v0, :cond_7

    return-object p1

    .line 264
    :cond_7
    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "A"

    if-nez v2, :cond_28

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_28

    .line 303
    :cond_18
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 304
    .local v1, "size":F
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 305
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 306
    return-object p1

    .line 267
    .end local v1    # "size":F
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_28
    :goto_28
    new-instance v2, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 268
    .local v2, "frame":Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    .local v4, "childParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p3, :cond_42

    if-eqz p4, :cond_3f

    const/16 v5, 0x30

    goto :goto_4b

    :cond_3f
    const/16 v5, 0x50

    goto :goto_4b

    .line 272
    :cond_42
    if-eqz p4, :cond_48

    const v5, 0x800003

    goto :goto_4b

    :cond_48
    const v5, 0x800005

    :goto_4b
    nop

    .line 273
    .local v5, "gravity":I
    const-string v6, "WC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 274
    const/16 v5, 0x11

    goto :goto_61

    .line 275
    :cond_57
    const-string v6, "C"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 276
    const/16 v5, 0x10

    .line 280
    :cond_61
    :goto_61
    invoke-virtual {v2, v5}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setDefaultGravity(I)V

    .line 281
    invoke-virtual {v2, v5}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setGravity(I)V

    .line 283
    invoke-virtual {v2, p1, v4}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_88

    .line 287
    nop

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 289
    .local v1, "weight":F
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    .end local v1    # "weight":F
    goto :goto_a3

    .line 291
    :cond_88
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 291
    invoke-static {v1, v3}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->convertDpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 293
    .local v1, "width":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    .end local v1    # "width":I
    :goto_a3
    invoke-virtual {v2, v8}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setClipChildren(Z)V

    .line 298
    invoke-virtual {v2, v8}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setClipToPadding(Z)V

    .line 300
    return-object v2
.end method

.method private blacklist clearAllChildren(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 421
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 422
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 424
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method private blacklist clearViews()V
    .registers 3

    .line 411
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_1b

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 413
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->clear()V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 416
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020385

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    .line 418
    return-void
.end method

.method private static blacklist convertDpToPx(Landroid/content/Context;F)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private blacklist copy(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 6
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 227
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_13

    .line 228
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, p1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0

    .line 231
    :cond_13
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private static blacklist extractButton(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "buttonSpec"    # Ljava/lang/String;

    .line 388
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 389
    return-object p0

    .line 391
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist extractSize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "buttonSpec"    # Ljava/lang/String;

    .line 380
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 381
    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 384
    .local v0, "sizeStart":I
    add-int/lit8 v1, v0, 0x1

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V
    .registers 7
    .param p1, "buttons"    # [Ljava/lang/String;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "landscape"    # Z
    .param p4, "start"    # Z

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    .line 222
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method private blacklist inflateChildren()V
    .registers 4

    .line 112
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->removeAllViews()V

    .line 113
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 116
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addView(Landroid/view/View;)V

    .line 117
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder()V

    .line 118
    return-void
.end method

.method private blacklist initiallyFill(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V
    .registers 4
    .param p1, "buttonDispatcher"    # Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    .line 163
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020387

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 165
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020386

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 167
    return-void
.end method

.method private blacklist updateAlternativeOrder()V
    .registers 3

    .line 149
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020387

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020386

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method private blacklist updateAlternativeOrder(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 156
    instance-of v0, p1, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;

    if-eqz v0, :cond_c

    .line 157
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->setAlternativeOrder(Z)V

    .line 159
    :cond_c
    return-void
.end method


# virtual methods
.method blacklist createInflaters()V
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 97
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 98
    .local v0, "landscape":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 99
    const/4 v1, 0x2

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 100
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    .line 101
    return-void
.end method

.method blacklist createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 10
    .param p1, "buttonSpec"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "inflater"    # Landroid/view/LayoutInflater;

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "v":Landroid/view/View;
    invoke-static {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "button":Ljava/lang/String;
    const-string v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "menu_ime"

    const-string v4, "space"

    if-eqz v2, :cond_16

    .line 313
    invoke-static {v4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 314
    :cond_16
    const-string v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 315
    invoke-static {v3}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    :cond_22
    :goto_22
    const-string v2, "home"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_8a

    .line 319
    :cond_2b
    const-string v2, "back"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3c

    .line 320
    const v2, 0x1090092

    invoke-virtual {p3, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_8a

    .line 322
    :cond_3c
    const-string v2, "recent"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_8a

    .line 324
    :cond_45
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_8a

    .line 326
    :cond_4c
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_8a

    .line 328
    :cond_53
    const-string v2, "clipboard"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_8a

    .line 330
    :cond_5c
    const-string v2, "contextual"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    goto :goto_8a

    .line 332
    :cond_65
    const-string v2, "home_handle"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 333
    const v2, 0x1090093

    invoke-virtual {p3, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_8a

    .line 335
    :cond_75
    const-string v2, "ime_switcher"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 336
    const v2, 0x1090094

    invoke-virtual {p3, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_8a

    .line 338
    :cond_85
    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 356
    :goto_8a
    return-object v0
.end method

.method blacklist getDefaultLayout()Ljava/lang/String;
    .registers 2

    .line 121
    const-string v0, "back[70AC];home_handle;ime_switcher[70AC]"

    return-object v0
.end method

.method protected blacklist inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .registers 11
    .param p1, "buttonSpec"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "landscape"    # Z
    .param p4, "start"    # Z

    .line 237
    if-eqz p3, :cond_5

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 238
    .local v0, "inflater":Landroid/view/LayoutInflater;
    :goto_7
    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_f

    const/4 v2, 0x0

    return-object v2

    .line 241
    :cond_f
    invoke-direct {p0, v1, p1, p3, p4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v1

    .line 242
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    invoke-direct {p0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    .line 244
    if-eqz p3, :cond_1e

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_20

    :cond_1e
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 245
    .local v2, "lastView":Landroid/view/View;
    :goto_20
    move-object v3, v1

    .line 246
    .local v3, "accessibilityView":Landroid/view/View;
    instance-of v4, v1, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;

    if-eqz v4, :cond_2d

    .line 247
    move-object v4, v1

    check-cast v4, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 249
    :cond_2d
    if-eqz v2, :cond_36

    .line 250
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 252
    :cond_36
    if-eqz p3, :cond_3b

    .line 253
    iput-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_3d

    .line 255
    :cond_3b
    iput-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 257
    :goto_3d
    return-object v1
.end method

.method protected blacklist inflateLayout(Ljava/lang/String;)V
    .registers 10
    .param p1, "newLayout"    # Ljava/lang/String;

    .line 184
    if-nez p1, :cond_6

    .line 185
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    .line 187
    :cond_6
    const-string v0, ";"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "sets":[Ljava/lang/String;
    array-length v3, v2

    if-eq v3, v1, :cond_1f

    .line 189
    const-string v3, "NavBarInflater"

    const-string v4, "Invalid layout."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 193
    :cond_1f
    const/4 v0, 0x0

    aget-object v1, v2, v0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "start":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "center":[Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "end":[Ljava/lang/String;
    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v7, 0x1020387

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v6, v0, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 201
    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v6, 0x1020386

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v4, v0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 205
    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct {p0, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 208
    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v4, v0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 212
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 213
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 105
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 106
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateChildren()V

    .line 107
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->clearViews()V

    .line 108
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method blacklist setAlternativeOrder(Z)V
    .registers 3
    .param p1, "alternativeOrder"    # Z

    .line 142
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    if-eq p1, v0, :cond_9

    .line 143
    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 144
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder()V

    .line 146
    :cond_9
    return-void
.end method

.method blacklist setButtonDispatchers(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "buttonDispatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/inputmethodservice/navigationbar/ButtonDispatcher;>;"
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 127
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-direct {p0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->initiallyFill(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 129
    .end local v0    # "i":I
    :cond_15
    return-void
.end method

.method blacklist updateButtonDispatchersCurrentView()V
    .registers 4

    .line 132
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_1d

    .line 133
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 134
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 135
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    .line 136
    .local v2, "dispatcher":Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    invoke-virtual {v2, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    .line 134
    .end local v2    # "dispatcher":Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 139
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method
