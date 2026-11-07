.class public final Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchDelegateInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mConnectionId:I

.field private blacklist mTargetMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/graphics/Region;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWindowId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTargetMap(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->setConnectionId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetWindowId(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->setWindowId(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 7965
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/util/ArrayMap;Z)V
    .registers 5
    .param p2, "doCopy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/graphics/Region;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 7864
    .local p1, "targetMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/graphics/Region;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7865
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 7866
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 7865
    :goto_19
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 7867
    if-eqz p2, :cond_2f

    .line 7868
    new-instance v0, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    .line 7869
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto :goto_31

    .line 7871
    :cond_2f
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    .line 7873
    :goto_31
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/graphics/Region;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7845
    .local p1, "targetMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Region;Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7846
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 7847
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-interface {p1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 7846
    :goto_19
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 7848
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    .line 7849
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 7850
    .local v1, "region":Landroid/graphics/Region;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7851
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7852
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "view":Landroid/view/View;
    goto :goto_2f

    .line 7853
    :cond_50
    return-void
.end method

.method private blacklist setConnectionId(I)V
    .registers 2
    .param p1, "connectionId"    # I

    .line 7881
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mConnectionId:I

    .line 7882
    return-void
.end method

.method private blacklist setWindowId(I)V
    .registers 2
    .param p1, "windowId"    # I

    .line 7890
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mWindowId:I

    .line 7891
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 7945
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccessibilityIdForRegion(Landroid/graphics/Region;)J
    .registers 4
    .param p1, "region"    # Landroid/graphics/Region;

    .line 7937
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getRegionAt(I)Landroid/graphics/Region;
    .registers 3
    .param p1, "index"    # I

    .line 7910
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    return-object v0
.end method

.method public whitelist getRegionCount()I
    .registers 2

    .line 7899
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getTargetForRegion(Landroid/graphics/Region;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 6
    .param p1, "region"    # Landroid/graphics/Region;

    .line 7924
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mWindowId:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$smgetNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7953
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7954
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 7955
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 7956
    .local v1, "region":Landroid/graphics/Region;
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->mTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 7957
    .local v2, "accessibilityId":Ljava/lang/Long;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7958
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 7954
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "accessibilityId":Ljava/lang/Long;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 7960
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method
