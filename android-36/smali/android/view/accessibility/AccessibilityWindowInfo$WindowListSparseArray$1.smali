.class Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray$1;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1011
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;-><init>()V

    .line 1012
    .local v0, "array":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1013
    .local v1, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1014
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_28

    .line 1015
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .local v4, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    const-class v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p1, v4, v1, v5}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 1017
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->put(ILjava/lang/Object;)V

    .line 1014
    .end local v4    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1019
    .end local v3    # "i":I
    :cond_28
    return-object v0
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

    .line 1008
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .registers 3
    .param p1, "size"    # I

    .line 1023
    new-array v0, p1, [Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

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

    .line 1008
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray$1;->newArray(I)[Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    move-result-object p1

    return-object p1
.end method
