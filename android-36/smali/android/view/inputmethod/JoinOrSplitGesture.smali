.class public final Landroid/view/inputmethod/JoinOrSplitGesture;
.super Landroid/view/inputmethod/HandwritingGesture;
.source "JoinOrSplitGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/JoinOrSplitGesture$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/JoinOrSplitGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPoint:Landroid/graphics/PointF;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Landroid/view/inputmethod/JoinOrSplitGesture$1;

    invoke-direct {v0}, Landroid/view/inputmethod/JoinOrSplitGesture$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/JoinOrSplitGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/PointF;Ljava/lang/String;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "fallbackText"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Landroid/view/inputmethod/HandwritingGesture;-><init>()V

    .line 37
    const/16 v0, 0x10

    iput v0, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mType:I

    .line 38
    iput-object p1, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mPoint:Landroid/graphics/PointF;

    .line 39
    iput-object p2, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mFallbackText:Ljava/lang/String;

    .line 40
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/PointF;Ljava/lang/String;Landroid/view/inputmethod/JoinOrSplitGesture-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/JoinOrSplitGesture;-><init>(Landroid/graphics/PointF;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Landroid/view/inputmethod/HandwritingGesture;-><init>()V

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mType:I

    .line 44
    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mPoint:Landroid/graphics/PointF;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mFallbackText:Ljava/lang/String;

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/JoinOrSplitGesture-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/JoinOrSplitGesture;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 123
    instance-of v0, p1, Landroid/view/inputmethod/JoinOrSplitGesture;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 124
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/JoinOrSplitGesture;

    .line 125
    .local v0, "that":Landroid/view/inputmethod/JoinOrSplitGesture;
    iget-object v2, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Landroid/view/inputmethod/JoinOrSplitGesture;->mPoint:Landroid/graphics/PointF;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mFallbackText:Ljava/lang/String;

    iget-object v3, v0, Landroid/view/inputmethod/JoinOrSplitGesture;->mFallbackText:Ljava/lang/String;

    .line 126
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 125
    :goto_20
    return v1
.end method

.method public whitelist getJoinOrSplitPoint()Landroid/graphics/PointF;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 118
    iget-object v0, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mFallbackText:Ljava/lang/String;

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

    .line 142
    iget-object v0, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    iget-object v0, p0, Landroid/view/inputmethod/JoinOrSplitGesture;->mFallbackText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 144
    return-void
.end method
