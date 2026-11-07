.class public abstract Landroid/nearby/BroadcastRequest;
.super Ljava/lang/Object;
.source "BroadcastRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/BroadcastRequest$Medium;,
        Landroid/nearby/BroadcastRequest$BroadcastVersion;,
        Landroid/nearby/BroadcastRequest$BroadcastType;
    }
.end annotation


# static fields
.field public static final whitelist BROADCAST_TYPE_NEARBY_PRESENCE:I = 0x3

.field public static final whitelist BROADCAST_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist MEDIUM_BLE:I = 0x1

.field public static final whitelist PRESENCE_VERSION_UNKNOWN:I = -0x1

.field public static final whitelist PRESENCE_VERSION_V0:I = 0x0

.field public static final whitelist PRESENCE_VERSION_V1:I = 0x1

.field public static final whitelist UNKNOWN_TX_POWER:I = -0x7f


# instance fields
.field private final blacklist mMediums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTxPower:I

.field private final blacklist mType:I

.field private final blacklist mVersion:I


# direct methods
.method constructor blacklist <init>(IIILjava/util/List;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "version"    # I
    .param p3, "txPower"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p4, "mediums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Landroid/nearby/BroadcastRequest;->mType:I

    .line 119
    iput p2, p0, Landroid/nearby/BroadcastRequest;->mVersion:I

    .line 120
    iput p3, p0, Landroid/nearby/BroadcastRequest;->mTxPower:I

    .line 121
    iput-object p4, p0, Landroid/nearby/BroadcastRequest;->mMediums:Ljava/util/List;

    .line 122
    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Parcel;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Landroid/nearby/BroadcastRequest;->mType:I

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nearby/BroadcastRequest;->mVersion:I

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nearby/BroadcastRequest;->mTxPower:I

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/BroadcastRequest;->mMediums:Ljava/util/List;

    .line 129
    iget-object v0, p0, Landroid/nearby/BroadcastRequest;->mMediums:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 130
    return-void
.end method

.method public static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nearby/BroadcastRequest;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 101
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "type":I
    packed-switch v0, :pswitch_data_2c

    .line 106
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected broadcast type (value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in parcel."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :pswitch_26
    invoke-static {p0}, Landroid/nearby/PresenceBroadcastRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/nearby/PresenceBroadcastRequest;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_2c
    .packed-switch 0x3
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public whitelist getMediums()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Landroid/nearby/BroadcastRequest;->mMediums:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTxPower()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/nearby/BroadcastRequest;->mTxPower:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/nearby/BroadcastRequest;->mType:I

    return v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/nearby/BroadcastRequest;->mVersion:I

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 170
    iget v0, p0, Landroid/nearby/BroadcastRequest;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/nearby/BroadcastRequest;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/nearby/BroadcastRequest;->mTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Landroid/nearby/BroadcastRequest;->mMediums:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 174
    return-void
.end method
