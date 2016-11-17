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
    .line 938
    const-string/jumbo v0, "WindowManager"

    #@3
    .line 937
    sput-object v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->LOG_TAG:Ljava/lang/String;

    #@5
    .line 936
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    #@0
    .prologue
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 943
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    .line 942
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    #@a
    .line 945
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@11
    .line 947
    new-instance v0, Landroid/util/ArraySet;

    #@13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    #@18
    .line 949
    new-instance v0, Landroid/graphics/RectF;

    #@1a
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    #@1f
    .line 951
    new-instance v0, Landroid/graphics/Matrix;

    #@21
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    #@26
    .line 953
    new-instance v0, Landroid/graphics/Point;

    #@28
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@2d
    .line 955
    new-instance v0, Landroid/graphics/Rect;

    #@2f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@34
    .line 957
    new-instance v0, Landroid/graphics/Region;

    #@36
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    #@3b
    .line 959
    new-instance v0, Landroid/graphics/Region;

    #@3d
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    #@42
    .line 973
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@44
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    #@46
    .line 974
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@48
    .line 975
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    #@4a
    .line 976
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
    .line 977
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    #@5c
    move-result-wide v0

    #@5d
    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    #@5f
    .line 979
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    #@62
    .line 972
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
    .line 1231
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    .line 1232
    .local v3, "oldWindowCount":I
    add-int/lit8 v0, v3, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 1233
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
    .line 1232
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1235
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1b
    move-result v2

    #@1c
    .line 1236
    .local v2, "newWindowCount":I
    const/4 v0, 0x0

    #@1d
    :goto_1
    if-ge v0, v2, :cond_1

    #@1f
    .line 1237
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/view/WindowInfo;

    #@25
    .line 1238
    .local v1, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@27
    invoke-static {v1}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    #@2a
    move-result-object v5

    #@2b
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    .line 1236
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_1

    #@31
    .line 1230
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
    .line 1289
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    .line 1290
    .local v1, "windowCount":I
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 1291
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/view/WindowInfo;

    #@e
    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    #@11
    .line 1290
    add-int/lit8 v0, v0, -0x1

    #@13
    goto :goto_0

    #@14
    .line 1288
    :cond_0
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1179
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    #@2
    .line 1180
    .local v2, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@5
    .line 1181
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@7
    .line 1182
    .local v1, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@a
    .line 1185
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    #@c
    .line 1186
    .local v3, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@f
    .line 1187
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
    .line 1190
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    #@20
    .line 1191
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-static {p1, v0}, Lcom/android/server/wm/AccessibilityController;->-wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    #@23
    .line 1192
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@26
    .line 1195
    iget v4, v3, Landroid/graphics/RectF;->left:F

    #@28
    float-to-int v4, v4

    #@29
    iget v5, v3, Landroid/graphics/RectF;->top:F

    #@2b
    float-to-int v5, v5

    #@2c
    .line 1196
    iget v6, v3, Landroid/graphics/RectF;->right:F

    #@2e
    float-to-int v6, v6

    #@2f
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    #@31
    float-to-int v7, v7

    #@32
    .line 1195
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@35
    .line 1177
    return-void
.end method

.method private static isReportedWindowType(I)Z
    .locals 2
    .param p0, "windowType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1296
    const/16 v1, 0x7ed

    #@3
    if-eq p0, v1, :cond_0

    #@5
    .line 1297
    const/16 v1, 0x7dd

    #@7
    if-eq p0, v1, :cond_0

    #@9
    .line 1298
    const/16 v1, 0x7e5

    #@b
    if-eq p0, v1, :cond_0

    #@d
    .line 1299
    const/16 v1, 0x7ea

    #@f
    if-eq p0, v1, :cond_0

    #@11
    .line 1300
    const/16 v1, 0x7e0

    #@13
    if-eq p0, v1, :cond_0

    #@15
    .line 1301
    const/16 v1, 0x7e6

    #@17
    if-eq p0, v1, :cond_0

    #@19
    .line 1302
    const/16 v1, 0x7e2

    #@1b
    if-eq p0, v1, :cond_0

    #@1d
    .line 1303
    const/16 v1, 0x7eb

    #@1f
    if-eq p0, v1, :cond_0

    #@21
    .line 1304
    const/16 v1, 0x3ec

    #@23
    if-eq p0, v1, :cond_0

    #@25
    .line 1305
    const/16 v1, 0x7df

    #@27
    if-eq p0, v1, :cond_0

    #@29
    .line 1306
    const/16 v1, 0x7ee

    #@2b
    if-eq p0, v1, :cond_0

    #@2d
    const/4 v0, 0x1

    #@2e
    .line 1296
    :cond_0
    return v0
