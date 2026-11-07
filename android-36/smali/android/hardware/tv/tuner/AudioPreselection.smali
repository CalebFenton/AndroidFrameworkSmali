.class public Landroid/hardware/tv/tuner/AudioPreselection;
.super Ljava/lang/Object;
.source "AudioPreselection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/AudioPreselection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist hasAudioDescription:Z

.field public blacklist hasDialogueEnhancement:Z

.field public blacklist hasSpokenSubtitles:Z

.field public blacklist labels:[Landroid/hardware/tv/tuner/AudioPreselectionLabel;

.field public blacklist language:Ljava/lang/String;

.field public blacklist preselectionId:I

.field public blacklist renderingIndication:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Landroid/hardware/tv/tuner/AudioPreselection$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/AudioPreselection$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/AudioPreselection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/AudioPreselection;->preselectionId:I

    .line 17
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasAudioDescription:Z

    .line 18
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasSpokenSubtitles:Z

    .line 19
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasDialogueEnhancement:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 85
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 88
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/tv/tuner/AudioPreselection;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 87
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 90
    :cond_19
    return v1

    .line 92
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 93
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 95
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/tv/tuner/AudioPreselection;->labels:[Landroid/hardware/tv/tuner/AudioPreselectionLabel;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/AudioPreselection;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 81
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 53
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ea

    .line 56
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 74
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 72
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->preselectionId:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 74
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 72
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_42
    :try_start_42
    sget-object v2, Landroid/hardware/tv/tuner/AudioPreselectionLabel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/tv/tuner/AudioPreselectionLabel;

    iput-object v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->labels:[Landroid/hardware/tv/tuner/AudioPreselectionLabel;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 74
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 72
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->language:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 74
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 72
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->renderingIndication:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 74
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 72
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasAudioDescription:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    .line 74
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 72
    :cond_b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasSpokenSubtitles:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    .line 74
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 72
    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasDialogueEnhancement:Z
    :try_end_d8
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_e8

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e2

    .line 74
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    nop

    .line 76
    return-void

    .line 72
    :cond_e2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :catchall_e8
    move-exception v2

    goto :goto_f2

    .line 55
    :cond_ea
    :try_start_ea
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/AudioPreselection;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_f2
    .catchall {:try_start_ea .. :try_end_f2} :catchall_e8

    .line 71
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/AudioPreselection;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_f2
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_fb

    .line 72
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_fb
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 37
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v1, p0, Landroid/hardware/tv/tuner/AudioPreselection;->preselectionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v1, p0, Landroid/hardware/tv/tuner/AudioPreselection;->labels:[Landroid/hardware/tv/tuner/AudioPreselectionLabel;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 40
    iget-object v1, p0, Landroid/hardware/tv/tuner/AudioPreselection;->language:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget v1, p0, Landroid/hardware/tv/tuner/AudioPreselection;->renderingIndication:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasAudioDescription:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 43
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasSpokenSubtitles:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/AudioPreselection;->hasDialogueEnhancement:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 46
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void
.end method
