.class public Landroid/window/WindowAnimationState;
.super Ljava/lang/Object;
.source "WindowAnimationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowAnimationState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bottomLeftRadius:F

.field public blacklist bottomRightRadius:F

.field public blacklist bounds:Landroid/graphics/RectF;

.field public blacklist scale:F

.field public blacklist timestamp:J

.field public blacklist topLeftRadius:F

.field public blacklist topRightRadius:F

.field public blacklist velocityPxPerMs:Landroid/graphics/PointF;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/window/WindowAnimationState$1;

    invoke-direct {v0}, Landroid/window/WindowAnimationState$1;-><init>()V

    sput-object v0, Landroid/window/WindowAnimationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/window/WindowAnimationState;->timestamp:J

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/WindowAnimationState;->scale:F

    .line 20
    iput v0, p0, Landroid/window/WindowAnimationState;->topLeftRadius:F

    .line 21
    iput v0, p0, Landroid/window/WindowAnimationState;->topRightRadius:F

    .line 22
    iput v0, p0, Landroid/window/WindowAnimationState;->bottomRightRadius:F

    .line 23
    iput v0, p0, Landroid/window/WindowAnimationState;->bottomLeftRadius:F

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 92
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 93
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 95
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/window/WindowAnimationState;->bounds:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Landroid/window/WindowAnimationState;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Landroid/window/WindowAnimationState;->velocityPxPerMs:Landroid/graphics/PointF;

    invoke-direct {p0, v1}, Landroid/window/WindowAnimationState;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 88
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 57
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_10a

    .line 60
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 78
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/window/WindowAnimationState;->timestamp:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 78
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_42
    :try_start_42
    sget-object v2, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iput-object v2, p0, Landroid/window/WindowAnimationState;->bounds:Landroid/graphics/RectF;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 78
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/window/WindowAnimationState;->scale:F

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 78
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/window/WindowAnimationState;->topLeftRadius:F

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 78
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/window/WindowAnimationState;->topRightRadius:F

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 78
    :cond_b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/window/WindowAnimationState;->bottomRightRadius:F

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 78
    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/window/WindowAnimationState;->bottomLeftRadius:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_108

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 78
    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_ee
    :try_start_ee
    sget-object v2, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iput-object v2, p0, Landroid/window/WindowAnimationState;->velocityPxPerMs:Landroid/graphics/PointF;
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_108

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_102

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    nop

    .line 82
    return-void

    .line 78
    :cond_102
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :catchall_108
    move-exception v2

    goto :goto_112

    .line 59
    :cond_10a
    :try_start_10a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/window/WindowAnimationState;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_112
    .catchall {:try_start_10a .. :try_end_112} :catchall_108

    .line 77
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/window/WindowAnimationState;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_112
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_11b

    .line 78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_11b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-wide v1, p0, Landroid/window/WindowAnimationState;->timestamp:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-object v1, p0, Landroid/window/WindowAnimationState;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 43
    iget v1, p0, Landroid/window/WindowAnimationState;->scale:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 44
    iget v1, p0, Landroid/window/WindowAnimationState;->topLeftRadius:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 45
    iget v1, p0, Landroid/window/WindowAnimationState;->topRightRadius:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 46
    iget v1, p0, Landroid/window/WindowAnimationState;->bottomRightRadius:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 47
    iget v1, p0, Landroid/window/WindowAnimationState;->bottomLeftRadius:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 48
    iget-object v1, p0, Landroid/window/WindowAnimationState;->velocityPxPerMs:Landroid/graphics/PointF;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 50
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void
.end method
