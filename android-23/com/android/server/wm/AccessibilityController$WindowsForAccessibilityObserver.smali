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
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowsForAccessibilityObserver"


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
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    #@0
    .prologue
    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 918
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    .line 917
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    #@a
    .line 920
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@11
    .line 922
    new-instance v0, Landroid/util/ArraySet;

    #@13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    #@18
    .line 924
    new-instance v0, Landroid/graphics/RectF;

    #@1a
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    #@1f
    .line 926
    new-instance v0, Landroid/graphics/Matrix;

    #@21
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    #@26
    .line 928
    new-instance v0, Landroid/graphics/Point;

    #@28
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@2d
    .line 930
    new-instance v0, Landroid/graphics/Rect;

    #@2f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@34
    .line 932
    new-instance v0, Landroid/graphics/Region;

    #@36
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    #@3b
    .line 934
    new-instance v0, Landroid/graphics/Region;

    #@3d
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    #@42
    .line 948
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@44
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    #@46
    .line 949
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@48
    .line 950
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    #@4a
    .line 951
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
    .line 952
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    #@5c
    move-result-wide v0

    #@5d
    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    #@5f
    .line 954
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    #@62
    .line 947
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
    .line 1187
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    .line 1188
    .local v3, "oldWindowCount":I
    add-int/lit8 v0, v3, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 1189
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
    .line 1188
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1191
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1b
    move-result v2

    #@1c
    .line 1192
    .local v2, "newWindowCount":I
    const/4 v0, 0x0

    #@1d
    :goto_1
    if-ge v0, v2, :cond_1

    #@1f
    .line 1193
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/view/WindowInfo;

    #@25
    .line 1194
    .local v1, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@27
    invoke-static {v1}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    #@2a
    move-result-object v5

    #@2b
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    .line 1192
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_1

    #@31
    .line 1186
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
    .line 1239
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    .line 1240
    .local v1, "windowCount":I
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 1241
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/view/WindowInfo;

    #@e
    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    #@11
    .line 1240
    add-int/lit8 v0, v0, -0x1

    #@13
    goto :goto_0

    #@14
    .line 1238
    :cond_0
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1137
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    #@2
    .line 1138
    .local v2, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@5
    .line 1139
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@7
    .line 1140
    .local v1, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@a
    .line 1143
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    #@c
    .line 1144
    .local v3, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@f
    .line 1145
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
    .line 1148
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    #@20
    .line 1149
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-static {p1, v0}, Lcom/android/server/wm/AccessibilityController;->-wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    #@23
    .line 1150
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@26
    .line 1153
    iget v4, v3, Landroid/graphics/RectF;->left:F

    #@28
    float-to-int v4, v4

    #@29
    iget v5, v3, Landroid/graphics/RectF;->top:F

    #@2b
    float-to-int v5, v5

    #@2c
    .line 1154
    iget v6, v3, Landroid/graphics/RectF;->right:F

    #@2e
    float-to-int v6, v6

    #@2f
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    #@31
    float-to-int v7, v7

    #@32
    .line 1153
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@35
    .line 1135
    return-void
.end method

.method private static isReportedWindowType(I)Z
    .locals 2
    .param p0, "windowType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1246
    const/16 v1, 0x7ed

    #@3
    if-eq p0, v1, :cond_0

    #@5
    .line 1247
    const/16 v1, 0x7dd

    #@7
    if-eq p0, v1, :cond_0

    #@9
    .line 1248
    const/16 v1, 0x7e5

    #@b
    if-eq p0, v1, :cond_0

    #@d
    .line 1249
    const/16 v1, 0x7ea

    #@f
    if-eq p0, v1, :cond_0

    #@11
    .line 1250
    const/16 v1, 0x7e0

    #@13
    if-eq p0, v1, :cond_0

    #@15
    .line 1251
    const/16 v1, 0x7e6

    #@17
    if-eq p0, v1, :cond_0

    #@19
    .line 1252
    const/16 v1, 0x7e2

    #@1b
    if-eq p0, v1, :cond_0

    #@1d
    .line 1253
    const/16 v1, 0x7eb

    #@1f
    if-eq p0, v1, :cond_0

    #@21
    .line 1254
    const/16 v1, 0x3ec

    #@23
    if-eq p0, v1, :cond_0

    #@25
    .line 1255
    const/16 v1, 0x7df

    #@27
    if-eq p0, v1, :cond_0

    #@29
    .line 1256
    const/16 v1, 0x7ee

    #@2b
    if-eq p0, v1, :cond_0

    #@2d
    const/4 v0, 0x1

    #@2e
    .line 1246
    :cond_0
    return v0
