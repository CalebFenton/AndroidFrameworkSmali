.class Landroid/view/inputmethod/EditorBoundsInfo$1;
.super Ljava/lang/Object;
.source "EditorBoundsInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/EditorBoundsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/inputmethod/EditorBoundsInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/EditorBoundsInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 120
    new-instance v0, Landroid/view/inputmethod/EditorBoundsInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/inputmethod/EditorBoundsInfo;-><init>(Landroid/os/Parcel;Landroid/view/inputmethod/EditorBoundsInfo-IA;)V

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

    .line 117
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/EditorBoundsInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/inputmethod/EditorBoundsInfo;
    .registers 3
    .param p1, "size"    # I

    .line 125
    new-array v0, p1, [Landroid/view/inputmethod/EditorBoundsInfo;

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

    .line 117
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/EditorBoundsInfo$1;->newArray(I)[Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object p1

    return-object p1
.end method
