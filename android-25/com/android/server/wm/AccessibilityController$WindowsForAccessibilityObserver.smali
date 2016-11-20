.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mOldWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 939
    const-string/jumbo v0, "WindowManager"

    #@3
    .line 938
    sput-object v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->LOG_TAG:Ljava/lang/String;

    #@5
    .line 937
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    #@0
    .prologue
    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 944
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    .line 943
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    #@a
    .line 946
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@11
    .line 948
    new-instance v0, Landroid/util/ArraySet;

    #@13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    #@18
    .line 950
    new-instance v0, Landroid/graphics/RectF;

    #@1a
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    #@1f
    .line 952
    new-instance v0, Landroid/graphics/Matrix;

    #@21
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    #@26
    .line 954
    new-instance v0, Landroid/graphics/Point;

    #@28
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@2d
    .line 956
    new-instance v0, Landroid/graphics/Rect;

    #@2f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@34
    .line 958
    new-instance v0, Landroid/graphics/Region;

    #@36
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    #@3b
    .line 960
    new-instance v0, Landroid/graphics/Region;

    #@3d
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    #@42
    .line 974
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@44
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    #@46
    .line 975
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@48
    .line 976
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    #@4a
    .line 977
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    #@4c
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@4e
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@50
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    #@53
    move-result-object v1

    #@54
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    #@57
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    #@59
    .line 978
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    #@5c
    move-result-wide v0

    #@5d
    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    #@5f
    .line 980
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    #@62
    .line 973
    return-void
.end method

