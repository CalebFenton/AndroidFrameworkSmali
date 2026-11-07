.class Landroid/content/res/ColorStateList$1;
.super Ljava/lang/Object;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ColorStateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/res/ColorStateList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/res/ColorStateList;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 795
    .local v0, "N":I
    new-array v1, v0, [[I

    .line 796
    .local v1, "stateSpecs":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_12

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    aput-object v3, v1, v2

    .line 796
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 799
    .end local v2    # "i":I
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 800
    .local v2, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
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

    .line 786
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "size"    # I

    .line 789
    new-array v0, p1, [Landroid/content/res/ColorStateList;

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

    .line 786
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList$1;->newArray(I)[Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method
