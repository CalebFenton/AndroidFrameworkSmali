.class final Landroid/view/InputEvent$1;
.super Ljava/lang/Object;
.source "InputEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/InputEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/InputEvent;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 229
    .local v0, "token":I
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 230
    invoke-static {p1}, Landroid/view/KeyEvent;->createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 231
    :cond_0
    const/4 v1, 0x1

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 232
    invoke-static {p1}, Landroid/view/MotionEvent;->createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 234
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@16
    const-string/jumbo v2, "Unexpected input event type token in parcel."

    #@19
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 227
    invoke-virtual {p0, p1}, Landroid/view/InputEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/InputEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/InputEvent;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 239
    new-array v0, p1, [Landroid/view/InputEvent;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 238
    invoke-virtual {p0, p1}, Landroid/view/InputEvent$1;->newArray(I)[Landroid/view/InputEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
