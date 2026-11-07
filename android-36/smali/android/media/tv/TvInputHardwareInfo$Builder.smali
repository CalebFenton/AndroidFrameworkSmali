.class public final Landroid/media/tv/TvInputHardwareInfo$Builder;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputHardwareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAudioAddress:Ljava/lang/String;

.field private greylist-max-o mAudioType:I

.field private greylist-max-o mCableConnectionStatus:Ljava/lang/Integer;

.field private greylist-max-o mDeviceId:Ljava/lang/Integer;

.field private greylist-max-o mHdmiPortId:Ljava/lang/Integer;

.field private greylist-max-o mType:Ljava/lang/Integer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    .line 207
    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    .line 208
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    .line 209
    const-string v2, ""

    iput-object v2, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mCableConnectionStatus:Ljava/lang/Integer;

    .line 214
    return-void
.end method


# virtual methods
.method public whitelist audioAddress(Ljava/lang/String;)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 2
    .param p1, "audioAddress"    # Ljava/lang/String;

    .line 232
    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public whitelist audioType(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 2
    .param p1, "audioType"    # I

    .line 227
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    .line 228
    return-object p0
.end method

.method public whitelist build()Landroid/media/tv/TvInputHardwareInfo;
    .registers 3

    .line 250
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    if-eqz v0, :cond_68

    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    if-eqz v0, :cond_68

    .line 253
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-eqz v0, :cond_23

    :cond_16
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    .line 254
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-nez v0, :cond_23

    goto :goto_29

    .line 255
    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 258
    :cond_29
    :goto_29
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;-><init>(Landroid/media/tv/TvInputHardwareInfo-IA;)V

    .line 259
    .local v0, "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-$$Nest$fputmDeviceId(Landroid/media/tv/TvInputHardwareInfo;I)V

    .line 260
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-$$Nest$fputmType(Landroid/media/tv/TvInputHardwareInfo;I)V

    .line 261
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-$$Nest$fputmAudioType(Landroid/media/tv/TvInputHardwareInfo;I)V

    .line 262
    invoke-static {v0}, Landroid/media/tv/TvInputHardwareInfo;->-$$Nest$fgetmAudioType(Landroid/media/tv/TvInputHardwareInfo;)I

    move-result v1

    if-eqz v1, :cond_51

    .line 263
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-$$Nest$fputmAudioAddress(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)V

    .line 265
    :cond_51
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-eqz v1, :cond_5e

    .line 266
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-$$Nest$fputmHdmiPortId(Landroid/media/tv/TvInputHardwareInfo;I)V

    .line 268
    :cond_5e
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mCableConnectionStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-$$Nest$fputmCableConnectionStatus(Landroid/media/tv/TvInputHardwareInfo;I)V

    .line 269
    return-object v0

    .line 251
    .end local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :cond_68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist cableConnectionStatus(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 3
    .param p1, "cableConnectionStatus"    # I

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mCableConnectionStatus:Ljava/lang/Integer;

    .line 246
    return-object p0
.end method

.method public whitelist deviceId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 3
    .param p1, "deviceId"    # I

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    .line 218
    return-object p0
.end method

.method public whitelist hdmiPortId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 3
    .param p1, "hdmiPortId"    # I

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    .line 238
    return-object p0
.end method

.method public whitelist type(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 3
    .param p1, "type"    # I

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    .line 223
    return-object p0
.end method