.end method

.method private static obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;
    .locals 7
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "boundsInScreen"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1201
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    #@3
    move-result-object v4

    #@4
    .line 1202
    .local v4, "window":Landroid/view/WindowInfo;
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@6
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@8
    iput v5, v4, Landroid/view/WindowInfo;->type:I

    #@a
    .line 1203
    iget v5, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@c
    iput v5, v4, Landroid/view/WindowInfo;->layer:I

    #@e
    .line 1204
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@10
    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v5

    #@14
    iput-object v5, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@16
    .line 1205
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@18
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    #@1a
    iput-object v5, v4, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    #@1c
    .line 1206
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1e
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@20
    iput v5, v4, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@22
    .line 1208
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@24
    .line 1209
    .local v0, "attachedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    #@26
    .line 1210
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@28
    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v5

    #@2c
    iput-object v5, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@2e
    .line 1213
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    #@31
    move-result v5

    #@32
    iput-boolean v5, v4, Landroid/view/WindowInfo;->focused:Z

    #@34
    .line 1214
    iget-object v5, v4, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@36
    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@39
    .line 1216
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@3b
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    #@3e
    move-result v2

    #@3f
    .line 1217
    .local v2, "childCount":I
    if-lez v2, :cond_2

    #@41
    .line 1218
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@43
    if-nez v5, :cond_1

    #@45
    .line 1219
    new-instance v5, Ljava/util/ArrayList;

    #@47
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@4a
    iput-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@4c
    .line 1221
    :cond_1
    const/4 v3, 0x0

    #@4d
    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@4f
    .line 1222
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@51
    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@57
    .line 1223
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
    .line 1221
    add-int/lit8 v3, v3, 0x1

    #@64
    goto :goto_0

    #@65
    .line 1227
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
    .line 1310
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@5
    move-result-object v0

    #@6
    .line 1312
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@9
    move-result-object v3

    #@a
    .line 1313
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@d
    move-result v2

    #@e
    .line 1314
    .local v2, "windowCount":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@11
    .line 1315
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@17
    .line 1316
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

    #@1d
    .line 1317
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    #@1f
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@22
    .line 1314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1309
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
    .line 1243
    if-ne p1, p2, :cond_0

    #@4
    .line 1244
    return v3

    #@5
    .line 1246
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 1247
    return v2

    #@8
    .line 1249
    :cond_1
    if-nez p2, :cond_2

    #@a
    .line 1250
    return v2

    #@b
    .line 1252
    :cond_2
    iget v0, p1, Landroid/view/WindowInfo;->type:I

    #@d
    iget v1, p2, Landroid/view/WindowInfo;->type:I

    #@f
    if-eq v0, v1, :cond_3

    #@11
    .line 1253
    return v2

    #@12
    .line 1255
    :cond_3
    iget-boolean v0, p1, Landroid/view/WindowInfo;->focused:Z

    #@14
    iget-boolean v1, p2, Landroid/view/WindowInfo;->focused:Z

    #@16
    if-eq v0, v1, :cond_4

    #@18
    .line 1256
    return v2

    #@19
    .line 1258
    :cond_4
    iget-object v0, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@1b
    if-nez v0, :cond_5

    #@1d
    .line 1259
    iget-object v0, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@1f
    if-eqz v0, :cond_6

    #@21
    .line 1260
    return v2

    #@22
    .line 1262
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
    .line 1263
    return v2

    #@2d
    .line 1265
    :cond_6
    iget-object v0, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@2f
    if-nez v0, :cond_7

    #@31
    .line 1266
    iget-object v0, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@33
    if-eqz v0, :cond_8

    #@35
    .line 1267
    return v2

    #@36
    .line 1269
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
    .line 1270
    return v2

    #@41
    .line 1272
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
    .line 1273
    return v2

    #@4c
    .line 1275
    :cond_9
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@4e
    if-eqz v0, :cond_a

    #@50
    iget-object v0, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@52
    if-eqz v0, :cond_a

    #@54
    .line 1276
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
    .line 1279
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
    .line 1280
    return v2

    #@69
    .line 1277
    :cond_b
    return v2

    #@6a
    .line 1282
    :cond_c
    iget v0, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@6c
    iget v1, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@6e
    if-eq v0, v1, :cond_d

    #@70
    .line 1283
    return v2

    #@71
    .line 1285
    :cond_d
    return v3
