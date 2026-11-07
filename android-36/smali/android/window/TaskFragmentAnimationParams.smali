.class public final Landroid/window/TaskFragmentAnimationParams;
.super Ljava/lang/Object;
.source "TaskFragmentAnimationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentAnimationParams$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentAnimationParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT:Landroid/window/TaskFragmentAnimationParams;

.field public static final blacklist DEFAULT_ANIMATION_BACKGROUND_COLOR:I


# instance fields
.field private final blacklist mAnimationBackgroundColor:I

.field private final blacklist mChangeAnimationResId:I

.field private final blacklist mCloseAnimationResId:I

.field private final blacklist mOpenAnimationResId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/window/TaskFragmentAnimationParams$Builder;

    invoke-direct {v0}, Landroid/window/TaskFragmentAnimationParams$Builder;-><init>()V

    .line 38
    invoke-virtual {v0}, Landroid/window/TaskFragmentAnimationParams$Builder;->build()Landroid/window/TaskFragmentAnimationParams;

    move-result-object v0

    sput-object v0, Landroid/window/TaskFragmentAnimationParams;->DEFAULT:Landroid/window/TaskFragmentAnimationParams;

    .line 128
    new-instance v0, Landroid/window/TaskFragmentAnimationParams$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentAnimationParams$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentAnimationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIII)V
    .registers 5
    .param p1, "animationBackgroundColor"    # I
    .param p2, "openAnimationResId"    # I
    .param p3, "changeAnimationResId"    # I
    .param p4, "closeAnimationResId"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/window/TaskFragmentAnimationParams;->mAnimationBackgroundColor:I

    .line 63
    iput p2, p0, Landroid/window/TaskFragmentAnimationParams;->mOpenAnimationResId:I

    .line 64
    iput p3, p0, Landroid/window/TaskFragmentAnimationParams;->mChangeAnimationResId:I

    .line 65
    iput p4, p0, Landroid/window/TaskFragmentAnimationParams;->mCloseAnimationResId:I

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIILandroid/window/TaskFragmentAnimationParams-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/window/TaskFragmentAnimationParams;-><init>(IIII)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentAnimationParams;->mAnimationBackgroundColor:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentAnimationParams;->mOpenAnimationResId:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentAnimationParams;->mChangeAnimationResId:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentAnimationParams;->mCloseAnimationResId:I

    .line 117
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentAnimationParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentAnimationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 159
    instance-of v0, p1, Landroid/window/TaskFragmentAnimationParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Landroid/window/TaskFragmentAnimationParams;

    .line 162
    .local v0, "other":Landroid/window/TaskFragmentAnimationParams;
    iget v2, p0, Landroid/window/TaskFragmentAnimationParams;->mAnimationBackgroundColor:I

    iget v3, v0, Landroid/window/TaskFragmentAnimationParams;->mAnimationBackgroundColor:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/window/TaskFragmentAnimationParams;->mOpenAnimationResId:I

    iget v3, v0, Landroid/window/TaskFragmentAnimationParams;->mOpenAnimationResId:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/window/TaskFragmentAnimationParams;->mChangeAnimationResId:I

    iget v3, v0, Landroid/window/TaskFragmentAnimationParams;->mChangeAnimationResId:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/window/TaskFragmentAnimationParams;->mCloseAnimationResId:I

    iget v3, v0, Landroid/window/TaskFragmentAnimationParams;->mCloseAnimationResId:I

    if-ne v2, v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 160
    .end local v0    # "other":Landroid/window/TaskFragmentAnimationParams;
    :cond_22
    return v1
.end method

.method public blacklist getAnimationBackgroundColor()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mAnimationBackgroundColor:I

    return v0
.end method

.method public blacklist getChangeAnimationResId()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mChangeAnimationResId:I

    return v0
.end method

.method public blacklist getCloseAnimationResId()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mCloseAnimationResId:I

    return v0
.end method

.method public blacklist getOpenAnimationResId()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mOpenAnimationResId:I

    return v0
.end method

.method public blacklist hasOverrideAnimation()Z
    .registers 3

    .line 173
    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mOpenAnimationResId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mChangeAnimationResId:I

    if-ne v0, v1, :cond_10

    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mCloseAnimationResId:I

    if-eq v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 153
    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mAnimationBackgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentAnimationParams;->mOpenAnimationResId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/window/TaskFragmentAnimationParams;->mChangeAnimationResId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskFragmentAnimationParams;->mCloseAnimationResId:I

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 153
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentAnimationParams{ animationBgColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentAnimationParams;->mAnimationBackgroundColor:I

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " openAnimResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentAnimationParams;->mOpenAnimationResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " changeAnimResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentAnimationParams;->mChangeAnimationResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " closeAnimResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentAnimationParams;->mCloseAnimationResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 121
    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mAnimationBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mOpenAnimationResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mChangeAnimationResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/window/TaskFragmentAnimationParams;->mCloseAnimationResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return-void
.end method
