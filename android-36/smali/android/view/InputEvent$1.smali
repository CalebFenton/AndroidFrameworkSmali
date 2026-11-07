.class Landroid/view/InputEvent$1;
.super Ljava/lang/Object;
.source "InputEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/InputEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/InputEvent;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .local v0, "token":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 263
    invoke-static {p1}, Landroid/view/KeyEvent;->createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 264
    :cond_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 265
    invoke-static {p1}, Landroid/view/MotionEvent;->createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1

    .line 267
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected input event type token in parcel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 259
    invoke-virtual {p0, p1}, Landroid/view/InputEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/InputEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/InputEvent;
    .registers 3
    .param p1, "size"    # I

    .line 272
    new-array v0, p1, [Landroid/view/InputEvent;

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

    .line 259
    invoke-virtual {p0, p1}, Landroid/view/InputEvent$1;->newArray(I)[Landroid/view/InputEvent;

    move-result-object p1

    return-object p1
.end method
