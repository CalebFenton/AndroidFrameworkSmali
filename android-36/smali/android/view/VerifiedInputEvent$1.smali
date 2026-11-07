.class Landroid/view/VerifiedInputEvent$1;
.super Ljava/lang/Object;
.source "VerifiedInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VerifiedInputEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/VerifiedInputEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/VerifiedInputEvent;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 152
    invoke-static {p1}, Landroid/view/VerifiedInputEvent;->-$$Nest$smpeekInt(Landroid/os/Parcel;)I

    move-result v0

    .line 153
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 154
    sget-object v1, Landroid/view/VerifiedKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VerifiedInputEvent;

    return-object v1

    .line 155
    :cond_10
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 156
    sget-object v1, Landroid/view/VerifiedMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VerifiedInputEvent;

    return-object v1

    .line 158
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected input event type in parcel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    .line 144
    invoke-virtual {p0, p1}, Landroid/view/VerifiedInputEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/VerifiedInputEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/VerifiedInputEvent;
    .registers 3
    .param p1, "size"    # I

    .line 147
    new-array v0, p1, [Landroid/view/VerifiedInputEvent;

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

    .line 144
    invoke-virtual {p0, p1}, Landroid/view/VerifiedInputEvent$1;->newArray(I)[Landroid/view/VerifiedInputEvent;

    move-result-object p1

    return-object p1
.end method
