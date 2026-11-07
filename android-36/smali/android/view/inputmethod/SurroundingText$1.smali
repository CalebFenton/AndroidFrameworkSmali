.class Landroid/view/inputmethod/SurroundingText$1;
.super Ljava/lang/Object;
.source "SurroundingText.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/SurroundingText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/inputmethod/SurroundingText;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/SurroundingText;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 145
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 146
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 147
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .local v1, "selectionHead":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, "selectionEnd":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .local v3, "offset":I
    new-instance v4, Landroid/view/inputmethod/SurroundingText;

    .line 151
    if-nez v0, :cond_1b

    const-string v5, ""

    goto :goto_1c

    :cond_1b
    move-object v5, v0

    :goto_1c
    invoke-direct {v4, v5, v1, v2, v3}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    .line 150
    return-object v4
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

    .line 142
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/SurroundingText$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/SurroundingText;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/inputmethod/SurroundingText;
    .registers 3
    .param p1, "size"    # I

    .line 156
    new-array v0, p1, [Landroid/view/inputmethod/SurroundingText;

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

    .line 142
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/SurroundingText$1;->newArray(I)[Landroid/view/inputmethod/SurroundingText;

    move-result-object p1

    return-object p1
.end method
