.class public final Landroid/hardware/tv/tuner/DvrSettings;
.super Ljava/lang/Object;
.source "DvrSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DvrSettings$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DvrSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist playback:I = 0x1

.field public static final blacklist record:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Landroid/hardware/tv/tuner/DvrSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DvrSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DvrSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "_value":Landroid/hardware/tv/tuner/RecordSettings;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/DvrSettings;->_tag:I

    .line 22
    iput-object v0, p0, Landroid/hardware/tv/tuner/DvrSettings;->_value:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/hardware/tv/tuner/DvrSettings;->_tag:I

    .line 31
    iput-object p2, p0, Landroid/hardware/tv/tuner/DvrSettings;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DvrSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DvrSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DvrSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 137
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DvrSettings;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 140
    return-void

    .line 138
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DvrSettings;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DvrSettings;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DvrSettings;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 151
    iput p1, p0, Landroid/hardware/tv/tuner/DvrSettings;->_tag:I

    .line 152
    iput-object p2, p0, Landroid/hardware/tv/tuner/DvrSettings;->_value:Ljava/lang/Object;

    .line 153
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 143
    packed-switch p1, :pswitch_data_22

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_1c
    const-string v0, "playback"

    return-object v0

    .line 144
    :pswitch_1f
    const-string v0, "record"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 130
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 131
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 133
    :cond_10
    return v0
.end method

.method public static blacklist playback(Landroid/hardware/tv/tuner/PlaybackSettings;)Landroid/hardware/tv/tuner/DvrSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/PlaybackSettings;

    .line 56
    new-instance v0, Landroid/hardware/tv/tuner/DvrSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DvrSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist record(Landroid/hardware/tv/tuner/RecordSettings;)Landroid/hardware/tv/tuner/DvrSettings;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/RecordSettings;

    .line 41
    new-instance v0, Landroid/hardware/tv/tuner/DvrSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DvrSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DvrSettings;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    goto :goto_1d

    .line 123
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DvrSettings;->getPlayback()Landroid/hardware/tv/tuner/PlaybackSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DvrSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1d

    .line 120
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DvrSettings;->getRecord()Landroid/hardware/tv/tuner/RecordSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DvrSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 121
    nop

    .line 126
    :goto_1d
    return v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getPlayback()Landroid/hardware/tv/tuner/PlaybackSettings;
    .registers 2

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DvrSettings;->_assertTag(I)V

    .line 61
    iget-object v0, p0, Landroid/hardware/tv/tuner/DvrSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/PlaybackSettings;

    return-object v0
.end method

.method public blacklist getRecord()Landroid/hardware/tv/tuner/RecordSettings;
    .registers 2

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DvrSettings;->_assertTag(I)V

    .line 46
    iget-object v0, p0, Landroid/hardware/tv/tuner/DvrSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/RecordSettings;

    return-object v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/hardware/tv/tuner/DvrSettings;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_38

    .line 112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :pswitch_20
    sget-object v1, Landroid/hardware/tv/tuner/PlaybackSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/PlaybackSettings;

    .line 109
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/PlaybackSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DvrSettings;->_set(ILjava/lang/Object;)V

    .line 110
    return-void

    .line 103
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/PlaybackSettings;
    :pswitch_2c
    sget-object v1, Landroid/hardware/tv/tuner/RecordSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/RecordSettings;

    .line 104
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/RecordSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DvrSettings;->_set(ILjava/lang/Object;)V

    .line 105
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setPlayback(Landroid/hardware/tv/tuner/PlaybackSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/PlaybackSettings;

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DvrSettings;->_set(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public blacklist setRecord(Landroid/hardware/tv/tuner/RecordSettings;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/RecordSettings;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DvrSettings;->_set(ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 86
    iget v0, p0, Landroid/hardware/tv/tuner/DvrSettings;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Landroid/hardware/tv/tuner/DvrSettings;->_tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    .line 92
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DvrSettings;->getPlayback()Landroid/hardware/tv/tuner/PlaybackSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1b

    .line 89
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DvrSettings;->getRecord()Landroid/hardware/tv/tuner/RecordSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 90
    nop

    .line 95
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
