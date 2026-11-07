.class public final Landroid/view/inputmethod/InsertModeGesture;
.super Landroid/view/inputmethod/CancellableHandwritingGesture;
.source "InsertModeGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InsertModeGesture$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InsertModeGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mPoint:Landroid/graphics/PointF;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Landroid/view/inputmethod/InsertModeGesture$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InsertModeGesture$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InsertModeGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/PointF;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "fallbackText"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 48
    invoke-direct {p0}, Landroid/view/inputmethod/CancellableHandwritingGesture;-><init>()V

    .line 49
    const/16 v0, 0x80

    iput v0, p0, Landroid/view/inputmethod/InsertModeGesture;->mType:I

    .line 50
    iput-object p1, p0, Landroid/view/inputmethod/InsertModeGesture;->mPoint:Landroid/graphics/PointF;

    .line 51
    iput-object p2, p0, Landroid/view/inputmethod/InsertModeGesture;->mFallbackText:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Landroid/view/inputmethod/InsertModeGesture;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/PointF;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/view/inputmethod/InsertModeGesture-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InsertModeGesture;-><init>(Landroid/graphics/PointF;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Landroid/view/inputmethod/CancellableHandwritingGesture;-><init>()V

    .line 56
    const/16 v0, 0x80

    iput v0, p0, Landroid/view/inputmethod/InsertModeGesture;->mType:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InsertModeGesture;->mFallbackText:Ljava/lang/String;

    .line 58
    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/view/inputmethod/InsertModeGesture;->mPoint:Landroid/graphics/PointF;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InsertModeGesture;->mCancellationSignalToken:Landroid/os/IBinder;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/InsertModeGesture-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InsertModeGesture;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 164
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 165
    :cond_4
    instance-of v0, p1, Landroid/view/inputmethod/InsertModeGesture;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 167
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/InsertModeGesture;

    .line 169
    .local v0, "that":Landroid/view/inputmethod/InsertModeGesture;
    iget-object v2, p0, Landroid/view/inputmethod/InsertModeGesture;->mFallbackText:Ljava/lang/String;

    iget-object v3, v0, Landroid/view/inputmethod/InsertModeGesture;->mFallbackText:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    return v1

    .line 170
    :cond_18
    iget-object v1, p0, Landroid/view/inputmethod/InsertModeGesture;->mPoint:Landroid/graphics/PointF;

    iget-object v2, v0, Landroid/view/inputmethod/InsertModeGesture;->mPoint:Landroid/graphics/PointF;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getCancellationSignal()Landroid/os/CancellationSignal;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/view/inputmethod/InsertModeGesture;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object v0
.end method

.method public whitelist getInsertionPoint()Landroid/graphics/PointF;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/view/inputmethod/InsertModeGesture;->mPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 159
    iget-object v0, p0, Landroid/view/inputmethod/InsertModeGesture;->mPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/view/inputmethod/InsertModeGesture;->mFallbackText:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 186
    iget-object v0, p0, Landroid/view/inputmethod/InsertModeGesture;->mFallbackText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Landroid/view/inputmethod/InsertModeGesture;->mPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 188
    iget-object v0, p0, Landroid/view/inputmethod/InsertModeGesture;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v0}, Landroid/os/CancellationSignalBeamer$Sender;->beamFromScope(Landroid/os/CancellationSignal;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 189
    return-void
.end method