.end method


# virtual methods
.method public computeChangedWindows()V
    .locals 29

    #@0
    .prologue
    .line 999
    const/16 v25, 0x0

    #@2
    .line 1000
    .local v25, "windowsChanged":Z
    new-instance v24, Ljava/util/ArrayList;

    #@4
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 1002
    .local v24, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@b
    move-object/from16 v26, v0

    #@d
    move-object/from16 v0, v26

    #@f
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@11
    move-object/from16 v27, v0

    #@13
    monitor-enter v27

    #@14
    .line 1006
    :try_start_0
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@18
    move-object/from16 v26, v0

    #@1a
    move-object/from16 v0, v26

    #@1c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@1e
    move-object/from16 v26, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    if-nez v26, :cond_0

    #@22
    monitor-exit v27

    #@23
    .line 1007
    return-void

    #@24
    .line 1011
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    #@28
    move-object/from16 v26, v0

    #@2a
    const-string/jumbo v28, "window"

    #@2d
    move-object/from16 v0, v26

    #@2f
    move-object/from16 v1, v28

    #@31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@34
    move-result-object v22

    #@35
    .line 1010
    check-cast v22, Landroid/view/WindowManager;

    #@37
    .line 1012
    .local v22, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@3a
    move-result-object v26

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@3f
    move-object/from16 v28, v0

    #@41
    move-object/from16 v0, v26

    #@43
    move-object/from16 v1, v28

    #@45
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@48
    .line 1013
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@4c
    move-object/from16 v26, v0

    #@4e
    move-object/from16 v0, v26

    #@50
    iget v13, v0, Landroid/graphics/Point;->x:I

    #@52
    .line 1014
    .local v13, "screenWidth":I
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@56
    move-object/from16 v26, v0

    #@58
    move-object/from16 v0, v26

    #@5a
    iget v12, v0, Landroid/graphics/Point;->y:I

    #@5c
    .line 1016
    .local v12, "screenHeight":I
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    #@60
    move-object/from16 v17, v0

    #@62
    .line 1017
    .local v17, "unaccountedSpace":Landroid/graphics/Region;
    const/16 v26, 0x0

    #@64
    const/16 v28, 0x0

    #@66
    move-object/from16 v0, v17

    #@68
    move/from16 v1, v26

    #@6a
    move/from16 v2, v28

    #@6c
    invoke-virtual {v0, v1, v2, v13, v12}, Landroid/graphics/Region;->set(IIII)Z

    #@6f
    .line 1019
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    #@73
    move-object/from16 v19, v0

    #@75
    .line 1020
    .local v19, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    #@77
    move-object/from16 v1, v19

    #@79
    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    #@7c
    .line 1022
    move-object/from16 v0, p0

    #@7e
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    #@80
    .line 1023
    .local v3, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    #@83
    .line 1025
    const/4 v7, 0x0

    #@84
    .line 1027
    .local v7, "focusedWindowAdded":Z
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    #@87
    move-result v18

    #@88
    .line 1028
    .local v18, "visibleWindowCount":I
    const/4 v14, -0x1

    #@89
    .line 1029
    .local v14, "skipRemainingWindowsForTaskId":I
    new-instance v15, Ljava/util/HashSet;

    #@8b
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    #@8e
    .line 1030
    .local v15, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    add-int/lit8 v8, v18, -0x1

    #@90
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_5

    #@92
    .line 1031
    move-object/from16 v0, v19

    #@94
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@97
    move-result-object v23

    #@98
    check-cast v23, Lcom/android/server/wm/WindowState;

    #@9a
    .line 1032
    .local v23, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    #@9c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@9e
    move-object/from16 v26, v0

    #@a0
    move-object/from16 v0, v26

    #@a2
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a4
    .line 1033
    .local v6, "flags":I
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@a7
    move-result-object v16

    #@a8
    .line 1036
    .local v16, "task":Lcom/android/server/wm/Task;
    if-eqz v16, :cond_2

    #@aa
    move-object/from16 v0, v16

    #@ac
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    #@ae
    move/from16 v26, v0

    #@b0
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b3
    move-result-object v26

    #@b4
    move-object/from16 v0, v26

    #@b6
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@b9
    move-result v26

    #@ba
    if-eqz v26, :cond_2

    #@bc
    .line 1030
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, -0x1

    #@be
    goto :goto_0

    #@bf
    .line 1041
    :cond_2
    and-int/lit8 v26, v6, 0x10

    #@c1
    if-nez v26, :cond_1

    #@c3
    .line 1046
    move-object/from16 v0, p0

    #@c5
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@c7
    .line 1047
    .local v4, "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@c9
    move-object/from16 v1, v23

    #@cb
    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    #@ce
    .line 1050
    move-object/from16 v0, v17

    #@d0
    invoke-virtual {v0, v4}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    #@d3
    move-result v26

    #@d4
    if-nez v26, :cond_1

    #@d6
    .line 1055
    move-object/from16 v0, v23

    #@d8
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@da
    move-object/from16 v26, v0

    #@dc
    move-object/from16 v0, v26

    #@de
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@e0
    move/from16 v26, v0

    #@e2
    invoke-static/range {v26 .. v26}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    #@e5
    move-result v26

    #@e6
    if-eqz v26, :cond_3

    #@e8
    .line 1057
    move-object/from16 v0, v23

    #@ea
    invoke-static {v0, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    #@ed
    move-result-object v20

    #@ee
    .line 1058
    .local v20, "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v20

    #@f0
    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@f2
    move-object/from16 v26, v0

    #@f4
    move-object/from16 v0, v26

    #@f6
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f9
    .line 1059
    move-object/from16 v0, v24

    #@fb
    move-object/from16 v1, v20

    #@fd
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@100
    .line 1060
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->isFocused()Z

    #@103
    move-result v26

    #@104
    if-eqz v26, :cond_3

    #@106
    .line 1061
    const/4 v7, 0x1

    #@107
    .line 1068
    .end local v20    # "window":Landroid/view/WindowInfo;
    :cond_3
    move-object/from16 v0, v23

    #@109
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10b
    move-object/from16 v26, v0

    #@10d
    move-object/from16 v0, v26

    #@10f
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@111
    move/from16 v26, v0

    #@113
    .line 1069
    const/16 v28, 0x7f0

    #@115
    .line 1068
    move/from16 v0, v26

    #@117
    move/from16 v1, v28

    #@119
    if-eq v0, v1, :cond_4

    #@11b
    .line 1071
    sget-object v26, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    #@11d
    .line 1070
    move-object/from16 v0, v17

    #@11f
    move-object/from16 v1, v17

    #@121
    move-object/from16 v2, v26

    #@123
    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@126
    .line 1075
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->isEmpty()Z

    #@129
    move-result v26

    #@12a
    if-eqz v26, :cond_9

    #@12c
    .line 1096
    .end local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v6    # "flags":I
    .end local v16    # "task":Lcom/android/server/wm/Task;
    .end local v23    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_5
    if-nez v7, :cond_6

    #@12e
    .line 1097
    add-int/lit8 v8, v18, -0x1

    #@130
    :goto_2
    if-ltz v8, :cond_6

    #@132
    .line 1098
    move-object/from16 v0, v19

    #@134
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@137
    move-result-object v23

    #@138
    check-cast v23, Lcom/android/server/wm/WindowState;

    #@13a
    .line 1099
    .restart local v23    # "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->isFocused()Z

    #@13d
    move-result v26

    #@13e
    if-eqz v26, :cond_a

    #@140
    .line 1101
    move-object/from16 v0, p0

    #@142
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@144
    .line 1102
    .restart local v4    # "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@146
    move-object/from16 v1, v23

    #@148
    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    #@14b
    .line 1105
    move-object/from16 v0, v23

    #@14d
    invoke-static {v0, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    #@150
    move-result-object v20

    #@151
    .line 1107
    .restart local v20    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v20

    #@153
    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@155
    move-object/from16 v26, v0

    #@157
    move-object/from16 v0, v26

    #@159
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15c
    .line 1108
    move-object/from16 v0, v24

    #@15e
    move-object/from16 v1, v20

    #@160
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@163
    .line 1115
    .end local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v20    # "window":Landroid/view/WindowInfo;
    .end local v23    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_6
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    #@166
    move-result v21

    #@167
    .line 1116
    .local v21, "windowCount":I
    const/4 v8, 0x0

    #@168
    :goto_3
    move/from16 v0, v21

    #@16a
    if-ge v8, v0, :cond_c

    #@16c
    .line 1117
    move-object/from16 v0, v24

    #@16e
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@171
    move-result-object v20

    #@172
    check-cast v20, Landroid/view/WindowInfo;

    #@174
    .line 1118
    .restart local v20    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v20

    #@176
    iget-object v0, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@178
    move-object/from16 v26, v0

    #@17a
    move-object/from16 v0, v26

    #@17c
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@17f
    move-result v26

    #@180
    if-nez v26, :cond_7

    #@182
    .line 1119
    const/16 v26, 0x0

    #@184
    move-object/from16 v0, v26

    #@186
    move-object/from16 v1, v20

    #@188
    iput-object v0, v1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@18a
    .line 1121
    :cond_7
    move-object/from16 v0, v20

    #@18c
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@18e
    move-object/from16 v26, v0

    #@190
    if-eqz v26, :cond_b

    #@192
    .line 1122
    move-object/from16 v0, v20

    #@194
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@196
    move-object/from16 v26, v0

    #@198
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    #@19b
    move-result v5

    #@19c
    .line 1123
    .local v5, "childTokenCount":I
    add-int/lit8 v9, v5, -0x1

    #@19e
    .local v9, "j":I
    :goto_4
    if-ltz v9, :cond_b

    #@1a0
    .line 1124
    move-object/from16 v0, v20

    #@1a2
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@1a4
    move-object/from16 v26, v0

    #@1a6
    move-object/from16 v0, v26

    #@1a8
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1ab
    move-result-object v26

    #@1ac
    move-object/from16 v0, v26

    #@1ae
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1b1
    move-result v26

    #@1b2
    if-nez v26, :cond_8

    #@1b4
    .line 1125
    move-object/from16 v0, v20

    #@1b6
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@1b8
    move-object/from16 v26, v0

    #@1ba
    move-object/from16 v0, v26

    #@1bc
    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1bf
    .line 1123
    :cond_8
    add-int/lit8 v9, v9, -0x1

    #@1c1
    goto :goto_4

    #@1c2
    .line 1080
    .end local v5    # "childTokenCount":I
    .end local v9    # "j":I
    .end local v20    # "window":Landroid/view/WindowInfo;
    .end local v21    # "windowCount":I
    .restart local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v6    # "flags":I
    .restart local v16    # "task":Lcom/android/server/wm/Task;
    .restart local v23    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_9
    and-int/lit8 v26, v6, 0x28

    #@1c4
    if-nez v26, :cond_1

    #@1c6
    .line 1082
    if-eqz v16, :cond_5

    #@1c8
    .line 1085
    move-object/from16 v0, v16

    #@1ca
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    #@1cc
    move/from16 v26, v0

    #@1ce
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d1
    move-result-object v26

    #@1d2
    move-object/from16 v0, v26

    #@1d4
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d7
    goto/16 :goto_1

    #@1d9
    .line 1002
    .end local v3    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v6    # "flags":I
    .end local v7    # "focusedWindowAdded":Z
    .end local v8    # "i":I
    .end local v12    # "screenHeight":I
    .end local v13    # "screenWidth":I
    .end local v14    # "skipRemainingWindowsForTaskId":I
    .end local v15    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16    # "task":Lcom/android/server/wm/Task;
    .end local v17    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v18    # "visibleWindowCount":I
    .end local v19    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v22    # "windowManager":Landroid/view/WindowManager;
    .end local v23    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v26

    #@1da
    monitor-exit v27

    #@1db
    throw v26

    #@1dc
    .line 1097
    .restart local v3    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .restart local v7    # "focusedWindowAdded":Z
    .restart local v8    # "i":I
    .restart local v12    # "screenHeight":I
    .restart local v13    # "screenWidth":I
    .restart local v14    # "skipRemainingWindowsForTaskId":I
    .restart local v15    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v17    # "unaccountedSpace":Landroid/graphics/Region;
    .restart local v18    # "visibleWindowCount":I
    .restart local v19    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .restart local v22    # "windowManager":Landroid/view/WindowManager;
    .restart local v23    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_a
    add-int/lit8 v8, v8, -0x1

    #@1de
    goto/16 :goto_2

    #@1e0
    .line 1116
    .end local v23    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v20    # "window":Landroid/view/WindowInfo;
    .restart local v21    # "windowCount":I
    :cond_b
    add-int/lit8 v8, v8, 0x1

    #@1e2
    goto :goto_3

    #@1e3
    .line 1132
    .end local v20    # "window":Landroid/view/WindowInfo;
    :cond_c
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    #@1e6
    .line 1133
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    #@1e9
    .line 1136
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@1ed
    move-object/from16 v26, v0

    #@1ef
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    #@1f2
    move-result v26

    #@1f3
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    #@1f6
    move-result v28

    #@1f7
    move/from16 v0, v26

    #@1f9
    move/from16 v1, v28

    #@1fb
    if-eq v0, v1, :cond_10

    #@1fd
    .line 1138
    const/16 v25, 0x1

    #@1ff
    .line 1156
    :cond_d
    :goto_5
    if-eqz v25, :cond_e

    #@201
    .line 1157
    move-object/from16 v0, p0

    #@203
    move-object/from16 v1, v24

    #@205
    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->cacheWindows(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@208
    :cond_e
    monitor-exit v27

    #@209
    .line 1162
    if-eqz v25, :cond_f

    #@20b
    .line 1166
    move-object/from16 v0, p0

    #@20d
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    #@20f
    move-object/from16 v26, v0

    #@211
    move-object/from16 v0, v26

    #@213
    move-object/from16 v1, v24

    #@215
    invoke-interface {v0, v1}, Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    #@218
    .line 1174
    :cond_f
    invoke-static/range {v24 .. v24}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    #@21b
    .line 994
    return-void

    #@21c
    .line 1139
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    #@21e
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@220
    move-object/from16 v26, v0

    #@222
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    #@225
    move-result v26

    #@226
    if-eqz v26, :cond_11

    #@228
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    #@22b
    move-result v26

    #@22c
    if-nez v26, :cond_d

    #@22e
    .line 1143
    :cond_11
    const/4 v8, 0x0

    #@22f
    :goto_6
    move/from16 v0, v21

    #@231
    if-ge v8, v0, :cond_d

    #@233
    .line 1144
    move-object/from16 v0, p0

    #@235
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@237
    move-object/from16 v26, v0

    #@239
    move-object/from16 v0, v26

    #@23b
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23e
    move-result-object v11

    #@23f
    check-cast v11, Landroid/view/WindowInfo;

    #@241
    .line 1145
    .local v11, "oldWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, v24

    #@243
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@246
    move-result-object v10

    #@247
    check-cast v10, Landroid/view/WindowInfo;

    #@249
    .line 1149
    .local v10, "newWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, p0

    #@24b
    invoke-direct {v0, v11, v10}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@24e
    move-result v26

    #@24f
    if-eqz v26, :cond_12

    #@251
    .line 1150
    const/16 v25, 0x1

    #@253
    .line 1151
    goto :goto_5

    #@254
    .line 1143
    :cond_12
    add-int/lit8 v8, v8, 0x1

    #@256
    goto :goto_6
.end method

.method public performComputeChangedWindowsNotLocked()V
    .locals 2

    #@0
    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 984
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    #@9
    .line 982
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 988
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 989
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    #@b
    .line 990
    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    #@d
    .line 989
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@10
    .line 987
    :cond_0
    return-void
.end method
