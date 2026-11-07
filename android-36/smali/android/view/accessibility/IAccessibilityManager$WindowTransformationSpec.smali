.class public Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
.super Ljava/lang/Object;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowTransformationSpec"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist magnificationSpec:Landroid/view/MagnificationSpec;

.field public blacklist transformationMatrix:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2058
    new-instance v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec$1;

    invoke-direct {v0}, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 2105
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2106
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 2107
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 2109
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 2100
    const/4 v0, 0x0

    .line 2101
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 2102
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 2083
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2084
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2086
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5e

    .line 2087
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_5c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 2092
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 2095
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2087
    return-void

    .line 2093
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2088
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    .line 2089
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_5c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 2092
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 2095
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2089
    return-void

    .line 2093
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2090
    :cond_42
    :try_start_42
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MagnificationSpec;

    iput-object v2, p0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_5c

    .line 2092
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_56

    .line 2095
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2096
    nop

    .line 2097
    return-void

    .line 2093
    :cond_56
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2092
    :catchall_5c
    move-exception v2

    goto :goto_66

    .line 2086
    :cond_5e
    :try_start_5e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_5c

    .line 2092
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_66
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6f

    .line 2093
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2095
    :cond_6f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2096
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 2072
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2073
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2075
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2076
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 2077
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2078
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2079
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2080
    return-void
.end method
