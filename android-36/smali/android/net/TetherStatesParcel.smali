.class public Landroid/net/TetherStatesParcel;
.super Ljava/lang/Object;
.source "TetherStatesParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TetherStatesParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist availableList:[Landroid/net/TetheringInterface;

.field public blacklist erroredIfaceList:[Landroid/net/TetheringInterface;

.field public blacklist lastErrorList:[I

.field public blacklist localOnlyList:[Landroid/net/TetheringInterface;

.field public blacklist tetheredList:[Landroid/net/TetheringInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Landroid/net/TetherStatesParcel$1;

    invoke-direct {v0}, Landroid/net/TetherStatesParcel$1;-><init>()V

    sput-object v0, Landroid/net/TetherStatesParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 83
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 86
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/net/TetherStatesParcel;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 85
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 88
    :cond_19
    return v1

    .line 90
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 91
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 93
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/net/TetherStatesParcel;->availableList:[Landroid/net/TetheringInterface;

    invoke-direct {p0, v1}, Landroid/net/TetherStatesParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 76
    iget-object v1, p0, Landroid/net/TetherStatesParcel;->tetheredList:[Landroid/net/TetheringInterface;

    invoke-direct {p0, v1}, Landroid/net/TetherStatesParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Landroid/net/TetherStatesParcel;->localOnlyList:[Landroid/net/TetheringInterface;

    invoke-direct {p0, v1}, Landroid/net/TetherStatesParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Landroid/net/TetherStatesParcel;->erroredIfaceList:[Landroid/net/TetheringInterface;

    invoke-direct {p0, v1}, Landroid/net/TetherStatesParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 52
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_be

    .line 55
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_bc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 67
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_26
    :try_start_26
    sget-object v2, Landroid/net/TetheringInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/TetheringInterface;

    iput-object v2, p0, Landroid/net/TetherStatesParcel;->availableList:[Landroid/net/TetheringInterface;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_bc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 67
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_46
    :try_start_46
    sget-object v2, Landroid/net/TetheringInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/TetheringInterface;

    iput-object v2, p0, Landroid/net/TetherStatesParcel;->tetheredList:[Landroid/net/TetheringInterface;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_bc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 67
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_66
    :try_start_66
    sget-object v2, Landroid/net/TetheringInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/TetheringInterface;

    iput-object v2, p0, Landroid/net/TetherStatesParcel;->localOnlyList:[Landroid/net/TetheringInterface;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_bc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_86

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_80

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 67
    :cond_80
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_86
    :try_start_86
    sget-object v2, Landroid/net/TetheringInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/TetheringInterface;

    iput-object v2, p0, Landroid/net/TetherStatesParcel;->erroredIfaceList:[Landroid/net/TetheringInterface;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_bc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a6

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a0

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 67
    :cond_a0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_a6
    :try_start_a6
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/net/TetherStatesParcel;->lastErrorList:[I
    :try_end_ac
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_bc

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b6

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    nop

    .line 71
    return-void

    .line 67
    :cond_b6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :catchall_bc
    move-exception v2

    goto :goto_c6

    .line 54
    :cond_be
    :try_start_be
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/net/TetherStatesParcel;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_c6
    .catchall {:try_start_be .. :try_end_c6} :catchall_bc

    .line 66
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/net/TetherStatesParcel;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_c6
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_cf

    .line 67
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_cf
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 38
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v1, p0, Landroid/net/TetherStatesParcel;->availableList:[Landroid/net/TetheringInterface;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 40
    iget-object v1, p0, Landroid/net/TetherStatesParcel;->tetheredList:[Landroid/net/TetheringInterface;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 41
    iget-object v1, p0, Landroid/net/TetherStatesParcel;->localOnlyList:[Landroid/net/TetheringInterface;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 42
    iget-object v1, p0, Landroid/net/TetherStatesParcel;->erroredIfaceList:[Landroid/net/TetheringInterface;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 43
    iget-object v1, p0, Landroid/net/TetherStatesParcel;->lastErrorList:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 45
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void
.end method
