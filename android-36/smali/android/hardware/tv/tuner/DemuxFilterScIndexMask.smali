.class public final Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;
.super Ljava/lang/Object;
.source "DemuxFilterScIndexMask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxFilterScIndexMask$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist scAvc:I = 0x1

.field public static final blacklist scHevc:I = 0x2

.field public static final blacklist scIndex:I = 0x0

.field public static final blacklist scVvc:I = 0x3


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    .line 33
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxFilterScIndexMask-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 172
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 175
    return-void

    .line 173
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tagString(I)Ljava/lang/String;

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

    .line 188
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    .line 189
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    .line 190
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 178
    packed-switch p1, :pswitch_data_28

    .line 184
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

    .line 182
    :pswitch_1c
    const-string v0, "scVvc"

    return-object v0

    .line 181
    :pswitch_1f
    const-string v0, "scHevc"

    return-object v0

    .line 180
    :pswitch_22
    const-string v0, "scAvc"

    return-object v0

    .line 179
    :pswitch_25
    const-string v0, "scIndex"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist scAvc(I)Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;
    .registers 4
    .param p0, "_value"    # I

    .line 58
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist scHevc(I)Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;
    .registers 4
    .param p0, "_value"    # I

    .line 73
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist scIndex(I)Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;
    .registers 4
    .param p0, "_value"    # I

    .line 43
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist scVvc(I)Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;
    .registers 4
    .param p0, "_value"    # I

    .line 88
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getTag()I

    .line 168
    return v0
.end method

.method public blacklist getScAvc()I
    .registers 2

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_assertTag(I)V

    .line 63
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getScHevc()I
    .registers 2

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_assertTag(I)V

    .line 78
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getScIndex()I
    .registers 2

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_assertTag(I)V

    .line 48
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getScVvc()I
    .registers 2

    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_assertTag(I)V

    .line 93
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 37
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_50

    .line 160
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

    .line 156
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 158
    return-void

    .line 151
    .end local v1    # "_aidl_value":I
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 153
    return-void

    .line 146
    .end local v1    # "_aidl_value":I
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 148
    return-void

    .line 141
    .end local v1    # "_aidl_value":I
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 143
    return-void

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setScAvc(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 67
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public blacklist setScHevc(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 82
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public blacklist setScIndex(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 52
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method public blacklist setScVvc(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 97
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 118
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_2b

    .line 130
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getScVvc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 127
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getScHevc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    goto :goto_2b

    .line 124
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getScAvc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    goto :goto_2b

    .line 121
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getScIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    nop

    .line 133
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
