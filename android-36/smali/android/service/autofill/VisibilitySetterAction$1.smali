.class Landroid/service/autofill/VisibilitySetterAction$1;
.super Ljava/lang/Object;
.source "VisibilitySetterAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/VisibilitySetterAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/VisibilitySetterAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/VisibilitySetterAction;
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 159
    .local v0, "visibilities":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .line 160
    .local v1, "builder":Landroid/service/autofill/VisibilitySetterAction$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 161
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 162
    .local v3, "id":I
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 163
    .local v4, "visibility":I
    if-nez v1, :cond_1d

    .line 164
    new-instance v5, Landroid/service/autofill/VisibilitySetterAction$Builder;

    invoke-direct {v5, v3, v4}, Landroid/service/autofill/VisibilitySetterAction$Builder;-><init>(II)V

    move-object v1, v5

    .end local v1    # "builder":Landroid/service/autofill/VisibilitySetterAction$Builder;
    .local v5, "builder":Landroid/service/autofill/VisibilitySetterAction$Builder;
    goto :goto_20

    .line 166
    .end local v5    # "builder":Landroid/service/autofill/VisibilitySetterAction$Builder;
    .restart local v1    # "builder":Landroid/service/autofill/VisibilitySetterAction$Builder;
    :cond_1d
    invoke-virtual {v1, v3, v4}, Landroid/service/autofill/VisibilitySetterAction$Builder;->setVisibility(II)Landroid/service/autofill/VisibilitySetterAction$Builder;

    .line 160
    .end local v3    # "id":I
    .end local v4    # "visibility":I
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 169
    .end local v2    # "i":I
    :cond_23
    if-nez v1, :cond_27

    const/4 v2, 0x0

    goto :goto_2b

    :cond_27
    invoke-virtual {v1}, Landroid/service/autofill/VisibilitySetterAction$Builder;->build()Landroid/service/autofill/VisibilitySetterAction;

    move-result-object v2

    :goto_2b
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

    .line 151
    invoke-virtual {p0, p1}, Landroid/service/autofill/VisibilitySetterAction$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/VisibilitySetterAction;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/VisibilitySetterAction;
    .registers 3
    .param p1, "size"    # I

    .line 175
    new-array v0, p1, [Landroid/service/autofill/VisibilitySetterAction;

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

    .line 151
    invoke-virtual {p0, p1}, Landroid/service/autofill/VisibilitySetterAction$1;->newArray(I)[Landroid/service/autofill/VisibilitySetterAction;

    move-result-object p1

    return-object p1
.end method