.end method

.method private static obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;
    .locals 7
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "boundsInScreen"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1159
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    #@3
    move-result-object v4

    #@4
    .line 1160
    .local v4, "window":Landroid/view/WindowInfo;
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@6
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@8
    iput v5, v4, Landroid/view/WindowInfo;->type:I

    #@a
    .line 1161
    iget v5, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@c
    iput v5, v4, Landroid/view/WindowInfo;->layer:I

    #@e
    .line 1162
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@10
    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v5

    #@14
    iput-object v5, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@16
    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@18
    .line 1165
    .local v0, "attachedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    #@1a
    .line 1166
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@1c
    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v5

    #@20
    iput-object v5, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@22
    .line 1169
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    #@25
    move-result v5

    #@26
    iput-boolean v5, v4, Landroid/view/WindowInfo;->focused:Z

    #@28
    .line 1170
    iget-object v5, v4, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@2a
    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2d
    .line 1172
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@2f
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    #@32
    move-result v2

    #@33
    .line 1173
    .local v2, "childCount":I
    if-lez v2, :cond_2

    #@35
    .line 1174
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@37
    if-nez v5, :cond_1

    #@39
    .line 1175
    new-instance v5, Ljava/util/ArrayList;

    #@3b
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@3e
    iput-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@40
    .line 1177
    :cond_1
    const/4 v3, 0x0

    #@41
    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@43
    .line 1178
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@45
    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@4b
    .line 1179
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@4d
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@4f
    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@52
    move-result-object v6

    #@53
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@56
    .line 1177
    add-int/lit8 v3, v3, 0x1

    #@58
    goto :goto_0

    #@59
    .line 1183
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
    .line 1260
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@5
    move-result-object v0

    #@6
    .line 1262
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@9
    move-result-object v3

    #@a
    .line 1263
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@d
    move-result v2

    #@e
    .line 1264
    .local v2, "windowCount":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@11
    .line 1265
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@17
    .line 1266
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

    #@1d
    .line 1267
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    #@1f
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@22
    .line 1264
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1259
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
    .line 1199
    if-ne p1, p2, :cond_0

    #@4
    .line 1200
    return v3

    #@5
    .line 1202
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 1203
    return v2

    #@8
    .line 1205
    :cond_1
    if-nez p2, :cond_2

    #@a
    .line 1206
    return v2

    #@b
    .line 1208
    :cond_2
    iget v0, p1, Landroid/view/WindowInfo;->type:I

    #@d
    iget v1, p2, Landroid/view/WindowInfo;->type:I

    #@f
    if-eq v0, v1, :cond_3

    #@11
    .line 1209
    return v2

    #@12
    .line 1211
    :cond_3
    iget-boolean v0, p1, Landroid/view/WindowInfo;->focused:Z

    #@14
    iget-boolean v1, p2, Landroid/view/WindowInfo;->focused:Z

    #@16
    if-eq v0, v1, :cond_4

    #@18
    .line 1212
    return v2

    #@19
    .line 1214
    :cond_4
    iget-object v0, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@1b
    if-nez v0, :cond_5

    #@1d
    .line 1215
    iget-object v0, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@1f
    if-eqz v0, :cond_6

    #@21
    .line 1216
    return v2

    #@22
    .line 1218
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
    .line 1219
    return v2

    #@2d
    .line 1221
    :cond_6
    iget-object v0, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@2f
    if-nez v0, :cond_7

    #@31
    .line 1222
    iget-object v0, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@33
    if-eqz v0, :cond_8

    #@35
    .line 1223
    return v2

    #@36
    .line 1225
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
    .line 1226
    return v2

    #@41
    .line 1228
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
    .line 1229
    return v2

    #@4c
    .line 1231
    :cond_9
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@4e
    if-eqz v0, :cond_a

    #@50
    iget-object v0, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@52
    if-eqz v0, :cond_a

    #@54
    .line 1232
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
    .line 1235
    :cond_a
    return v3

    #@5f
    .line 1233
    :cond_b
    return v2
.end method


