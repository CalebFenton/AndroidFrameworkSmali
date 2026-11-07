.class Landroid/view/inputmethod/CorrectionInfo$1;
.super Ljava/lang/Object;
.source "CorrectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/CorrectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/inputmethod/CorrectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/CorrectionInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 94
    new-instance v0, Landroid/view/inputmethod/CorrectionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/inputmethod/CorrectionInfo;-><init>(Landroid/os/Parcel;Landroid/view/inputmethod/CorrectionInfo-IA;)V

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

    .line 92
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/CorrectionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/CorrectionInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/inputmethod/CorrectionInfo;
    .registers 3
    .param p1, "size"    # I

    .line 97
    new-array v0, p1, [Landroid/view/inputmethod/CorrectionInfo;

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

    .line 92
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/CorrectionInfo$1;->newArray(I)[Landroid/view/inputmethod/CorrectionInfo;

    move-result-object p1

    return-object p1
.end method
