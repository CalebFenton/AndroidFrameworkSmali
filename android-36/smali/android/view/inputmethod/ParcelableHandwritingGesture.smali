.class public final Landroid/view/inputmethod/ParcelableHandwritingGesture;
.super Ljava/lang/Object;
.source "ParcelableHandwritingGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/ParcelableHandwritingGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mGesture:Landroid/view/inputmethod/HandwritingGesture;

.field private final blacklist mGestureAsParcelable:Landroid/os/Parcelable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcelInternal(ILandroid/os/Parcel;)Landroid/view/inputmethod/HandwritingGesture;
    .registers 2

    invoke-static {p0, p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->createFromParcelInternal(ILandroid/os/Parcel;)Landroid/view/inputmethod/HandwritingGesture;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Landroid/view/inputmethod/ParcelableHandwritingGesture$1;

    invoke-direct {v0}, Landroid/view/inputmethod/ParcelableHandwritingGesture$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/HandwritingGesture;)V
    .registers 3
    .param p1, "gesture"    # Landroid/view/inputmethod/HandwritingGesture;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGesture:Landroid/view/inputmethod/HandwritingGesture;

    .line 39
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGestureAsParcelable:Landroid/os/Parcelable;

    .line 40
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/HandwritingGesture;Landroid/view/inputmethod/ParcelableHandwritingGesture-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;-><init>(Landroid/view/inputmethod/HandwritingGesture;)V

    return-void
.end method

.method private static blacklist createFromParcelInternal(ILandroid/os/Parcel;)Landroid/view/inputmethod/HandwritingGesture;
    .registers 5
    .param p0, "gestureType"    # I
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 64
    sparse-switch p0, :sswitch_data_6c

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :sswitch_1c
    sget-object v0, Landroid/view/inputmethod/InsertModeGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/HandwritingGesture;

    return-object v0

    .line 78
    :sswitch_25
    sget-object v0, Landroid/view/inputmethod/DeleteRangeGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/HandwritingGesture;

    return-object v0

    .line 70
    :sswitch_2e
    sget-object v0, Landroid/view/inputmethod/SelectRangeGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/HandwritingGesture;

    return-object v0

    .line 80
    :sswitch_37
    sget-object v0, Landroid/view/inputmethod/JoinOrSplitGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/HandwritingGesture;

    return-object v0

    .line 82
    :sswitch_40
    sget-object v0, Landroid/view/inputmethod/RemoveSpaceGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/HandwritingGesture;

    return-object v0

    .line 76
    :sswitch_49
    sget-object v0, Landroid/view/inputmethod/DeleteGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/HandwritingGesture;

    return-object v0

    .line 72
    :sswitch_52
    sget-object v0, Landroid/view/inputmethod/InsertGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/HandwritingGesture;

    return-object v0

    .line 68
    :sswitch_5b
    sget-object v0, Landroid/view/inputmethod/SelectGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/HandwritingGesture;

    return-object v0

    .line 66
    :sswitch_64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GESTURE_TYPE_NONE is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_64
        0x1 -> :sswitch_5b
        0x2 -> :sswitch_52
        0x4 -> :sswitch_49
        0x8 -> :sswitch_40
        0x10 -> :sswitch_37
        0x20 -> :sswitch_2e
        0x40 -> :sswitch_25
        0x80 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static blacklist of(Landroid/view/inputmethod/HandwritingGesture;)Landroid/view/inputmethod/ParcelableHandwritingGesture;
    .registers 3
    .param p0, "gesture"    # Landroid/view/inputmethod/HandwritingGesture;

    .line 51
    new-instance v0, Landroid/view/inputmethod/ParcelableHandwritingGesture;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {v0, v1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;-><init>(Landroid/view/inputmethod/HandwritingGesture;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGestureAsParcelable:Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public blacklist get()Landroid/view/inputmethod/HandwritingGesture;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGesture:Landroid/view/inputmethod/HandwritingGesture;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 108
    iget-object v0, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGesture:Landroid/view/inputmethod/HandwritingGesture;

    invoke-virtual {v0}, Landroid/view/inputmethod/HandwritingGesture;->getGestureType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->mGestureAsParcelable:Landroid/os/Parcelable;

    invoke-interface {v0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    return-void
.end method
