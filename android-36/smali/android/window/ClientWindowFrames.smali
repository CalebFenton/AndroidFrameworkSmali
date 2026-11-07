.class public Landroid/window/ClientWindowFrames;
.super Ljava/lang/Object;
.source "ClientWindowFrames.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ClientWindowFrames;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist attachedFrame:Landroid/graphics/Rect;

.field public blacklist compatScale:F

.field public final blacklist displayFrame:Landroid/graphics/Rect;

.field public final blacklist frame:Landroid/graphics/Rect;

.field public blacklist isParentFrameClippedByDisplayCutout:Z

.field public final blacklist parentFrame:Landroid/graphics/Rect;

.field public blacklist seq:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 147
    new-instance v0, Landroid/window/ClientWindowFrames$1;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames$1;-><init>()V

    sput-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/window/ClientWindowFrames;->compatScale:F

    .line 59
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/window/ClientWindowFrames;->seq:I

    .line 62
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/window/ClientWindowFrames;->compatScale:F

    .line 59
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/window/ClientWindowFrames;->seq:I

    .line 69
    invoke-virtual {p0, p1}, Landroid/window/ClientWindowFrames;->readFromParcel(Landroid/os/Parcel;)V

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/ClientWindowFrames-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ClientWindowFrames;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/ClientWindowFrames;)V
    .registers 3
    .param p1, "other"    # Landroid/window/ClientWindowFrames;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/window/ClientWindowFrames;->compatScale:F

    .line 59
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/window/ClientWindowFrames;->seq:I

    .line 65
    invoke-virtual {p0, p1}, Landroid/window/ClientWindowFrames;->setTo(Landroid/window/ClientWindowFrames;)V

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 121
    return v0

    .line 123
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4e

    .line 126
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/window/ClientWindowFrames;

    .line 128
    .local v2, "other":Landroid/window/ClientWindowFrames;
    iget-object v3, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 129
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 130
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 131
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-boolean v3, p0, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    iget-boolean v4, v2, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    if-ne v3, v4, :cond_4c

    iget v3, p0, Landroid/window/ClientWindowFrames;->compatScale:F

    iget v4, v2, Landroid/window/ClientWindowFrames;->compatScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v1

    .line 128
    :goto_4d
    return v0

    .line 124
    .end local v2    # "other":Landroid/window/ClientWindowFrames;
    :cond_4e
    :goto_4e
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 138
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iget-boolean v4, p0, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 139
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, p0, Landroid/window/ClientWindowFrames;->compatScale:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 138
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 88
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 90
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/ClientWindowFrames;->compatScale:F

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ClientWindowFrames;->seq:I

    .line 94
    return-void
.end method

.method public blacklist setTo(Landroid/window/ClientWindowFrames;)V
    .registers 4
    .param p1, "other"    # Landroid/window/ClientWindowFrames;

    .line 74
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 75
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 76
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 77
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_22

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 80
    :cond_22
    iget-boolean v0, p1, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    iput-boolean v0, p0, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 81
    iget v0, p1, Landroid/window/ClientWindowFrames;->compatScale:F

    iput v0, p0, Landroid/window/ClientWindowFrames;->compatScale:F

    .line 82
    iget v0, p1, Landroid/window/ClientWindowFrames;->seq:I

    iput v0, p0, Landroid/window/ClientWindowFrames;->seq:I

    .line 83
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientWindowFrames{frame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 111
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parentFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 112
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    iget-object v2, p0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    const-string v3, ""

    if-eqz v2, :cond_5c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " attachedFrame="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5d

    :cond_5c
    move-object v2, v3

    :goto_5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    iget-boolean v2, p0, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    if-eqz v2, :cond_68

    const-string v2, " parentClippedByDisplayCutout"

    goto :goto_69

    :cond_68
    move-object v2, v3

    :goto_69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    iget v2, p0, Landroid/window/ClientWindowFrames;->compatScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_8a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sizeCompatScale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/ClientWindowFrames;->compatScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_8a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    iget-object v0, p0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 102
    iget-boolean v0, p0, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 103
    iget v0, p0, Landroid/window/ClientWindowFrames;->compatScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 104
    iget v0, p0, Landroid/window/ClientWindowFrames;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return-void
.end method
