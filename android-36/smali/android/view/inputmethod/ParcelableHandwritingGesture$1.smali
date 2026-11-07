.class Landroid/view/inputmethod/ParcelableHandwritingGesture$1;
.super Ljava/lang/Object;
.source "ParcelableHandwritingGesture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ParcelableHandwritingGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/inputmethod/ParcelableHandwritingGesture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/ParcelableHandwritingGesture;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, "gestureType":I
    new-instance v1, Landroid/view/inputmethod/ParcelableHandwritingGesture;

    invoke-static {v0, p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->-$$Nest$smcreateFromParcelInternal(ILandroid/os/Parcel;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/inputmethod/ParcelableHandwritingGesture;-><init>(Landroid/view/inputmethod/HandwritingGesture;Landroid/view/inputmethod/ParcelableHandwritingGesture-IA;)V

    return-object v1
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

    .line 88
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/ParcelableHandwritingGesture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/inputmethod/ParcelableHandwritingGesture;
    .registers 3
    .param p1, "size"    # I

    .line 97
    new-array v0, p1, [Landroid/view/inputmethod/ParcelableHandwritingGesture;

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

    .line 88
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture$1;->newArray(I)[Landroid/view/inputmethod/ParcelableHandwritingGesture;

    move-result-object p1

    return-object p1
.end method
