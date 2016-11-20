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
.field private mAudioAddress:Ljava/lang/String;

.field private mAudioType:I

.field private mDeviceId:Ljava/lang/Integer;

.field private mHdmiPortId:Ljava/lang/Integer;

.field private mType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 141
    iput-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    #@6
    .line 142
    iput-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    #@8
    .line 143
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    #@b
    .line 144
    const-string/jumbo v0, ""

    #@e
    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    #@10
    .line 145
    iput-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    #@12
    .line 147
    return-void
.end method


# virtual methods
.method public audioAddress(Ljava/lang/String;)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 0
    .param p1, "audioAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    #@2
    .line 167
    return-object p0
.end method

.method public audioType(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 0
    .param p1, "audioType"    # I

    #@0
    .prologue
    .line 161
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    #@2
    .line 162
    return-object p0
.end method

.method public build()Landroid/media/tv/TvInputHardwareInfo;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x9

    #@2
    const/4 v2, 0x0

    #@3
    .line 176
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    #@9
    if-nez v1, :cond_1

    #@b
    .line 177
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@d
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@10
    throw v1

    #@11
    .line 179
    :cond_1
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    #@13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v1

    #@17
    if-ne v1, v3, :cond_3

    #@19
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    #@1b
    if-nez v1, :cond_3

    #@1d
    .line 181
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1f
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@22
    throw v1

    #@23
    .line 180
    :cond_3
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    #@25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v1

    #@29
    if-eq v1, v3, :cond_4

    #@2b
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    #@2d
    if-nez v1, :cond_2

    #@2f
    .line 184
    :cond_4
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo;

    #@31
    invoke-direct {v0, v2}, Landroid/media/tv/TvInputHardwareInfo;-><init>(Landroid/media/tv/TvInputHardwareInfo;)V

    #@34
    .line 185
    .local v0, "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    #@36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@39
    move-result v1

    #@3a
    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-set2(Landroid/media/tv/TvInputHardwareInfo;I)I

    #@3d
    .line 186
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    #@3f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@42
    move-result v1

    #@43
    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-set4(Landroid/media/tv/TvInputHardwareInfo;I)I

    #@46
    .line 187
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    #@48
    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-set1(Landroid/media/tv/TvInputHardwareInfo;I)I

    #@4b
    .line 188
    invoke-static {v0}, Landroid/media/tv/TvInputHardwareInfo;->-get0(Landroid/media/tv/TvInputHardwareInfo;)I

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_5

    #@51
    .line 189
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    #@53
    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-set0(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)Ljava/lang/String;

    #@56
    .line 191
    :cond_5
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    #@58
    if-eqz v1, :cond_6

    #@5a
    .line 192
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    #@5c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@5f
    move-result v1

    #@60
    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-set3(Landroid/media/tv/TvInputHardwareInfo;I)I

    #@63
    .line 194
    :cond_6
    return-object v0
.end method

.method public deviceId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 1
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    #@6
    .line 152
    return-object p0
.end method

.method public hdmiPortId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 1
    .param p1, "hdmiPortId"    # I

    #@0
    .prologue
    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    #@6
    .line 172
    return-object p0
.end method

.method public type(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    #@6
    .line 157
    return-object p0
.end method
