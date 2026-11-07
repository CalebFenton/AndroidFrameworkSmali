.class public Landroid/hardware/soundtrigger/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist aidl2apiAudioCapabilities(I)I
    .registers 3
    .param p0, "aidlCapabilities"    # I

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    .line 297
    or-int/lit8 v0, v0, 0x1

    .line 299
    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    .line 300
    or-int/lit8 v0, v0, 0x2

    .line 302
    :cond_d
    return v0
.end method

.method public static blacklist aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;
    .registers 4
    .param p0, "audioConfig"    # Landroid/media/audio/common/AudioConfig;
    .param p1, "isInput"    # Z

    .line 267
    if-eqz p0, :cond_7

    .line 268
    invoke-static {p0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioConfig_AudioFormat(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0

    .line 270
    :cond_7
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 271
    const v1, 0xbb80

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 272
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 273
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 270
    return-object v0
.end method

.method public static blacklist aidl2apiConfidenceLevel(Landroid/media/soundtrigger/ConfidenceLevel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .registers 4
    .param p0, "apiLevel"    # Landroid/media/soundtrigger/ConfidenceLevel;

    .line 223
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    iget v1, p0, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    iget v2, p0, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    return-object v0
.end method

.method public static blacklist aidl2apiModelParameterRange(Landroid/media/soundtrigger/ModelParameterRange;)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 4
    .param p0, "aidlRange"    # Landroid/media/soundtrigger/ModelParameterRange;

    .line 288
    if-nez p0, :cond_4

    .line 289
    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_4
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    iget v1, p0, Landroid/media/soundtrigger/ModelParameterRange;->minInclusive:I

    iget v2, p0, Landroid/media/soundtrigger/ModelParameterRange;->maxInclusive:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;-><init>(II)V

    return-object v0
.end method

.method public static blacklist aidl2apiModuleDescriptor(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 20
    .param p0, "aidlDesc"    # Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    .line 52
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger/Properties;

    .line 53
    .local v1, "properties":Landroid/media/soundtrigger/Properties;
    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget v3, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    iget-object v4, v1, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    iget-object v5, v1, Landroid/media/soundtrigger/Properties;->description:Ljava/lang/String;

    iget-object v6, v1, Landroid/media/soundtrigger/Properties;->uuid:Ljava/lang/String;

    iget v7, v1, Landroid/media/soundtrigger/Properties;->version:I

    iget-object v8, v1, Landroid/media/soundtrigger/Properties;->supportedModelArch:Ljava/lang/String;

    iget v9, v1, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    iget v10, v1, Landroid/media/soundtrigger/Properties;->maxKeyPhrases:I

    iget v11, v1, Landroid/media/soundtrigger/Properties;->maxUsers:I

    iget v12, v1, Landroid/media/soundtrigger/Properties;->recognitionModes:I

    .line 63
    invoke-static {v12}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionModes(I)I

    move-result v12

    iget-boolean v13, v1, Landroid/media/soundtrigger/Properties;->captureTransition:Z

    iget v14, v1, Landroid/media/soundtrigger/Properties;->maxBufferMs:I

    iget-boolean v15, v1, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    iget v0, v1, Landroid/media/soundtrigger/Properties;->powerConsumptionMw:I

    move/from16 v16, v0

    iget-boolean v0, v1, Landroid/media/soundtrigger/Properties;->triggerInEvent:Z

    move/from16 v17, v0

    iget v0, v1, Landroid/media/soundtrigger/Properties;->audioCapabilities:I

    .line 69
    invoke-static {v0}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioCapabilities(I)I

    move-result v18

    invoke-direct/range {v2 .. v18}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V

    .line 53
    return-object v2
.end method

.method public static blacklist aidl2apiPhrase(Landroid/media/soundtrigger/Phrase;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .registers 8
    .param p0, "aidlPhrase"    # Landroid/media/soundtrigger/Phrase;

    .line 149
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    iget v1, p0, Landroid/media/soundtrigger/Phrase;->id:I

    iget v2, p0, Landroid/media/soundtrigger/Phrase;->recognitionModes:I

    .line 150
    invoke-static {v2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionModes(I)I

    move-result v2

    new-instance v3, Ljava/util/Locale$Builder;

    invoke-direct {v3}, Ljava/util/Locale$Builder;-><init>()V

    iget-object v4, p0, Landroid/media/soundtrigger/Phrase;->locale:Ljava/lang/String;

    .line 151
    invoke-virtual {v3, v4}, Ljava/util/Locale$Builder;->setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v3

    iget-object v4, p0, Landroid/media/soundtrigger/Phrase;->text:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/soundtrigger/Phrase;->users:[I

    iget-object v6, p0, Landroid/media/soundtrigger/Phrase;->users:[I

    array-length v6, v6

    .line 153
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/util/Locale;Ljava/lang/String;[I)V

    .line 149
    return-object v0
.end method

.method public static blacklist aidl2apiPhraseRecognitionEvent(IILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .registers 20
    .param p0, "modelHandle"    # I
    .param p1, "captureSession"    # I
    .param p2, "aidlEvent"    # Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    .line 243
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 244
    .local v1, "recognitionEvent":Landroid/media/soundtrigger/PhraseRecognitionEvent;
    iget-object v2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v2, v2

    new-array v13, v2, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 246
    .local v13, "apiExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v3, v3

    if-ge v2, v3, :cond_1c

    .line 247
    iget-object v3, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiPhraseRecognitionExtra(Landroid/media/soundtrigger/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v13, v2

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 251
    .end local v2    # "i":I
    :cond_1c
    iget-object v2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-object v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;

    move-result-object v11

    .line 254
    .local v11, "audioFormat":Landroid/media/AudioFormat;
    new-instance v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iget-object v2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v4, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    iget-object v2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v6, v2, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    iget-object v2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v8, v2, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    iget-object v2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v9, v2, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    iget-object v2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v10, v2, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    iget-object v2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-object v12, v2, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    iget-wide v14, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->halEventReceivedMillis:J

    iget-object v2, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->token:Landroid/os/IBinder;

    move/from16 v5, p0

    move/from16 v7, p1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;JLandroid/os/IBinder;)V

    return-object v3
.end method

.method public static blacklist aidl2apiPhraseRecognitionExtra(Landroid/media/soundtrigger/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .registers 6
    .param p0, "aidlExtra"    # Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 203
    iget-object v0, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v0, v0

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    .line 205
    .local v0, "apiLevels":[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 206
    iget-object v2, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiConfidenceLevel(Landroid/media/soundtrigger/ConfidenceLevel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    move-result-object v2

    aput-object v2, v0, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 208
    .end local v1    # "i":I
    :cond_18
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget v2, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    iget v3, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    .line 209
    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionModes(I)I

    move-result v3

    iget v4, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    .line 208
    return-object v1
.end method

.method public static blacklist aidl2apiRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 8
    .param p0, "aidlConfig"    # Landroid/media/soundtrigger/RecognitionConfig;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v0, "keyphrases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    iget-object v1, p0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_1b

    aget-object v5, v1, v4

    .line 177
    .local v5, "extras":Landroid/media/soundtrigger/PhraseRecognitionExtra;
    invoke-static {v5}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiPhraseRecognitionExtra(Landroid/media/soundtrigger/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v5    # "extras":Landroid/media/soundtrigger/PhraseRecognitionExtra;
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 179
    :cond_1b
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    invoke-direct {v1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;-><init>()V

    iget-boolean v2, p0, Landroid/media/soundtrigger/RecognitionConfig;->captureRequested:Z

    .line 180
    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setCaptureRequested(Z)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v3}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setMultipleTriggersAllowed(Z)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setKeyphrases(Ljava/util/Collection;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger/RecognitionConfig;->data:[B

    iget-object v3, p0, Landroid/media/soundtrigger/RecognitionConfig;->data:[B

    array-length v3, v3

    .line 183
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setData([B)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v1

    iget v2, p0, Landroid/media/soundtrigger/RecognitionConfig;->audioCapabilities:I

    .line 184
    invoke-static {v2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioCapabilities(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setAudioCapabilities(I)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->build()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v1

    .line 179
    return-object v1
.end method

.method public static blacklist aidl2apiRecognitionEvent(IILandroid/media/soundtrigger_middleware/RecognitionEventSys;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .registers 21
    .param p0, "modelHandle"    # I
    .param p1, "captureSession"    # I
    .param p2, "aidlEvent"    # Landroid/media/soundtrigger_middleware/RecognitionEventSys;

    .line 228
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    .line 231
    .local v1, "recognitionEvent":Landroid/media/soundtrigger/RecognitionEvent;
    iget-object v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;

    move-result-object v12

    .line 233
    .local v12, "audioFormat":Landroid/media/AudioFormat;
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    iget v5, v1, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    iget-boolean v7, v1, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    iget v9, v1, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    iget v10, v1, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    iget-boolean v11, v1, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    iget-object v13, v1, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    iget-boolean v14, v1, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    iget-wide v2, v0, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->halEventReceivedMillis:J

    iget-object v6, v0, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->token:Landroid/os/IBinder;

    move/from16 v8, p1

    move-wide v15, v2

    move-object/from16 v17, v6

    move/from16 v6, p0

    invoke-direct/range {v4 .. v17}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[BZJLandroid/os/IBinder;)V

    return-object v4
.end method

.method public static blacklist aidl2apiRecognitionModes(I)I
    .registers 3
    .param p0, "aidlModes"    # I

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    .line 76
    or-int/lit8 v0, v0, 0x1

    .line 78
    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    .line 79
    or-int/lit8 v0, v0, 0x2

    .line 81
    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    .line 82
    or-int/lit8 v0, v0, 0x4

    .line 84
    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    .line 85
    or-int/lit8 v0, v0, 0x8

    .line 87
    :cond_19
    return v0
.end method

.method public static blacklist api2aidlAudioCapabilities(I)I
    .registers 3
    .param p0, "apiCapabilities"    # I

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    .line 309
    or-int/lit8 v0, v0, 0x1

    .line 311
    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    .line 313
    or-int/lit8 v0, v0, 0x2

    .line 315
    :cond_d
    return v0
.end method

.method public static blacklist api2aidlConfidenceLevel(Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)Landroid/media/soundtrigger/ConfidenceLevel;
    .registers 3
    .param p0, "apiLevel"    # Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    .line 215
    new-instance v0, Landroid/media/soundtrigger/ConfidenceLevel;

    invoke-direct {v0}, Landroid/media/soundtrigger/ConfidenceLevel;-><init>()V

    .line 216
    .local v0, "aidlLevel":Landroid/media/soundtrigger/ConfidenceLevel;
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    .line 217
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    .line 218
    return-object v0
.end method

.method public static blacklist api2aidlGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Landroid/media/soundtrigger/SoundModel;
    .registers 2
    .param p0, "apiModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 109
    invoke-static {p0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger/SoundModel;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist api2aidlModelParameter(I)I
    .registers 2
    .param p0, "apiParam"    # I

    .line 278
    packed-switch p0, :pswitch_data_8

    .line 282
    const/4 v0, -0x1

    return v0

    .line 280
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist api2aidlPhrase(Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)Landroid/media/soundtrigger/Phrase;
    .registers 4
    .param p0, "apiPhrase"    # Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 139
    new-instance v0, Landroid/media/soundtrigger/Phrase;

    invoke-direct {v0}, Landroid/media/soundtrigger/Phrase;-><init>()V

    .line 140
    .local v0, "aidlPhrase":Landroid/media/soundtrigger/Phrase;
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/Phrase;->id:I

    .line 141
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/Phrase;->recognitionModes:I

    .line 142
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/Phrase;->users:[I

    .line 143
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/Phrase;->locale:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/Phrase;->text:Ljava/lang/String;

    .line 145
    return-object v0
.end method

.method public static blacklist api2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;
    .registers 5
    .param p0, "apiExtra"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 190
    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionExtra;-><init>()V

    .line 191
    .local v0, "aidlExtra":Landroid/media/soundtrigger/PhraseRecognitionExtra;
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    .line 192
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    .line 193
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    .line 194
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v1, v1

    new-array v1, v1, [Landroid/media/soundtrigger/ConfidenceLevel;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v2, v2

    if-ge v1, v2, :cond_31

    .line 196
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlConfidenceLevel(Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)Landroid/media/soundtrigger/ConfidenceLevel;

    move-result-object v3

    aput-object v3, v2, v1

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 198
    .end local v1    # "i":I
    :cond_31
    return-object v0
.end method

.method public static blacklist api2aidlPhraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Landroid/media/soundtrigger/PhraseSoundModel;
    .registers 5
    .param p0, "apiModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 129
    new-instance v0, Landroid/media/soundtrigger/PhraseSoundModel;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseSoundModel;-><init>()V

    .line 130
    .local v0, "aidlModel":Landroid/media/soundtrigger/PhraseSoundModel;
    invoke-static {p0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger/SoundModel;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    .line 131
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/media/soundtrigger/Phrase;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2d

    .line 133
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhrase(Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)Landroid/media/soundtrigger/Phrase;

    move-result-object v3

    aput-object v3, v2, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 135
    .end local v1    # "i":I
    :cond_2d
    return-object v0
.end method

.method public static blacklist api2aidlRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/media/soundtrigger/RecognitionConfig;
    .registers 5
    .param p0, "apiConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 158
    new-instance v0, Landroid/media/soundtrigger/RecognitionConfig;

    invoke-direct {v0}, Landroid/media/soundtrigger/RecognitionConfig;-><init>()V

    .line 159
    .local v0, "aidlConfig":Landroid/media/soundtrigger/RecognitionConfig;
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->isCaptureRequested()Z

    move-result v1

    iput-boolean v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->captureRequested:Z

    .line 161
    nop

    .line 162
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->getKeyphrases()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->getKeyphrases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 164
    iget-object v2, v0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 165
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->getKeyphrases()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 164
    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 167
    .end local v1    # "i":I
    :cond_38
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->data:[B

    .line 168
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->getAudioCapabilities()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlAudioCapabilities(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->audioCapabilities:I

    .line 169
    return-object v0
.end method

.method public static blacklist api2aidlRecognitionModes(I)I
    .registers 3
    .param p0, "apiModes"    # I

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    .line 93
    or-int/lit8 v0, v0, 0x1

    .line 95
    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    .line 96
    or-int/lit8 v0, v0, 0x2

    .line 98
    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    .line 99
    or-int/lit8 v0, v0, 0x4

    .line 101
    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    .line 102
    or-int/lit8 v0, v0, 0x8

    .line 104
    :cond_19
    return v0
.end method

.method public static blacklist api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger/SoundModel;
    .registers 4
    .param p0, "apiModel"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 113
    new-instance v0, Landroid/media/soundtrigger/SoundModel;

    invoke-direct {v0}, Landroid/media/soundtrigger/SoundModel;-><init>()V

    .line 114
    .local v0, "aidlModel":Landroid/media/soundtrigger/SoundModel;
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/SoundModel;->type:I

    .line 115
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/SoundModel;->vendorUuid:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v1

    .line 118
    .local v1, "data":[B
    const-string v2, "SoundTrigger SoundModel"

    invoke-static {v1, v2}, Landroid/hardware/soundtrigger/ConversionUtil;->byteArrayToSharedMemory([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    .line 119
    array-length v2, v1

    iput v2, v0, Landroid/media/soundtrigger/SoundModel;->dataSize:I

    .line 120
    return-object v0
.end method

.method public static blacklist api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;
    .registers 2
    .param p0, "apiUuid"    # Ljava/util/UUID;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist byteArrayToSharedMemory([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .line 319
    array-length v0, p0

    if-nez v0, :cond_5

    .line 320
    const/4 v0, 0x0

    return-object v0

    .line 324
    :cond_5
    if-eqz p1, :cond_9

    move-object v0, p1

    goto :goto_b

    :cond_9
    :try_start_9
    const-string v0, ""

    :goto_b
    array-length v1, p0

    invoke-static {v0, v1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    .line 325
    .local v0, "shmem":Landroid/os/SharedMemory;
    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 326
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 327
    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 328
    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 329
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_22

    .line 330
    return-object v2

    .line 331
    .end local v0    # "shmem":Landroid/os/SharedMemory;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_22
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist sharedMemoryToByteArray(Landroid/os/ParcelFileDescriptor;I)[B
    .registers 5
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "size"    # I

    .line 337
    if-eqz p0, :cond_3b

    if-nez p1, :cond_5

    goto :goto_3b

    .line 340
    :cond_5
    :try_start_5
    invoke-static {p0}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object v0
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_9} :catch_34

    .line 341
    .local v0, "mem":Landroid/os/SharedMemory;
    :try_start_9
    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 342
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v2

    if-le p1, v2, :cond_18

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v2

    goto :goto_19

    :cond_18
    move v2, p1

    :goto_19
    new-array v2, v2, [B

    .line 343
    .local v2, "data":[B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 344
    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_28

    .line 345
    nop

    .line 346
    if-eqz v0, :cond_27

    :try_start_24
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_24 .. :try_end_27} :catch_34

    .line 345
    :cond_27
    return-object v2

    .line 340
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "data":[B
    :catchall_28
    move-exception v1

    if-eqz v0, :cond_33

    :try_start_2b
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v2

    :try_start_30
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "size":I
    :cond_33
    :goto_33
    throw v1
    :try_end_34
    .catch Landroid/system/ErrnoException; {:try_start_30 .. :try_end_34} :catch_34

    .line 346
    .end local v0    # "mem":Landroid/os/SharedMemory;
    .restart local p0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "size":I
    :catch_34
    move-exception v0

    .line 347
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 338
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