# virtual methods
.method public computeChangedWindows()V
    .locals 25

    #@0
    .prologue
    .line 974
    const/16 v21, 0x0

    #@2
    .line 975
    .local v21, "windowsChanged":Z
    new-instance v20, Ljava/util/ArrayList;

    #@4
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 977
    .local v20, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@b
    move-object/from16 v22, v0

    #@d
    move-object/from16 v0, v22

    #@f
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@11
    move-object/from16 v23, v0

    #@13
    monitor-enter v23

    #@14
    .line 981
    :try_start_0
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@18
    move-object/from16 v22, v0

    #@1a
    move-object/from16 v0, v22

    #@1c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@1e
    move-object/from16 v22, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    if-nez v22, :cond_0

    #@22
    monitor-exit v23

    #@23
    .line 982
    return-void

    #@24
    .line 986
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    #@28
    move-object/from16 v22, v0

    #@2a
    const-string/jumbo v24, "window"

    #@2d
    move-object/from16 v0, v22

    #@2f
    move-object/from16 v1, v24

    #@31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@34
    move-result-object v18

    #@35
    .line 985
    check-cast v18, Landroid/view/WindowManager;

    #@37
    .line 987
    .local v18, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@3a
    move-result-object v22

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@3f
    move-object/from16 v24, v0

    #@41
    move-object/from16 v0, v22

    #@43
    move-object/from16 v1, v24

    #@45
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@48
    .line 988
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@4c
    move-object/from16 v22, v0

    #@4e
    move-object/from16 v0, v22

    #@50
    iget v12, v0, Landroid/graphics/Point;->x:I

    #@52
    .line 989
    .local v12, "screenWidth":I
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    #@56
    move-object/from16 v22, v0

    #@58
    move-object/from16 v0, v22

    #@5a
    iget v11, v0, Landroid/graphics/Point;->y:I

    #@5c
    .line 991
    .local v11, "screenHeight":I
    move-object/from16 v0, p0

    #@5e
    iget-object v13, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    #@60
    .line 992
    .local v13, "unaccountedSpace":Landroid/graphics/Region;
    const/16 v22, 0x0

    #@62
    const/16 v24, 0x0

    #@64
    move/from16 v0, v22

    #@66
    move/from16 v1, v24

    #@68
    invoke-virtual {v13, v0, v1, v12, v11}, Landroid/graphics/Region;->set(IIII)Z

    #@6b
    .line 994
    move-object/from16 v0, p0

    #@6d
    iget-object v15, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    #@6f
    .line 995
    .local v15, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    #@71
    invoke-direct {v0, v15}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    #@74
    .line 997
    move-object/from16 v0, p0

    #@76
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    #@78
    .line 998
    .local v2, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    #@7b
    .line 1000
    const/4 v6, 0x0

    #@7c
    .line 1002
    .local v6, "focusedWindowAdded":Z
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    #@7f
    move-result v14

    #@80
    .line 1003
    .local v14, "visibleWindowCount":I
    add-int/lit8 v7, v14, -0x1

    #@82
    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_5

    #@84
    .line 1004
    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@87
    move-result-object v19

    #@88
    check-cast v19, Lcom/android/server/wm/WindowState;

    #@8a
    .line 1005
    .local v19, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v19

    #@8c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@8e
    move-object/from16 v22, v0

    #@90
    move-object/from16 v0, v22

    #@92
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@94
    .line 1008
    .local v5, "flags":I
    and-int/lit8 v22, v5, 0x10

    #@96
    if-eqz v22, :cond_2

    #@98
    .line 1003
    :cond_1
    add-int/lit8 v7, v7, -0x1

    #@9a
    goto :goto_0

    #@9b
    .line 1013
    :cond_2
    move-object/from16 v0, p0

    #@9d
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@9f
    .line 1014
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@a1
    move-object/from16 v1, v19

    #@a3
    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    #@a6
    .line 1017
    invoke-virtual {v13, v3}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    #@a9
    move-result v22

    #@aa
    if-nez v22, :cond_1

    #@ac
    .line 1022
    move-object/from16 v0, v19

    #@ae
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@b0
    move-object/from16 v22, v0

    #@b2
    move-object/from16 v0, v22

    #@b4
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@b6
    move/from16 v22, v0

    #@b8
    invoke-static/range {v22 .. v22}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    #@bb
    move-result v22

    #@bc
    if-eqz v22, :cond_3

    #@be
    .line 1024
    move-object/from16 v0, v19

    #@c0
    invoke-static {v0, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    #@c3
    move-result-object v16

    #@c4
    .line 1025
    .local v16, "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v16

    #@c6
    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@c8
    move-object/from16 v22, v0

    #@ca
    move-object/from16 v0, v22

    #@cc
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@cf
    .line 1026
    move-object/from16 v0, v20

    #@d1
    move-object/from16 v1, v16

    #@d3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d6
    .line 1027
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->isFocused()Z

    #@d9
    move-result v22

    #@da
    if-eqz v22, :cond_3

    #@dc
    .line 1028
    const/4 v6, 0x1

    #@dd
    .line 1035
    .end local v16    # "window":Landroid/view/WindowInfo;
    :cond_3
    move-object/from16 v0, v19

    #@df
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@e1
    move-object/from16 v22, v0

    #@e3
    move-object/from16 v0, v22

    #@e5
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@e7
    move/from16 v22, v0

    #@e9
    .line 1036
    const/16 v24, 0x7f0

    #@eb
    .line 1035
    move/from16 v0, v22

    #@ed
    move/from16 v1, v24

    #@ef
    if-eq v0, v1, :cond_4

    #@f1
    .line 1038
    sget-object v22, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    #@f3
    .line 1037
    move-object/from16 v0, v22

    #@f5
    invoke-virtual {v13, v3, v13, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@f8
    .line 1042
    :cond_4
    invoke-virtual {v13}, Landroid/graphics/Region;->isEmpty()Z

    #@fb
    move-result v22

    #@fc
    if-eqz v22, :cond_9

    #@fe
    .line 1054
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v5    # "flags":I
    .end local v19    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_5
    :goto_1
    if-nez v6, :cond_6

    #@100
    .line 1055
    add-int/lit8 v7, v14, -0x1

    #@102
    :goto_2
    if-ltz v7, :cond_6

    #@104
    .line 1056
    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@107
    move-result-object v19

    #@108
    check-cast v19, Lcom/android/server/wm/WindowState;

    #@10a
    .line 1057
    .restart local v19    # "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->isFocused()Z

    #@10d
    move-result v22

    #@10e
    if-eqz v22, :cond_a

    #@110
    .line 1059
    move-object/from16 v0, p0

    #@112
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    #@114
    .line 1060
    .restart local v3    # "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@116
    move-object/from16 v1, v19

    #@118
    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    #@11b
    .line 1063
    move-object/from16 v0, v19

    #@11d
    invoke-static {v0, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    #@120
    move-result-object v16

    #@121
    .line 1065
    .restart local v16    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v16

    #@123
    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@125
    move-object/from16 v22, v0

    #@127
    move-object/from16 v0, v22

    #@129
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@12c
    .line 1066
    move-object/from16 v0, v20

    #@12e
    move-object/from16 v1, v16

    #@130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@133
    .line 1073
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v16    # "window":Landroid/view/WindowInfo;
    .end local v19    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    #@136
    move-result v17

    #@137
    .line 1074
    .local v17, "windowCount":I
    const/4 v7, 0x0

    #@138
    :goto_3
    move/from16 v0, v17

    #@13a
    if-ge v7, v0, :cond_c

    #@13c
    .line 1075
    move-object/from16 v0, v20

    #@13e
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@141
    move-result-object v16

    #@142
    check-cast v16, Landroid/view/WindowInfo;

    #@144
    .line 1076
    .restart local v16    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v16

    #@146
    iget-object v0, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@148
    move-object/from16 v22, v0

    #@14a
    move-object/from16 v0, v22

    #@14c
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@14f
    move-result v22

    #@150
    if-nez v22, :cond_7

    #@152
    .line 1077
    const/16 v22, 0x0

    #@154
    move-object/from16 v0, v22

    #@156
    move-object/from16 v1, v16

    #@158
    iput-object v0, v1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@15a
    .line 1079
    :cond_7
    move-object/from16 v0, v16

    #@15c
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@15e
    move-object/from16 v22, v0

    #@160
    if-eqz v22, :cond_b

    #@162
    .line 1080
    move-object/from16 v0, v16

    #@164
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@166
    move-object/from16 v22, v0

    #@168
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@16b
    move-result v4

    #@16c
    .line 1081
    .local v4, "childTokenCount":I
    add-int/lit8 v8, v4, -0x1

    #@16e
    .local v8, "j":I
    :goto_4
    if-ltz v8, :cond_b

    #@170
    .line 1082
    move-object/from16 v0, v16

    #@172
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@174
    move-object/from16 v22, v0

    #@176
    move-object/from16 v0, v22

    #@178
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17b
    move-result-object v22

    #@17c
    move-object/from16 v0, v22

    #@17e
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@181
    move-result v22

    #@182
    if-nez v22, :cond_8

    #@184
    .line 1083
    move-object/from16 v0, v16

    #@186
    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@188
    move-object/from16 v22, v0

    #@18a
    move-object/from16 v0, v22

    #@18c
    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@18f
    .line 1081
    :cond_8
    add-int/lit8 v8, v8, -0x1

    #@191
    goto :goto_4

    #@192
    .line 1047
    .end local v4    # "childTokenCount":I
    .end local v8    # "j":I
    .end local v16    # "window":Landroid/view/WindowInfo;
    .end local v17    # "windowCount":I
    .restart local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v5    # "flags":I
    .restart local v19    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_9
    and-int/lit8 v22, v5, 0x28

    #@194
    if-nez v22, :cond_1

    #@196
    goto/16 :goto_1

    #@198
    .line 1055
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v5    # "flags":I
    :cond_a
    add-int/lit8 v7, v7, -0x1

    #@19a
    goto/16 :goto_2

    #@19c
    .line 1074
    .end local v19    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v16    # "window":Landroid/view/WindowInfo;
    .restart local v17    # "windowCount":I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    #@19e
    goto :goto_3

    #@19f
    .line 1090
    .end local v16    # "window":Landroid/view/WindowInfo;
    :cond_c
    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    #@1a2
    .line 1091
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    #@1a5
    .line 1094
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@1a9
    move-object/from16 v22, v0

    #@1ab
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@1ae
    move-result v22

    #@1af
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    #@1b2
    move-result v24

    #@1b3
    move/from16 v0, v22

    #@1b5
    move/from16 v1, v24

    #@1b7
    if-eq v0, v1, :cond_10

    #@1b9
    .line 1096
    const/16 v21, 0x1

    #@1bb
    .line 1114
    :cond_d
    :goto_5
    if-eqz v21, :cond_e

    #@1bd
    .line 1115
    move-object/from16 v0, p0

    #@1bf
    move-object/from16 v1, v20

    #@1c1
    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->cacheWindows(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c4
    :cond_e
    monitor-exit v23

    #@1c5
    .line 1120
    if-eqz v21, :cond_f

    #@1c7
    .line 1124
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    #@1cb
    move-object/from16 v22, v0

    #@1cd
    move-object/from16 v0, v22

    #@1cf
    move-object/from16 v1, v20

    #@1d1
    invoke-interface {v0, v1}, Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    #@1d4
    .line 1132
    :cond_f
    invoke-static/range {v20 .. v20}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    #@1d7
    .line 969
    return-void

    #@1d8
    .line 1097
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    #@1da
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@1dc
    move-object/from16 v22, v0

    #@1de
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    #@1e1
    move-result v22

    #@1e2
    if-eqz v22, :cond_11

    #@1e4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    #@1e7
    move-result v22

    #@1e8
    if-nez v22, :cond_d

    #@1ea
    .line 1101
    :cond_11
    const/4 v7, 0x0

    #@1eb
    :goto_6
    move/from16 v0, v17

    #@1ed
    if-ge v7, v0, :cond_d

    #@1ef
    .line 1102
    move-object/from16 v0, p0

    #@1f1
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    #@1f3
    move-object/from16 v22, v0

    #@1f5
    move-object/from16 v0, v22

    #@1f7
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1fa
    move-result-object v10

    #@1fb
    check-cast v10, Landroid/view/WindowInfo;

    #@1fd
    .line 1103
    .local v10, "oldWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, v20

    #@1ff
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@202
    move-result-object v9

    #@203
    check-cast v9, Landroid/view/WindowInfo;

    #@205
    .line 1107
    .local v9, "newWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, p0

    #@207
    invoke-direct {v0, v10, v9}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20a
    move-result v22

    #@20b
    if-eqz v22, :cond_12

    #@20d
    .line 1108
    const/16 v21, 0x1

    #@20f
    .line 1109
    goto :goto_5

    #@210
    .line 1101
    :cond_12
    add-int/lit8 v7, v7, 0x1

    #@212
    goto :goto_6

    #@213
    .line 977
    .end local v2    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v6    # "focusedWindowAdded":Z
    .end local v7    # "i":I
    .end local v9    # "newWindow":Landroid/view/WindowInfo;
    .end local v10    # "oldWindow":Landroid/view/WindowInfo;
    .end local v11    # "screenHeight":I
    .end local v12    # "screenWidth":I
    .end local v13    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v14    # "visibleWindowCount":I
    .end local v15    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v17    # "windowCount":I
    .end local v18    # "windowManager":Landroid/view/WindowManager;
    :catchall_0
    move-exception v22

    #@214
    monitor-exit v23

    #@215
    throw v22
.end method

.method public performComputeChangedWindowsNotLocked()V
    .locals 2

    #@0
    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 959
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    #@9
    .line 957
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 963
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 964
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    #@b
    .line 965
    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    #@d
    .line 964
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@10
    .line 962
    :cond_0
    return-void
.end method
