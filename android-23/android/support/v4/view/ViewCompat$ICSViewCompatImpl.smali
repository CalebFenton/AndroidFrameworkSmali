.class Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSViewCompatImpl"
.end annotation


# static fields
.field static accessibilityDelegateCheckFailed:Z

.field static mAccessibilityDelegateField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1154
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    #@3
    .line 1152
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1152
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1207
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1209
    new-instance v1, Ljava/util/WeakHashMap;

    #@6
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    #@9
    .line 1208
    iput-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    #@b
    .line 1211
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@13
    .line 1212
    .local v0, "vpa":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    if-nez v0, :cond_1

    #@15
    .line 1213
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@17
    .end local v0    # "vpa":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    #@1a
    .line 1214
    .restart local v0    # "vpa":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    #@1c
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 1216
    :cond_1
    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 1157
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->canScrollHorizontally(Landroid/view/View;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 1161
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->canScrollVertically(Landroid/view/View;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1184
    sget-boolean v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1185
    return v2

    #@7
    .line 1187
    :cond_0
    sget-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    #@9
    if-nez v3, :cond_1

    #@b
    .line 1189
    :try_start_0
    const-class v3, Landroid/view/View;

    #@d
    .line 1190
    const-string/jumbo v4, "mAccessibilityDelegate"

    #@10
    .line 1189
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@13
    move-result-object v3

    #@14
    sput-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    #@16
    .line 1191
    sget-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    #@18
    const/4 v4, 0x1

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1198
    :cond_1
    :try_start_1
    sget-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@21
    move-result-object v3

    #@22
    if-eqz v3, :cond_2

    #@24
    :goto_0
    return v1

    #@25
    .line 1192
    :catch_0
    move-exception v0

    #@26
    .line 1193
    .local v0, "t":Ljava/lang/Throwable;
    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    #@28
    .line 1194
    return v2

    #@29
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    move v1, v2

    #@2a
    .line 1198
    goto :goto_0

    #@2b
    .line 1199
    :catch_1
    move-exception v0

    #@2c
    .line 1200
    .restart local v0    # "t":Ljava/lang/Throwable;
    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    #@2e
    .line 1201
    return v2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 1169
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 1168
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    #@0
    .prologue
    .line 1173
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatICS;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    #@7
    .line 1172
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 1165
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 1164
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delegate"    # Landroid/support/v4/view/AccessibilityDelegateCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1179
    if-nez p2, :cond_0

    #@3
    .line 1178
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatICS;->setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V

    #@6
    .line 1177
    return-void

    #@7
    .line 1179
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getBridge()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fitSystemWindows"    # Z

    #@0
    .prologue
    .line 1221
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->setFitsSystemWindows(Landroid/view/View;Z)V

    #@3
    .line 1220
    return-void
.end method