.method private cacheWindows(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1237
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    .line 1238
    .local v3, "oldWindowCount":I
    add-int/lit8 v0, v3, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 1239
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@c
    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Landroid/view/WindowInfo;

    #@12
    invoke-virtual {v4}, Landroid/view/WindowInfo;->recycle()V

    #@15
    .line 1238
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1241
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1b
    move-result v2

    #@1c
    .line 1242
    .local v2, "newWindowCount":I
    const/4 v0, 0x0

    #@1d
    :goto_1
    if-ge v0, v2, :cond_1

    #@1f
    .line 1243
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/view/WindowInfo;

    #@25
    .line 1244
    .local v1, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@27
    invoke-static {v1}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    #@2a
    move-result-object v5

    #@2b
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    .line 1242
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_1

    #@31
    .line 1236
    .end local v1    # "newWindow":Landroid/view/WindowInfo;
    :cond_1
    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1295
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    .line 1296
    .local v1, "windowCount":I
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 1297
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/view/WindowInfo;

    #@e
    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    #@11
    .line 1296
    add-int/lit8 v0, v0, -0x1

    #@13
    goto :goto_0

    #@14
    .line 1294
    :cond_0
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1185
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    #@2
    .line 1186
    .local v2, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@5
    .line 1187
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@7
    .line 1188
    .local v1, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@a
    .line 1191
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    #@c
    .line 1192
    .local v3, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@f
    .line 1193
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@11
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@13
    neg-int v4, v4

    #@14
    int-to-float v4, v4

    #@15
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@17
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@19
    neg-int v5, v5

    #@1a
    int-to-float v5, v5

    #@1b
    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    #@1e
    .line 1196
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    #@20
    .line 1197
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-static {p1, v0}, Lcom/android/server/wm/AccessibilityController;->-wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    #@23
    .line 1198
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@26
    .line 1201
    iget v4, v3, Landroid/graphics/RectF;->left:F

    #@28
    float-to-int v4, v4

    #@29
    iget v5, v3, Landroid/graphics/RectF;->top:F

    #@2b
    float-to-int v5, v5

    #@2c
    .line 1202
    iget v6, v3, Landroid/graphics/RectF;->right:F

    #@2e
    float-to-int v6, v6

    #@2f
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    #@31
    float-to-int v7, v7

    #@32
    .line 1201
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@35
    .line 1183
    return-void
.end method

.method private static isReportedWindowType(I)Z
    .locals 2
    .param p0, "windowType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1302
    const/16 v1, 0x7ed

    #@3
    if-eq p0, v1, :cond_0

    #@5
    .line 1303
    const/16 v1, 0x7dd

    #@7
    if-eq p0, v1, :cond_0

    #@9
    .line 1304
    const/16 v1, 0x7e5

    #@b
    if-eq p0, v1, :cond_0

    #@d
    .line 1305
    const/16 v1, 0x7ea

    #@f
    if-eq p0, v1, :cond_0

    #@11
    .line 1306
    const/16 v1, 0x7e0

    #@13
    if-eq p0, v1, :cond_0

    #@15
    .line 1307
    const/16 v1, 0x7e6

    #@17
    if-eq p0, v1, :cond_0

    #@19
    .line 1308
    const/16 v1, 0x7e2

    #@1b
    if-eq p0, v1, :cond_0

    #@1d
    .line 1309
    const/16 v1, 0x7eb

    #@1f
    if-eq p0, v1, :cond_0

    #@21
    .line 1310
    const/16 v1, 0x3ec

    #@23
    if-eq p0, v1, :cond_0

    #@25
    .line 1311
    const/16 v1, 0x7df

    #@27
    if-eq p0, v1, :cond_0

    #@29
    .line 1312
    const/16 v1, 0x7ee

    #@2b
    if-eq p0, v1, :cond_0

    #@2d
    const/4 v0, 0x1

    #@2e
    .line 1302
    :cond_0
    return v0
.end method

.method private static obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;
    .locals 7
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "boundsInScreen"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1207
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    #@3
    move-result-object v4

    #@4
    .line 1208
    .local v4, "window":Landroid/view/WindowInfo;
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@6
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@8
    iput v5, v4, Landroid/view/WindowInfo;->type:I

    #@a
    .line 1209
    iget v5, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@c
    iput v5, v4, Landroid/view/WindowInfo;->layer:I

    #@e
    .line 1210
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@10
    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v5

    #@14
    iput-object v5, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@16
    .line 1211
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@18
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    #@1a
    iput-object v5, v4, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    #@1c
    .line 1212
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1e
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@20
    iput v5, v4, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@22
    .line 1214
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@24
    .line 1215
    .local v0, "attachedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    #@26
    .line 1216
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@28
    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v5

    #@2c
    iput-object v5, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@2e
    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    #@31
    move-result v5

    #@32
    iput-boolean v5, v4, Landroid/view/WindowInfo;->focused:Z

    #@34
    .line 1220
    iget-object v5, v4, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@36
    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@39
    .line 1222
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@3b
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    #@3e
    move-result v2

    #@3f
    .line 1223
    .local v2, "childCount":I
    if-lez v2, :cond_2

    #@41
    .line 1224
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@43
    if-nez v5, :cond_1

    #@45
    .line 1225
    new-instance v5, Ljava/util/ArrayList;

    #@47
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@4a
    iput-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@4c
    .line 1227
    :cond_1
    const/4 v3, 0x0

    #@4d
    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@4f
    .line 1228
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@51
    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@57
    .line 1229
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@59
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@5b
    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@5e
    move-result-object v6

    #@5f
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@62
    .line 1227
    add-int/lit8 v3, v3, 0x1

    #@64
    goto :goto_0

    #@65
    .line 1233
    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v3    # "j":I
    :cond_2
    return-object v4
.end method

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1316
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@5
    move-result-object v0

    #@6
    .line 1318
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@9
    move-result-object v3

    #@a
    .line 1319
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@d
    move-result v2

    #@e
    .line 1320
    .local v2, "windowCount":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@11
    .line 1321
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@17
    .line 1322
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

    #@1d
    .line 1323
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    #@1f
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@22
    .line 1320
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1315
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .locals 4
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1249
    if-ne p1, p2, :cond_0

    #@4
    .line 1250
    return v3

    #@5
    .line 1252
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 1253
    return v2

    #@8
    .line 1255
    :cond_1
    if-nez p2, :cond_2

    #@a
    .line 1256
    return v2

    #@b
    .line 1258
    :cond_2
    iget v0, p1, Landroid/view/WindowInfo;->type:I

    #@d
    iget v1, p2, Landroid/view/WindowInfo;->type:I

    #@f
    if-eq v0, v1, :cond_3

    #@11
    .line 1259
    return v2

    #@12
    .line 1261
    :cond_3
    iget-boolean v0, p1, Landroid/view/WindowInfo;->focused:Z

    #@14
    iget-boolean v1, p2, Landroid/view/WindowInfo;->focused:Z

    #@16
    if-eq v0, v1, :cond_4

    #@18
    .line 1262
    return v2

    #@19
    .line 1264
    :cond_4
    iget-object v0, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@1b
    if-nez v0, :cond_5

    #@1d
    .line 1265
    iget-object v0, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@1f
    if-eqz v0, :cond_6

    #@21
    .line 1266
    return v2

    #@22
    .line 1268
    :cond_5
    iget-object v0, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@24
    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_6

    #@2c
    .line 1269
    return v2

    #@2d
    .line 1271
    :cond_6
    iget-object v0, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@2f
    if-nez v0, :cond_7

    #@31
    .line 1272
    iget-object v0, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@33
    if-eqz v0, :cond_8

    #@35
    .line 1273
    return v2

    #@36
    .line 1275
    :cond_7
    iget-object v0, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@38
    iget-object v1, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    if-nez v0, :cond_8

    #@40
    .line 1276
    return v2

    #@41
    .line 1278
    :cond_8
    iget-object v0, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@43
    iget-object v1, p2, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@45
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    if-nez v0, :cond_9

    #@4b
    .line 1279
    return v2

    #@4c
    .line 1281
    :cond_9
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@4e
    if-eqz v0, :cond_a

    #@50
    iget-object v0, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@52
    if-eqz v0, :cond_a

    #@54
    .line 1282
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@56
    iget-object v1, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@58
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_b

    #@5e
    .line 1285
    :cond_a
    iget-object v0, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    #@60
    iget-object v1, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    #@62
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@65
    move-result v0

    #@66
    if-nez v0, :cond_c

    #@68
    .line 1286
    return v2

    #@69
    .line 1283
    :cond_b
    return v2

    #@6a
    .line 1288
    :cond_c
    iget v0, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@6c
    iget v1, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@6e
    if-eq v0, v1, :cond_d

    #@70
    .line 1289
    return v2

    #@71
    .line 1291
    :cond_d
    return v3
.end method


# virtual methods
.method public computeChangedWindows()V
    .locals 30

    #@0
    .prologue
    .line 1000
    const/16 v26, 0x0

    #@2
    .line 1001
    .local v26, "windowsChanged":Z
    new-instance v25, Ljava/util/ArrayList;

    #@4
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 1003
    .local v25, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@b
    move-object/from16 v27, v0

    #@d
    move-object/from16 v0, v27

    #@f
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@11
    move-object/from16 v28, v0

    #@13
    monitor-enter v28

    #@14
    .line 1007
    :try_start_0
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@18
    move-object/from16 v27, v0

    #@1a
    move-object/from16 v0, v27

    #@1c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@1e
    move-object/from16 v27, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    if-nez v27, :cond_0

    #@22
    monitor-exit v28

    #@23
    .line 1008
    return-void

    #@24
    .line 1012
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    #@28
    move-object/from16 v27, v0

    #@2a
    const-string/jumbo v29, "window"

    #@2d
    move-object/from16 v0, v27

    #@2f
    move-object/from16 v1, v29

    #@31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@34
    move-result-object v23

    #@35
    .line 1011
    check-cast v23, Landroid/view/WindowManager;

    #@37
    .line 1013
    .local v23, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@3a
    move-result-object v27

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@3f
    move-object/from16 v29, v0

    #@41
    move-object/from16 v0, v27

    #@43
    move-object/from16 v1, v29

    #@45
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@48
    .line 1014
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@4c
    move-object/from16 v27, v0

    #@4e
    move-object/from16 v0, v27

    #@50
    iget v14, v0, Landroid/graphics/Point;->x:I

    #@52
    .line 1015
    .local v14, "screenWidth":I
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@56
    move-object/from16 v27, v0

    #@58
    move-object/from16 v0, v27

    #@5a
    iget v13, v0, Landroid/graphics/Point;->y:I

    #@5c
    .line 1017
    .local v13, "screenHeight":I
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    #@60
    move-object/from16 v18, v0

    #@62
    .line 1018
    .local v18, "unaccountedSpace":Landroid/graphics/Region;
    const/16 v27, 0x0

    #@64
    const/16 v29, 0x0

    #@66
    move-object/from16 v0, v18

    #@68
    move/from16 v1, v27

    #@6a
    move/from16 v2, v29

    #@6c
    invoke-virtual {v0, v1, v2, v14, v13}, Landroid/graphics/Region;->set(IIII)Z

    #@6f
    .line 1020
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    #@73
    move-object/from16 v20, v0

    #@75
    .line 1021
    .local v20, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    #@77
    move-object/from16 v1, v20

    #@79
    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    #@7c
    .line 1023
    move-object/from16 v0, p0

    #@7e
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    #@80
    .line 1024
    .local v4, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    #@83
    .line 1026
    const/4 v8, 0x0

    #@84
    .line 1028
    .local v8, "focusedWindowAdded":Z
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    #@87
    move-result v19

    #@88
    .line 1029
    .local v19, "visibleWindowCount":I
    const/4 v15, -0x1

    #@89
    .line 1030
    .local v15, "skipRemainingWindowsForTaskId":I
    new-instance v16, Ljava/util/HashSet;

    #@8b
    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    #@8e
    .line 1031
    .local v16, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    add-int/lit8 v9, v19, -0x1

    #@90
    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_6

    #@92
    .line 1032
    move-object/from16 v0, v20

    #@94
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@97
    move-result-object v24

    #@98
    check-cast v24, Lcom/android/server/wm/WindowState;

    #@9a
    .line 1033
    .local v24, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v24

    #@9c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@9e
    move-object/from16 v27, v0

    #@a0
    move-object/from16 v0, v27

    #@a2
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a4
    .line 1034
    .local v7, "flags":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@a7
    move-result-object v17

    #@a8
    .line 1037
    .local v17, "task":Lcom/android/server/wm/Task;
    if-eqz v17, :cond_2

    #@aa
    move-object/from16 v0, v17

    #@ac
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    #@ae
    move/from16 v27, v0

    #@b0
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b3
    move-result-object v27

    #@b4
    move-object/from16 v0, v16

    #@b6
    move-object/from16 v1, v27

    #@b8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@bb
    move-result v27

    #@bc
    if-eqz v27, :cond_2

    #@be
    .line 1031
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, -0x1

    #@c0
    goto :goto_0

    #@c1
    .line 1042
    :cond_2
    and-int/lit8 v27, v7, 0x10

    #@c3
    if-nez v27, :cond_1

    #@c5
    .line 1047
    move-object/from16 v0, p0

    #@c7
    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@c9
    .line 1048
    .local v5, "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@cb
    move-object/from16 v1, v24

    #@cd
    invoke-direct {v0, v1, v5}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    #@d0
    .line 1051
    move-object/from16 v0, v18

    #@d2
    invoke-virtual {v0, v5}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    #@d5
    move-result v27

    #@d6
    if-nez v27, :cond_1

    #@d8
    .line 1056
    move-object/from16 v0, v24

    #@da
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@dc
    move-object/from16 v27, v0

    #@de
    move-object/from16 v0, v27

    #@e0
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@e2
    move/from16 v27, v0

    #@e4
    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    #@e7
    move-result v27

    #@e8
    if-eqz v27, :cond_3

    #@ea
    .line 1058
    move-object/from16 v0, v24

    #@ec
    invoke-static {v0, v5}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    #@ef
    move-result-object v21

    #@f0
    .line 1059
    .local v21, "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v21

    #@f2
    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@f4
    move-object/from16 v27, v0

    #@f6
    move-object/from16 v0, v27

    #@f8
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@fb
    .line 1060
    move-object/from16 v0, v25

    #@fd
    move-object/from16 v1, v21

    #@ff
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@102
    .line 1061
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isFocused()Z

    #@105
    move-result v27

    #@106
    if-eqz v27, :cond_3

    #@108
    .line 1062
    const/4 v8, 0x1

    #@109
    .line 1069
    .end local v21    # "window":Landroid/view/WindowInfo;
    :cond_3
    move-object/from16 v0, v24

    #@10b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10d
    move-object/from16 v27, v0

    #@10f
    move-object/from16 v0, v27

    #@111
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@113
    move/from16 v27, v0

    #@115
    .line 1070
    const/16 v29, 0x7f0

    #@117
    .line 1069
    move/from16 v0, v27

    #@119
    move/from16 v1, v29

    #@11b
    if-eq v0, v1, :cond_4

    #@11d
    .line 1072
    sget-object v27, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    #@11f
    .line 1071
    move-object/from16 v0, v18

    #@121
    move-object/from16 v1, v18

    #@123
    move-object/from16 v2, v27

    #@125
    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@128
    .line 1076
    :cond_4
    and-int/lit8 v27, v7, 0x28

    #@12a
    if-nez v27, :cond_5

    #@12c
    .line 1081
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    #@12f
    move-result-object v27

    #@130
    .line 1082
    sget-object v29, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    #@132
    .line 1081
    move-object/from16 v0, v18

    #@134
    move-object/from16 v1, v27

    #@136
    move-object/from16 v2, v18

    #@138
    move-object/from16 v3, v29

    #@13a
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@13d
    .line 1084
    if-eqz v17, :cond_6

    #@13f
    .line 1087
    move-object/from16 v0, v17

    #@141
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    #@143
    move/from16 v27, v0

    #@145
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@148
    move-result-object v27

    #@149
    move-object/from16 v0, v16

    #@14b
    move-object/from16 v1, v27

    #@14d
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@150
    goto/16 :goto_1

    #@152
    .line 1003
    .end local v4    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v5    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v7    # "flags":I
    .end local v8    # "focusedWindowAdded":Z
    .end local v9    # "i":I
    .end local v13    # "screenHeight":I
    .end local v14    # "screenWidth":I
    .end local v15    # "skipRemainingWindowsForTaskId":I
    .end local v16    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v17    # "task":Lcom/android/server/wm/Task;
    .end local v18    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v19    # "visibleWindowCount":I
    .end local v20    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v23    # "windowManager":Landroid/view/WindowManager;
    .end local v24    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v27

    #@153
    monitor-exit v28

    #@154
    throw v27

    #@155
    .line 1096
    .restart local v4    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .restart local v5    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v7    # "flags":I
    .restart local v8    # "focusedWindowAdded":Z
    .restart local v9    # "i":I
    .restart local v13    # "screenHeight":I
    .restart local v14    # "screenWidth":I
    .restart local v15    # "skipRemainingWindowsForTaskId":I
    .restart local v16    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v17    # "task":Lcom/android/server/wm/Task;
    .restart local v18    # "unaccountedSpace":Landroid/graphics/Region;
    .restart local v19    # "visibleWindowCount":I
    .restart local v20    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .restart local v23    # "windowManager":Landroid/view/WindowManager;
    .restart local v24    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_5
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Region;->isEmpty()Z

    #@158
    move-result v27

    #@159
    if-eqz v27, :cond_1

    #@15b
    .line 1102
    .end local v5    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v7    # "flags":I
    .end local v17    # "task":Lcom/android/server/wm/Task;
    .end local v24    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_6
    if-nez v8, :cond_7

    #@15d
    .line 1103
    add-int/lit8 v9, v19, -0x1

    #@15f
    :goto_2
    if-ltz v9, :cond_7

    #@161
    .line 1104
    move-object/from16 v0, v20

    #@163
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@166
    move-result-object v24

    #@167
    check-cast v24, Lcom/android/server/wm/WindowState;

    #@169
    .line 1105
    .restart local v24    # "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isFocused()Z

    #@16c
    move-result v27

    #@16d
    if-eqz v27, :cond_a

    #@16f
    .line 1107
    move-object/from16 v0, p0

    #@171
    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@173
    .line 1108
    .restart local v5    # "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@175
    move-object/from16 v1, v24

    #@177
    invoke-direct {v0, v1, v5}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    #@17a
    .line 1111
    move-object/from16 v0, v24

    #@17c
    invoke-static {v0, v5}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    #@17f
    move-result-object v21

    #@180
    .line 1113
    .restart local v21    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v21

    #@182
    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@184
    move-object/from16 v27, v0

    #@186
    move-object/from16 v0, v27

    #@188
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@18b
    .line 1114
    move-object/from16 v0, v25

    #@18d
    move-object/from16 v1, v21

    #@18f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@192
    .line 1121
    .end local v5    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v21    # "window":Landroid/view/WindowInfo;
    .end local v24    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_7
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    #@195
    move-result v22

    #@196
    .line 1122
    .local v22, "windowCount":I
    const/4 v9, 0x0

    #@197
    :goto_3
    move/from16 v0, v22

    #@199
    if-ge v9, v0, :cond_c

    #@19b
    .line 1123
    move-object/from16 v0, v25

    #@19d
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a0
    move-result-object v21

    #@1a1
    check-cast v21, Landroid/view/WindowInfo;

    #@1a3
    .line 1124
    .restart local v21    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v21

    #@1a5
    iget-object v0, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@1a7
    move-object/from16 v27, v0

    #@1a9
    move-object/from16 v0, v27

    #@1ab
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1ae
    move-result v27

    #@1af
    if-nez v27, :cond_8

    #@1b1
    .line 1125
    const/16 v27, 0x0

    #@1b3
    move-object/from16 v0, v27

    #@1b5
    move-object/from16 v1, v21

    #@1b7
    iput-object v0, v1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@1b9
    .line 1127
    :cond_8
    move-object/from16 v0, v21

    #@1bb
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@1bd
    move-object/from16 v27, v0

    #@1bf
    if-eqz v27, :cond_b

    #@1c1
    .line 1128
    move-object/from16 v0, v21

    #@1c3
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@1c5
    move-object/from16 v27, v0

    #@1c7
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    #@1ca
    move-result v6

    #@1cb
    .line 1129
    .local v6, "childTokenCount":I
    add-int/lit8 v10, v6, -0x1

    #@1cd
    .local v10, "j":I
    :goto_4
    if-ltz v10, :cond_b

    #@1cf
    .line 1130
    move-object/from16 v0, v21

    #@1d1
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@1d3
    move-object/from16 v27, v0

    #@1d5
    move-object/from16 v0, v27

    #@1d7
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1da
    move-result-object v27

    #@1db
    move-object/from16 v0, v27

    #@1dd
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1e0
    move-result v27

    #@1e1
    if-nez v27, :cond_9

    #@1e3
    .line 1131
    move-object/from16 v0, v21

    #@1e5
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@1e7
    move-object/from16 v27, v0

    #@1e9
    move-object/from16 v0, v27

    #@1eb
    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1ee
    .line 1129
    :cond_9
    add-int/lit8 v10, v10, -0x1

    #@1f0
    goto :goto_4

    #@1f1
    .line 1103
    .end local v6    # "childTokenCount":I
    .end local v10    # "j":I
    .end local v21    # "window":Landroid/view/WindowInfo;
    .end local v22    # "windowCount":I
    .restart local v24    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_a
    add-int/lit8 v9, v9, -0x1

    #@1f3
    goto/16 :goto_2

    #@1f5
    .line 1122
    .end local v24    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v21    # "window":Landroid/view/WindowInfo;
    .restart local v22    # "windowCount":I
    :cond_b
    add-int/lit8 v9, v9, 0x1

    #@1f7
    goto :goto_3

    #@1f8
    .line 1138
    .end local v21    # "window":Landroid/view/WindowInfo;
    :cond_c
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    #@1fb
    .line 1139
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    #@1fe
    .line 1142
    move-object/from16 v0, p0

    #@200
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@202
    move-object/from16 v27, v0

    #@204
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    #@207
    move-result v27

    #@208
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    #@20b
    move-result v29

    #@20c
    move/from16 v0, v27

    #@20e
    move/from16 v1, v29

    #@210
    if-eq v0, v1, :cond_10

    #@212
    .line 1144
    const/16 v26, 0x1

    #@214
    .line 1162
    :cond_d
    :goto_5
    if-eqz v26, :cond_e

    #@216
    .line 1163
    move-object/from16 v0, p0

    #@218
    move-object/from16 v1, v25

    #@21a
    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->cacheWindows(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21d
    :cond_e
    monitor-exit v28

    #@21e
    .line 1168
    if-eqz v26, :cond_f

    #@220
    .line 1172
    move-object/from16 v0, p0

    #@222
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    #@224
    move-object/from16 v27, v0

    #@226
    move-object/from16 v0, v27

    #@228
    move-object/from16 v1, v25

    #@22a
    invoke-interface {v0, v1}, Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    #@22d
    .line 1180
    :cond_f
    invoke-static/range {v25 .. v25}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    #@230
    .line 995
    return-void

    #@231
    .line 1145
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@235
    move-object/from16 v27, v0

    #@237
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    #@23a
    move-result v27

    #@23b
    if-eqz v27, :cond_11

    #@23d
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    #@240
    move-result v27

    #@241
    if-nez v27, :cond_d

    #@243
    .line 1149
    :cond_11
    const/4 v9, 0x0

    #@244
    :goto_6
    move/from16 v0, v22

    #@246
    if-ge v9, v0, :cond_d

    #@248
    .line 1150
    move-object/from16 v0, p0

    #@24a
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@24c
    move-object/from16 v27, v0

    #@24e
    move-object/from16 v0, v27

    #@250
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@253
    move-result-object v12

    #@254
    check-cast v12, Landroid/view/WindowInfo;

    #@256
    .line 1151
    .local v12, "oldWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, v25

    #@258
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25b
    move-result-object v11

    #@25c
    check-cast v11, Landroid/view/WindowInfo;

    #@25e
    .line 1155
    .local v11, "newWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, p0

    #@260
    invoke-direct {v0, v12, v11}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@263
    move-result v27

    #@264
    if-eqz v27, :cond_12

    #@266
    .line 1156
    const/16 v26, 0x1

    #@268
    .line 1157
    goto :goto_5

    #@269
    .line 1149
    :cond_12
    add-int/lit8 v9, v9, 0x1

    #@26b
    goto :goto_6
.end method

.method public performComputeChangedWindowsNotLocked()V
    .locals 2

    #@0
    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 985
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    #@9
    .line 983
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 989
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 990
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    #@b
    .line 991
    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    #@d
    .line 990
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@10
    .line 988
    :cond_0
    return-void
.end method
