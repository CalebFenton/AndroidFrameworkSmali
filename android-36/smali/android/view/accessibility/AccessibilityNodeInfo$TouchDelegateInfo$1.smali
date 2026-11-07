.class Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 7966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 7969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 7970
    .local v0, "size":I
    if-nez v0, :cond_8

    .line 7971
    const/4 v1, 0x0

    return-object v1

    .line 7973
    :cond_8
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 7974
    .local v1, "targetMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/graphics/Region;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_26

    .line 7975
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    .line 7976
    .local v3, "region":Landroid/graphics/Region;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 7977
    .local v4, "accessibilityId":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7974
    .end local v3    # "region":Landroid/graphics/Region;
    .end local v4    # "accessibilityId":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 7979
    .end local v2    # "i":I
    :cond_26
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;-><init>(Landroid/util/ArrayMap;Z)V

    .line 7981
    .local v2, "touchDelegateInfo":Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 7966
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    .registers 3
    .param p1, "size"    # I

    .line 7986
    new-array v0, p1, [Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 7966
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo$1;->newArray(I)[Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    move-result-object p1

    return-object p1
.end method
