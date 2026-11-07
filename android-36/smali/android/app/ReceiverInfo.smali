.class public Landroid/app/ReceiverInfo;
.super Ljava/lang/Object;
.source "ReceiverInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist activityInfo:Landroid/content/pm/ActivityInfo;

.field public blacklist assumeDelivered:Z

.field public blacklist compatInfo:Landroid/content/res/CompatibilityInfo;

.field public blacklist data:Ljava/lang/String;

.field public blacklist extras:Landroid/os/Bundle;

.field public blacklist intent:Landroid/content/Intent;

.field public blacklist ordered:Z

.field public blacklist processState:I

.field public blacklist receiver:Landroid/content/IIntentReceiver;

.field public blacklist registered:Z

.field public blacklist resultCode:I

.field public blacklist sendingPackage:Ljava/lang/String;

.field public blacklist sendingUid:I

.field public blacklist sendingUser:I

.field public blacklist sticky:Z

.field public blacklist sync:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/app/ReceiverInfo$1;

    invoke-direct {v0}, Landroid/app/ReceiverInfo$1;-><init>()V

    sput-object v0, Landroid/app/ReceiverInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    .line 22
    iput v0, p0, Landroid/app/ReceiverInfo;->sendingUser:I

    .line 23
    iput v0, p0, Landroid/app/ReceiverInfo;->processState:I

    .line 24
    iput v0, p0, Landroid/app/ReceiverInfo;->resultCode:I

    .line 25
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/ReceiverInfo;->sendingUid:I

    .line 31
    iput-boolean v0, p0, Landroid/app/ReceiverInfo;->registered:Z

    .line 34
    iput-boolean v0, p0, Landroid/app/ReceiverInfo;->ordered:Z

    .line 35
    iput-boolean v0, p0, Landroid/app/ReceiverInfo;->sticky:Z

    .line 39
    iput-boolean v0, p0, Landroid/app/ReceiverInfo;->sync:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 133
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 134
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 136
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Landroid/app/ReceiverInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 126
    iget-object v1, p0, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/app/ReceiverInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 127
    iget-object v1, p0, Landroid/app/ReceiverInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v1}, Landroid/app/ReceiverInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 128
    iget-object v1, p0, Landroid/app/ReceiverInfo;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, v1}, Landroid/app/ReceiverInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 129
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 80
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1f6

    .line 83
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 117
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_26
    :try_start_26
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 117
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ReceiverInfo;->data:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 117
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_62
    :try_start_62
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, p0, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 117
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_82
    :try_start_82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 117
    :cond_98
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_9e
    :try_start_9e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ReceiverInfo;->sendingUser:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ba

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b4

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    return-void

    .line 117
    :cond_b4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_ba
    :try_start_ba
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ReceiverInfo;->processState:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d6

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d0

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    return-void

    .line 117
    :cond_d0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_d6
    :try_start_d6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ReceiverInfo;->resultCode:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e0
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f2

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ec

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    return-void

    .line 117
    :cond_ec
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_f2
    :try_start_f2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ReceiverInfo;->sendingUid:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_fc
    .catchall {:try_start_f2 .. :try_end_fc} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10e

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_108

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    return-void

    .line 117
    :cond_108
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_10e
    :try_start_10e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ReceiverInfo;->sendingPackage:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_118
    .catchall {:try_start_10e .. :try_end_118} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12a

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_124

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    return-void

    .line 117
    :cond_124
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_12a
    :try_start_12a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ReceiverInfo;->registered:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_134
    .catchall {:try_start_12a .. :try_end_134} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_146

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_140

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void

    .line 117
    :cond_140
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_146
    :try_start_146
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ReceiverInfo;->receiver:Landroid/content/IIntentReceiver;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_154
    .catchall {:try_start_146 .. :try_end_154} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_166

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_160

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    return-void

    .line 117
    :cond_160
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_166
    :try_start_166
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ReceiverInfo;->ordered:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_170
    .catchall {:try_start_166 .. :try_end_170} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_182

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_17c

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    return-void

    .line 117
    :cond_17c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_182
    :try_start_182
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ReceiverInfo;->sticky:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_18c
    .catchall {:try_start_182 .. :try_end_18c} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19e

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_198

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    return-void

    .line 117
    :cond_198
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_19e
    :try_start_19e
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    iput-object v2, p0, Landroid/app/ReceiverInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1ac
    .catchall {:try_start_19e .. :try_end_1ac} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1be

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1b8

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    return-void

    .line 117
    :cond_1b8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_1be
    :try_start_1be
    sget-object v2, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    iput-object v2, p0, Landroid/app/ReceiverInfo;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1cc
    .catchall {:try_start_1be .. :try_end_1cc} :catchall_1f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1de

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1d8

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    return-void

    .line 117
    :cond_1d8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_1de
    :try_start_1de
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ReceiverInfo;->sync:Z
    :try_end_1e4
    .catchall {:try_start_1de .. :try_end_1e4} :catchall_1f4

    .line 116
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1ee

    .line 119
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    nop

    .line 121
    return-void

    .line 117
    :cond_1ee
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :catchall_1f4
    move-exception v2

    goto :goto_1fe

    .line 82
    :cond_1f6
    :try_start_1f6
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/app/ReceiverInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_1fe
    .catchall {:try_start_1f6 .. :try_end_1fe} :catchall_1f4

    .line 116
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/app/ReceiverInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_1fe
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_207

    .line 117
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_207
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 55
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v1, p0, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 57
    iget-object v1, p0, Landroid/app/ReceiverInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 59
    iget-boolean v1, p0, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 60
    iget v1, p0, Landroid/app/ReceiverInfo;->sendingUser:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v1, p0, Landroid/app/ReceiverInfo;->processState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v1, p0, Landroid/app/ReceiverInfo;->resultCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v1, p0, Landroid/app/ReceiverInfo;->sendingUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v1, p0, Landroid/app/ReceiverInfo;->sendingPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-boolean v1, p0, Landroid/app/ReceiverInfo;->registered:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 66
    iget-object v1, p0, Landroid/app/ReceiverInfo;->receiver:Landroid/content/IIntentReceiver;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 67
    iget-boolean v1, p0, Landroid/app/ReceiverInfo;->ordered:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 68
    iget-boolean v1, p0, Landroid/app/ReceiverInfo;->sticky:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 69
    iget-object v1, p0, Landroid/app/ReceiverInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 70
    iget-object v1, p0, Landroid/app/ReceiverInfo;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 71
    iget-boolean v1, p0, Landroid/app/ReceiverInfo;->sync:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 73
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void
.end method
