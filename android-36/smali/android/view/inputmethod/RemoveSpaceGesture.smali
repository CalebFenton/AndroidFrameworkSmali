.class public final Landroid/view/inputmethod/RemoveSpaceGesture;
.super Landroid/view/inputmethod/HandwritingGesture;
.source "RemoveSpaceGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/RemoveSpaceGesture$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/RemoveSpaceGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEndPoint:Landroid/graphics/PointF;

.field private final blacklist mStartPoint:Landroid/graphics/PointF;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Landroid/view/inputmethod/RemoveSpaceGesture$1;

    invoke-direct {v0}, Landroid/view/inputmethod/RemoveSpaceGesture$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/RemoveSpaceGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;)V
    .registers 5
    .param p1, "startPoint"    # Landroid/graphics/PointF;
    .param p2, "endPoint"    # Landroid/graphics/PointF;
    .param p3, "fallbackText"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Landroid/view/inputmethod/HandwritingGesture;-><init>()V

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mType:I

    .line 36
    iput-object p1, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    .line 37
    iput-object p2, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    .line 38
    iput-object p3, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;Landroid/view/inputmethod/RemoveSpaceGesture-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoveSpaceGesture;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Landroid/view/inputmethod/HandwritingGesture;-><init>()V

    .line 42
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mType:I

    .line 43
    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    .line 44
    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/RemoveSpaceGesture-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoveSpaceGesture;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 128
    instance-of v0, p1, Landroid/view/inputmethod/RemoveSpaceGesture;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 129
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/RemoveSpaceGesture;

    .line 130
    .local v0, "that":Landroid/view/inputmethod/RemoveSpaceGesture;
    iget-object v2, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    .line 131
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    iget-object v3, v0, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    .line 132
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 130
    :goto_2a
    return v1
.end method

.method public whitelist getEndPoint()Landroid/graphics/PointF;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public whitelist getStartPoint()Landroid/graphics/PointF;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 123
    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 148
    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 149
    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 150
    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 151
    return-void
.end method
