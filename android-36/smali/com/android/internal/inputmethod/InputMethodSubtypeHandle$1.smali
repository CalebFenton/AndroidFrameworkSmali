.class Lcom/android/internal/inputmethod/InputMethodSubtypeHandle$1;
.super Ljava/lang/Object;
.source "InputMethodSubtypeHandle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Ljava/lang/String;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v0

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

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .registers 3
    .param p1, "size"    # I

    .line 233
    new-array v0, p1, [Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

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

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle$1;->newArray(I)[Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object p1

    return-object p1
.end method
