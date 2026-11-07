.class public Landroid/hardware/biometrics/fingerprint/PointerContext;
.super Ljava/lang/Object;
.source "PointerContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/fingerprint/PointerContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist gestureStart:J

.field public blacklist isAod:Z

.field public blacklist major:F

.field public blacklist minor:F

.field public blacklist orientation:F

.field public blacklist pointerId:I

.field public blacklist time:J

.field public blacklist x:F

.field public blacklist y:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 42
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 44
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 46
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 48
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    .line 71
    iput-wide v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "_mask":I
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 138
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 139
    :cond_8
    instance-of v2, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    if-nez v2, :cond_d

    return v1

    .line 140
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 141
    .local v2, "that":Landroid/hardware/biometrics/fingerprint/PointerContext;
    iget v3, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 142
    :cond_23
    iget v3, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    return v1

    .line 143
    :cond_36
    iget v3, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    return v1

    .line 144
    :cond_49
    iget v3, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    return v1

    .line 145
    :cond_5c
    iget v3, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    return v1

    .line 146
    :cond_6f
    iget v3, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    return v1

    .line 147
    :cond_82
    iget-boolean v3, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    return v1

    .line 148
    :cond_95
    iget-wide v3, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a8

    return v1

    .line 149
    :cond_a8
    iget-wide v3, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    return v1

    .line 150
    :cond_bb
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 155
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/io/Serializable;

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 107
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_11e

    .line 110
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 132
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    return-void

    .line 130
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 132
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    return-void

    .line 130
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 132
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 114
    return-void

    .line 130
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 132
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 116
    return-void

    .line 130
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 132
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 118
    return-void

    .line 130
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 132
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    return-void

    .line 130
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 132
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 122
    return-void

    .line 130
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 132
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    return-void

    .line 130
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 132
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    return-void

    .line 130
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J
    :try_end_10c
    .catchall {:try_start_106 .. :try_end_10c} :catchall_11c

    .line 129
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_116

    .line 132
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    nop

    .line 134
    return-void

    .line 130
    :cond_116
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :catchall_11c
    move-exception v2

    goto :goto_126

    .line 109
    :cond_11e
    :try_start_11e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/biometrics/fingerprint/PointerContext;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_126
    .catchall {:try_start_11e .. :try_end_126} :catchall_11c

    .line 129
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/biometrics/fingerprint/PointerContext;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_126
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_12f

    .line 130
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_12f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 89
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 92
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 93
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 94
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 95
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 96
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 97
    iget-wide v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-wide v1, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 100
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void
.end method
