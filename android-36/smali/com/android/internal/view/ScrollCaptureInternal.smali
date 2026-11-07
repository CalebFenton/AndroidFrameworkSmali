.class public Lcom/android/internal/view/ScrollCaptureInternal;
.super Ljava/lang/Object;
.source "ScrollCaptureInternal.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_VERBOSE:Z = false

.field private static final blacklist DOWN:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ScrollCaptureInternal"

.field public static final blacklist TYPE_FIXED:I = 0x0

.field public static final blacklist TYPE_OPAQUE:I = 0x3

.field public static final blacklist TYPE_RECYCLING:I = 0x2

.field public static final blacklist TYPE_SCROLLING:I = 0x1

.field private static final blacklist UP:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist detectScrollingType(Landroid/view/View;)I
    .registers 8
    .param p0, "view"    # Landroid/view/View;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_10

    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 85
    return v2

    .line 91
    :cond_10
    instance-of v1, p0, Landroid/view/ViewGroup;

    const/4 v4, 0x3

    if-nez v1, :cond_16

    .line 95
    return v4

    .line 101
    :cond_16
    invoke-static {}, Landroid/view/flags/Flags;->scrollCaptureRelaxScrollViewCriteria()Z

    move-result v1

    const/4 v5, 0x2

    if-nez v1, :cond_27

    .line 103
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_27

    .line 107
    return v5

    .line 111
    :cond_27
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const-string v6, "ScrollCaptureInternal"

    if-nez v1, :cond_39

    .line 112
    const-string/jumbo v0, "scrollable but no children!"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v4

    .line 119
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_40

    .line 123
    return v0

    .line 125
    :cond_40
    const-string v1, "hint: scrollY == 0"

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 131
    return v5

    .line 139
    :cond_4c
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ne v1, v0, :cond_61

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 147
    return v0

    .line 152
    :cond_61
    return v5
.end method

.method private static blacklist formatIntToHexString(I)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # I

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist resolveId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    .local v0, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_3f

    .line 226
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_25} :catch_26

    .local v1, "fieldValue":Ljava/lang/String;
    goto :goto_3e

    .line 228
    .end local v1    # "fieldValue":Ljava/lang/String;
    :catch_26
    move-exception v1

    .line 229
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/view/ScrollCaptureInternal;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "fieldValue":Ljava/lang/String;
    :goto_3e
    goto :goto_41

    .line 232
    .end local v1    # "fieldValue":Ljava/lang/String;
    :cond_3f
    const-string v1, "NO_ID"

    .line 234
    .restart local v1    # "fieldValue":Ljava/lang/String;
    :goto_41
    return-object v1
.end method


# virtual methods
.method public blacklist requestCallback(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/ScrollCaptureCallback;
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localVisibleRect"    # Landroid/graphics/Rect;
    .param p3, "positionInWindow"    # Landroid/graphics/Point;

    .line 172
    invoke-static {p1}, Lcom/android/internal/view/ScrollCaptureInternal;->detectScrollingType(Landroid/view/View;)I

    move-result v0

    .line 173
    .local v0, "i":I
    packed-switch v0, :pswitch_data_52

    goto :goto_50

    .line 201
    :pswitch_8
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_50

    .line 202
    const-string v1, "ScrollCaptureInternal"

    const-string/jumbo v2, "scroll capture: Using WebView support"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/webkit/WebView;

    new-instance v3, Lcom/android/internal/view/WebViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/WebViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    .line 188
    :pswitch_22
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_34

    .line 190
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/widget/ListView;

    new-instance v3, Lcom/android/internal/view/ListViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/ListViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    .line 193
    :cond_34
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/internal/view/RecyclerViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/RecyclerViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    .line 180
    :pswitch_42
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/internal/view/ScrollViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/ScrollViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    .line 212
    :cond_50
    :goto_50
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_42
        :pswitch_22
        :pswitch_8
    .end packed-switch
.end method
