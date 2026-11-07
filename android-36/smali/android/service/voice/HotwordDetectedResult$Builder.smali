.class public final Landroid/service/voice/HotwordDetectedResult$Builder;
.super Landroid/service/voice/HotwordDetectedResult$BaseBuilder;
.source "HotwordDetectedResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetectedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioChannel:I

.field private blacklist mAudioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBackgroundAudioPower:I

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConfidenceLevel:I

.field private blacklist mExtras:Landroid/os/PersistableBundle;

.field private blacklist mHotwordDetectionPersonalized:Z

.field private blacklist mHotwordDurationMillis:I

.field private blacklist mHotwordOffsetMillis:I

.field private blacklist mHotwordPhraseId:I

.field private blacklist mMediaSyncEvent:Landroid/media/MediaSyncEvent;

.field private blacklist mPersonalizedScore:I

.field private blacklist mScore:I

.field private blacklist mSpeakerId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuilderFieldsSet(Landroid/service/voice/HotwordDetectedResult$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAudioStreams(Landroid/service/voice/HotwordDetectedResult$Builder;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioStreams:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBuilderFieldsSet(Landroid/service/voice/HotwordDetectedResult$Builder;J)V
    .registers 3

    iput-wide p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 981
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$BaseBuilder;-><init>()V

    .line 979
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 982
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 1226
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 1230
    return-void

    .line 1227
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/voice/HotwordDetectedResult;
    .registers 16

    .line 1166
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1167
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1169
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 1170
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultSpeakerId()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mSpeakerId:I

    .line 1172
    :cond_1b
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 1173
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    .line 1175
    :cond_2a
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_36

    .line 1176
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 1178
    :cond_36
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_42

    .line 1179
    iput v1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    .line 1181
    :cond_42
    iget-wide v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_4e

    .line 1182
    iput v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    .line 1184
    :cond_4e
    iget-wide v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v7, 0x20

    and-long/2addr v5, v7

    cmp-long v0, v5, v2

    if-nez v0, :cond_59

    .line 1185
    iput v1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    .line 1187
    :cond_59
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v5, 0x40

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-nez v0, :cond_64

    .line 1188
    iput-boolean v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    .line 1190
    :cond_64
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_73

    .line 1191
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultScore()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    .line 1193
    :cond_73
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x100

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_82

    .line 1194
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultPersonalizedScore()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    .line 1196
    :cond_82
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x200

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_91

    .line 1197
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultHotwordPhraseId()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    .line 1199
    :cond_91
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x400

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_a0

    .line 1200
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultAudioStreams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioStreams:Ljava/util/List;

    .line 1202
    :cond_a0
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x800

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_af

    .line 1203
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1205
    :cond_af
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x1000

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_be

    .line 1206
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultBackgroundAudioPower()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBackgroundAudioPower:I

    .line 1208
    :cond_be
    new-instance v1, Landroid/service/voice/HotwordDetectedResult;

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mSpeakerId:I

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    iget-object v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iget v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    iget v6, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    iget v7, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    iget-boolean v8, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    iget v9, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    iget v10, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    iget v11, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    iget-object v12, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioStreams:Ljava/util/List;

    iget-object v13, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    iget v14, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBackgroundAudioPower:I

    invoke-direct/range {v1 .. v14}, Landroid/service/voice/HotwordDetectedResult;-><init>(IILandroid/media/MediaSyncEvent;IIIZIIILjava/util/List;Landroid/os/PersistableBundle;I)V

    .line 1222
    .local v1, "o":Landroid/service/voice/HotwordDetectedResult;
    return-object v1
.end method

.method public whitelist setAudioChannel(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1057
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1058
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1059
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    .line 1060
    return-object p0
.end method

.method public bridge synthetic whitelist setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 961
    invoke-super {p0, p1}, Landroid/service/voice/HotwordDetectedResult$BaseBuilder;->setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setBackgroundAudioPower(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1158
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1159
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1160
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBackgroundAudioPower:I

    .line 1161
    return-object p0
.end method

.method public whitelist setConfidenceLevel(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1003
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1004
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1005
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    .line 1006
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/PersistableBundle;

    .line 1141
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1142
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1143
    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1144
    return-object p0
.end method

.method public whitelist setHotwordDetectionPersonalized(Z)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # Z

    .line 1069
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1070
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1071
    iput-boolean p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    .line 1072
    return-object p0
.end method

.method public whitelist setHotwordDurationMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1044
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1045
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1046
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    .line 1047
    return-object p0
.end method

.method public whitelist setHotwordOffsetMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1030
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1031
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1032
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    .line 1033
    return-object p0
.end method

.method public whitelist setHotwordPhraseId(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1108
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1109
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1110
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    .line 1111
    return-object p0
.end method

.method public whitelist setMediaSyncEvent(Landroid/media/MediaSyncEvent;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # Landroid/media/MediaSyncEvent;

    .line 1016
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1017
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1018
    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 1019
    return-object p0
.end method

.method public whitelist setPersonalizedScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1095
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1096
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1097
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    .line 1098
    return-object p0
.end method

.method public whitelist setScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 1082
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 1083
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 1084
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    .line 1085
    return-object p0
.end method

.method public whitelist setSpeakerId(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 992
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    .line 993
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    .line 994
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mSpeakerId:I

    .line 995
    return-object p0
.end method
